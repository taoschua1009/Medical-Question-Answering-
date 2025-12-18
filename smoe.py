# ============================================================
# 🧠 SMoE v3.0 — FULL END-TO-END PIPELINE
#  Gating + Experts + Cypher Generator + Neo4j Query
#  - FIX inference tensor issue
#  - Neo4j env loading
#  - Cache encoder per expert (nhanh hơn)
# ============================================================
from functools import lru_cache
import os
import torch
import torch.nn as nn
import torch.nn.functional as F
import pandas as pd
from sentence_transformers import SentenceTransformer
from neo4j import GraphDatabase
from dotenv import load_dotenv, find_dotenv

DEVICE = "cuda" if torch.cuda.is_available() else "cpu"

# ============================================================
# PUBLIC API FOR STREAMLIT
# ============================================================

DEBUG = True   # hoặc False tuỳ bạn


def test_neo4j_connection():
    """Test if Neo4j is available."""
    try:
        rows = run_neo4j("RETURN 1 AS ok")
        if rows and isinstance(rows[0], dict):
            return True, rows[0].get("ok")
        return False, None
    except Exception as e:
        return False, str(e)


def smoe_query(question: str):
    enc, gate, id2label = load_gating()
    result = smoe(question, enc, gate, id2label)

    # Extract fields
    cypher = result["cypher"]
    rows = result["neo4j"]
    probs = result.get("probabilities", {})

    # Build final answer from Neo4j
    if rows:
        key = list(rows[0].keys())[0]
        final_text = "\n".join([row[key] for row in rows])
    else:
        final_text = "(Không tìm thấy thông tin trong graph database.)"

    answer = (
        f"**{final_text}**\n\n"
        f"---\n"
        f"Expert: {result['expert']}  \n"
        f"Anchor: {result['anchor']}  \n"
        f"Context: {result['context']}"
    )

    return answer, cypher, rows, probs






# ============================================================
# CONFIG
# ============================================================

GATING_DIR = "Gating"
GATING_META = os.path.join(GATING_DIR, "gating_meta.pt")
GATING_STATE = os.path.join(GATING_DIR, "gating_mlp.pt")

EXPERT_ROOT = "Experts"

ANCHOR_FILE = "anchors.csv"
CONTEXT_FILE = "contexts.csv"

# ============================================================
# NEO4J CONFIG
# ============================================================

# Tìm và load .env an toàn
env_path = find_dotenv()
load_dotenv(env_path)

def env_bool(key, default=False):
    v = os.getenv(key)
    if v is None:
        return default
    return v.strip().lower() in ("1", "true", "yes", "on")

ENABLE_NEO4J = env_bool("ENABLE_NEO4J", False)
NEO4J_URI = os.getenv("NEO4J_URI")
NEO4J_USER = os.getenv("NEO4J_USER")
# hỗ trợ cả NEO4J_PASS và NEO4J_PASSWORD
NEO4J_PASS = os.getenv("NEO4J_PASS") or os.getenv("NEO4J_PASSWORD")

print("ENV RAW ENABLE_NEO4J:", os.getenv("ENABLE_NEO4J"))
print("ENABLE_NEO4J flag   =", ENABLE_NEO4J)
print("NEO4J_URI           =", NEO4J_URI)
print("NEO4J_USER          =", NEO4J_USER)
print("NEO4J_PASS is None? =", NEO4J_PASS is None)

driver = None
if ENABLE_NEO4J and NEO4J_URI and NEO4J_USER and NEO4J_PASS:
    try:
        driver = GraphDatabase.driver(NEO4J_URI, auth=(NEO4J_USER, NEO4J_PASS))
        # test nhẹ
        with driver.session() as sess:
            sess.run("RETURN 1 AS ok").data()
        print("🔗 Connected to Neo4j OK")
    except Exception as e:
        print("❌ Neo4j connection failed:", e)
        driver = None
else:
    print("⚠️ Neo4j disabled or missing config")


def run_neo4j(query: str):
    if not ENABLE_NEO4J or driver is None:
        # print("⚠️ Neo4j disabled, skip query")
        return None
    with driver.session() as sess:
        return sess.run(query).data()


# ============================================================
# LOAD ANCHORS + CONTEXTS
# ============================================================

df_anchor = pd.read_csv(ANCHOR_FILE)
ANCHORS = df_anchor["name"].astype(str).tolist()
ANCHOR_LAYERS = df_anchor["layer"].astype(str).tolist()

if os.path.exists(CONTEXT_FILE):
    CONTEXTS = pd.read_csv(CONTEXT_FILE)["name"].dropna().astype(str).tolist()
else:
    CONTEXTS = []

print(f"✅ Loaded {len(ANCHORS)} anchors, {len(CONTEXTS)} contexts.")



# ============================================================
# GATING NETWORK
# ============================================================

class GatingMLP(nn.Module):
    def __init__(self, dim, num_classes):
        super().__init__()
        self.fc1 = nn.Linear(dim, 512)
        self.fc2 = nn.Linear(512, num_classes)

    def forward(self, x):
        return self.fc2(F.relu(self.fc1(x)))


def encode_texts(encoder: SentenceTransformer, texts):
    """Encode texts → (N, D) and always clone() để tránh inference-tensor error."""
    if isinstance(texts, str):
        texts = [texts]

    emb = encoder.encode(
        texts,
        convert_to_tensor=True,
        device=DEVICE,
        show_progress_bar=False,
    )

    return emb.detach().clone()


@lru_cache(maxsize=1)
def load_gating():
    meta = torch.load(GATING_META, map_location=DEVICE)
    model_name = meta["model_name"]
    input_dim = meta["input_dim"]
    num_classes = meta["num_classes"]
    id2label = meta["id2label"]

    encoder = SentenceTransformer(model_name).to(DEVICE)
    encoder.eval()

    gating = GatingMLP(input_dim, num_classes).to(DEVICE)
    gating.load_state_dict(torch.load(GATING_STATE, map_location=DEVICE))
    gating.eval()

    # 🔥 warmup 1 lần để CUDA init, các query sau nhanh hơn
    _ = encode_texts(encoder, ["warmup"])

    return encoder, gating, id2label


# ============================================================
# EXPERT ADAPTER
# ============================================================

class ExpertAdapter(nn.Module):
    def __init__(self, dim):
        super().__init__()
        self.anchor_adapter = nn.Sequential(
            nn.Linear(dim, 256),
            nn.ReLU(),
            nn.Linear(256, dim),
        )
        self.context_adapter = nn.Sequential(
            nn.Linear(dim, 256),
            nn.ReLU(),
            nn.Linear(256, dim),
        )
        self.has_context_head = nn.Sequential(
            nn.Linear(dim, 256),
            nn.ReLU(),
            nn.Linear(256, 1),
        )

    def forward(self, x):
        a = F.normalize(self.anchor_adapter(x), p=2, dim=1)
        c = F.normalize(self.context_adapter(x), p=2, dim=1)
        h = self.has_context_head(x).squeeze(-1)
        return a, c, h


# ============================================================
# CYPHER TEMPLATES
# ============================================================

EXPERT_QUERY = {
    "Definition": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_DEFINITION]->(d:Definition)
RETURN d.name AS definition;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_DEFINITION]->(d:Definition)-[:CONTEXT]->(ctx)
RETURN collect(d.name) AS definition;
'''
    },

    "Complication": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_COMPLICATION]->(c:Complication)
RETURN c.name AS complication;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_COMPLICATION]->(c:Complication)-[:CONTEXT]->(ctx)
RETURN collect(c.name) AS complications;
'''
    },

    "Treatment": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_TREATMENT]->(t:Treatment)
RETURN t.name AS treatment;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_TREATMENT]->(t:Treatment)-[:CONTEXT]->(ctx)
RETURN collect(t.name) AS treatments;
'''
    },

    "Symptom": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_SYMPTOM]->(s:Symptom)
RETURN s.name AS symptom;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_SYMPTOM]->(s:Symptom)-[:CONTEXT]->(ctx)
RETURN collect(s.name) AS symptoms;
'''
    },

    "Cause": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_CAUSE]->(c:Cause)
RETURN c.name AS cause;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_CAUSE]->(c:Cause)-[:CONTEXT]->(ctx)
RETURN collect(c.name) AS causes;
'''
    },

    "Advice": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_ADVICE]->(ad:Advice)
RETURN ad.name AS advice;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_ADVICE]->(ad:Advice)-[:CONTEXT]->(ctx)
RETURN collect(ad.name) AS advice;
'''
    },

    "Population": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:AFFECTS]->(p:Population)
RETURN p.name AS population;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:AFFECTS]->(p:Population)-[:CONTEXT]->(ctx)
RETURN collect(p.name) AS population;
'''
    },

    "Application": {
        "no_ctx": '''
MATCH (a {name:"%s"})-[:HAS_APPLICATION]->(app:Application)
RETURN app.name AS application;
''',
        "with_ctx": '''
MATCH (a {name:"%s"})
MATCH (ctx:Topic {name:"%s"})
OPTIONAL MATCH (a)-[:HAS_APPLICATION]->(app:Application)-[:CONTEXT]->(ctx)
RETURN app.name AS application, ctx.name AS context;
'''
    },
}


# ============================================================
# LOAD EXPERT + PRECOMPUTE (with encoder cache)
# ============================================================

LOADED_EXPERTS = {}
CACHED_ENCODERS = {}

def get_encoder(model_dir: str) -> SentenceTransformer:
    if model_dir in CACHED_ENCODERS:
        return CACHED_ENCODERS[model_dir]
    enc = SentenceTransformer(model_dir).to(DEVICE)
    enc.eval()
    CACHED_ENCODERS[model_dir] = enc
    return enc


def load_expert(name):
    if name in LOADED_EXPERTS:
        return LOADED_EXPERTS[name]

    print(f"\n🔄 Loading Expert: {name}")

    model_dir = os.path.join(EXPERT_ROOT, f"dual_expert_{name}_v3_0")
    adapter_path = os.path.join(model_dir, "dual_adapter_v3.pt")

    encoder = get_encoder(model_dir)
    dim = encoder.get_sentence_embedding_dimension()

    adapter = ExpertAdapter(dim).to(DEVICE)
    adapter.load_state_dict(torch.load(adapter_path, map_location=DEVICE))
    adapter.eval()

    def encode(texts):
        emb = encoder.encode(texts, convert_to_tensor=True, device=DEVICE)
        emb = emb.detach().clone()
        return adapter(emb)

    a_embs, _, _ = encode(ANCHORS)
    c_embs = None
    if CONTEXTS:
        _, c_embs, _ = encode(CONTEXTS)

    info = {
        "encode": encode,
        "a": a_embs,
        "c": c_embs,
    }

    LOADED_EXPERTS[name] = info
    print(f"✅ Expert loaded: {name}")
    return info


# ============================================================
# RUN SINGLE EXPERT
# ============================================================

def run_single_expert(name, question):
    exp = load_expert(name)
    q_a, q_c, q_h = exp["encode"]([question])

    has_ctx = torch.sigmoid(q_h).item()

    # Anchor
    sim_a = F.cosine_similarity(q_a, exp["a"])
    best_idx = int(torch.argmax(sim_a))
    anchor = ANCHORS[best_idx]
    anchor_layer = ANCHOR_LAYERS[best_idx]

    # Context
    if exp["c"] is not None and has_ctx > 0.3:
        sim_c = F.cosine_similarity(q_c, exp["c"])
        ctx_idx = int(torch.argmax(sim_c))
        context = CONTEXTS[ctx_idx]
    else:
        context = None

    print(f"\n=== EXPERT RESULT ({name}) ===")
    print(f"🎯 Anchor : {anchor} ({anchor_layer})")
    print(f"🌐 Context: {context}")
    print(f"📈 HasCtx : {has_ctx:.3f}")

    # Cypher
    if name not in EXPERT_QUERY:
        print(f"⚠️ No Cypher template for expert '{name}', skip query.")
        return {
            "expert": name,
            "anchor": anchor,
            "anchor_layer": anchor_layer,
            "context": context,
            "has_context": has_ctx,
            "cypher": None,
            "neo4j": None,
        }

    if context:
        cypher = EXPERT_QUERY[name]["with_ctx"] % (anchor, context)
    else:
        cypher = EXPERT_QUERY[name]["no_ctx"] % anchor

    print("\n📌 Query Cypher:")
    print(cypher)

    neo4j_result = run_neo4j(cypher)
    print("\n📌 Neo4j Result:")
    print(neo4j_result)

    return {
        "expert": name,
        "anchor": anchor,
        "anchor_layer": anchor_layer,
        "context": context,
        "has_context": has_ctx,
        "cypher": cypher,
        "neo4j": neo4j_result,
    }


# ============================================================
# FULL SMoE PIPELINE
# ============================================================

def smoe(question, enc, gate, id2label):
    emb = encode_texts(enc, [question])
    logits = gate(emb)
    probs = torch.sigmoid(logits).squeeze(0)

    best_expert = id2label[int(torch.argmax(probs))]
    print("\n🧠 GATING SELECTED:", best_expert)

    return run_single_expert(best_expert, question)


# ============================================================
# MAIN
# ============================================================

def main():
    print("🚀 Loading Gating...")
    enc, gate, id2label = load_gating()
    print("✅ Ready.")

    while True:
        q = input("\n❓ Question: ").strip()
        if q.lower() in ("exit", "quit"):
            break
        if not q:
            continue
        smoe(q, enc, gate, id2label)
    st.caption(f"⏱ Thời gian xử lý: {result['latency_s']} s")


if __name__ == "__main__":
    main()
