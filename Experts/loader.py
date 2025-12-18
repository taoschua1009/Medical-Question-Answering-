import os, time, torch
from sentence_transformers import SentenceTransformer
from config import DEVICE, EXPERT_ROOT
from .adapter import ExpertAdapter
from data.anchors import ANCHORS, CONTEXTS
from functools import lru_cache

# =====================================================
# GLOBAL SHARED ENCODER (LOAD 1 LẦN)
# =====================================================
ENCODER_NAME = "google/embeddinggemma-300m"

@lru_cache(maxsize=1)
def get_encoder():
    return SentenceTransformer(ENCODER_NAME).to(DEVICE).eval()

LOADED_EXPERTS = {}

# =====================================================
# LOAD SINGLE EXPERT (ADAPTER ONLY)
# =====================================================
def load_expert(name):
    if name in LOADED_EXPERTS:
        return LOADED_EXPERTS[name]

    enc = get_encoder()
    dim = enc.get_sentence_embedding_dimension()

    model_dir = os.path.join(EXPERT_ROOT, f"dual_expert_{name}_v3_0")
    adapter_path = os.path.join(model_dir, "dual_adapter_v3.pt")

    adapter = ExpertAdapter(dim).to(DEVICE)
    adapter.load_state_dict(torch.load(adapter_path, map_location=DEVICE))
    adapter.eval()

    with torch.no_grad():
        a_emb = adapter(enc.encode(ANCHORS, convert_to_tensor=True, device=DEVICE))[0]
        c_emb = (
            adapter(enc.encode(CONTEXTS, convert_to_tensor=True, device=DEVICE))[1]
            if CONTEXTS else None
        )

    def encode(texts):
        emb = enc.encode(texts, convert_to_tensor=True, device=DEVICE)
        return adapter(emb)

    info = {
        "encode": encode,
        "a": a_emb,
        "c": c_emb,
    }

    LOADED_EXPERTS[name] = info
    return info

# =====================================================
# PRELOAD ALL EXPERTS
# =====================================================
def preload_all_experts(names):
    print("🚀 Preloading experts...")
    for n in names:
        t0 = time.perf_counter()
        load_expert(n)
        print(f"  ✅ {n} loaded in {time.perf_counter() - t0:.2f}s")
    print("🎉 All experts ready!")
