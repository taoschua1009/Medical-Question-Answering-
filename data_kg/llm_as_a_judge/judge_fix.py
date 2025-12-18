import os
import json
import pandas as pd
import requests
from dotenv import load_dotenv
from neo4j import GraphDatabase

load_dotenv()

# ================================
# FPT API CONFIG
# ================================
BASE_URL = "https://mkp-api.fptcloud.com/chat/completions"
API_KEY = os.getenv("FPT_API_KEY")
MODEL = os.getenv("FPT_MODEL")

if not API_KEY:
    raise ValueError("Missing FPT_API_KEY in .env")
if not MODEL:
    raise ValueError("Missing FPT_MODEL in .env")

SYSTEM_PROMPT = open("judge_system_prompt1.txt", "r", encoding="utf8").read()


# ================================
# NEO4J CONFIG
# ================================
NEO4J_URI = os.getenv("NEO4J_URI")
NEO4J_USER = os.getenv("NEO4J_USER")
NEO4J_PASSWORD = os.getenv("NEO4J_PASSWORD")

if not all([NEO4J_URI, NEO4J_USER, NEO4J_PASSWORD]):
    raise ValueError("Missing Neo4j credentials in .env")

driver = GraphDatabase.driver(NEO4J_URI, auth=(NEO4J_USER, NEO4J_PASSWORD))


def push_to_neo4j(cypher_text):
    """Execute a multi-statement Cypher block in Neo4j."""
    with driver.session() as session:
        statements = [s.strip() for s in cypher_text.split("\n") if s.strip()]
        full_query = "\n".join(statements)
        session.run(full_query)


# ================================
# FPT LLM CALL
# ================================
def call_llm(prompt):
    headers = {
        "Authorization": f"Bearer {API_KEY}",
        "Content-Type": "application/json",
    }

    payload = {
        "model": MODEL,
        "messages": [
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": prompt},
        ],
        "temperature": 0,
        "max_tokens": 4096,
    }

    resp = requests.post(BASE_URL, headers=headers, json=payload)

    try:
        return resp.json()["choices"][0]["message"]["content"].strip()
    except Exception:
        print("\n❌ RAW RESPONSE:")
        print(resp.text)
        raise


def parse_response(output):
    if "===== JSON_EVAL =====" not in output:
        raise ValueError("❌ Missing JSON_EVAL block")
    if "===== CYPHER_OUTPUT =====" not in output:
        raise ValueError("❌ Missing CYPHER_OUTPUT block")

    json_block = output.split("===== JSON_EVAL =====")[1].split("===== CYPHER_OUTPUT =====")[0].strip()
    cypher_block = output.split("===== CYPHER_OUTPUT =====")[1].strip()

    return json.loads(json_block), cypher_block


def build_prompt(canonical_name, chunk_text, cypher_original):
    return f"""
Bạn là LLM-as-a-Judge.

Nhiệm vụ:
1. Đánh giá Cypher gốc theo Bộ Quy Tắc Sinh Cypher.
2. Nếu Cypher đúng → giữ nguyên.
3. Nếu Cypher sai → tạo lại Cypher đúng chuẩn.

[canonical_name]: {canonical_name}

[CHUNK TEXT]
{chunk_text}

[ORIGINAL CYPHER]
{cypher_original}

Xuất đúng format:

===== JSON_EVAL =====
{{...}}

===== CYPHER_OUTPUT =====
<cypher>
"""


# =====================================
# MAIN PIPELINE
# =====================================
if __name__ == "__main__":
    print("🚀 Loading CSV + Cypher...")

    df = pd.read_csv("disease_subdisease2.csv")

    with open("disease_subdisease2.cypher", "r", encoding="utf8") as f:
        cy_blocks = f.read().split("// =====")

    all_results = []
    cy_out = open("final_fixed.cypher", "w", encoding="utf8")

    print(f"📌 Tổng số chunk: {len(df)}")
    print("🚀 Running full judge + autofix + Neo4j push...\n")

    for idx, row in df.iterrows():
        canonical_name = row["root_name"]
        chunk_text = row["chunk_text"]
        chunk_id = row["chunk_id"]

        # Find original cypher
        cy_block = ""
        for block in cy_blocks:
            if f"Chunk {chunk_id}" in block:
                cy_block = "// =====" + block
                break

        if not cy_block.strip():
            print(f"⚠️ Không tìm thấy Cypher cho chunk {chunk_id}")
            continue

        print(f"\n==============================")
        print(f"🔎 Chunk {chunk_id}")
        print(f"==============================\n")

        prompt = build_prompt(canonical_name, chunk_text, cy_block)

        try:
            llm_output = call_llm(prompt)
        except Exception as e:
            print(f"❌ Lỗi gọi LLM tại chunk {chunk_id}", e)
            continue

        try:
            json_eval, cypher_fixed = parse_response(llm_output)
        except Exception as e:
            print(f"❌ Parse lỗi tại chunk {chunk_id}:", e)
            print("OUTPUT:\n", llm_output)
            continue

        json_eval["chunk_id"] = chunk_id
        all_results.append(json_eval)

        # Save cypher
        cy_out.write(f"// ===== Chunk {chunk_id} =====\n")
        cy_out.write(cypher_fixed + "\n\n")

        # PUSH TO NEO4J
        try:
            push_to_neo4j(cypher_fixed)
            print("🔥 Đã đẩy vào Neo4j thành công.")
        except Exception as e:
            print("❌ Neo4j error:", e)

        print("✅ DONE")

    cy_out.close()
    pd.DataFrame(all_results).to_csv("judge_results.csv", index=False, encoding="utf8")

    print("\n🎉 DONE — judge_results.csv + final_fixed.cypher + Neo4j imported\n")
