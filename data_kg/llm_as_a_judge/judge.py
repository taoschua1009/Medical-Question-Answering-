import os
import re
import json
import requests
import pandas as pd
from dotenv import load_dotenv

# Load .env
load_dotenv()

BASE_URL = "https://mkp-api.fptcloud.com/chat/completions"
API_KEY = os.getenv("FPT_API_KEY")
MODEL = os.getenv("FPT_MODEL")

if not API_KEY:
    raise ValueError("❌ Missing FPT_API_KEY in .env")
if not MODEL:
    raise ValueError("❌ Missing FPT_MODEL in .env")


# --------------------------
# Parse Cypher blocks
# --------------------------
def load_cypher_blocks(path):
    with open(path, "r", encoding="utf-8") as f:
        data = f.read()

    pattern = r"// ===== Article (\d+) \| Chunk (\d+).*?=====(.*?)(?=// ===== Article|\Z)"
    matches = re.findall(pattern, data, flags=re.S)

    blocks = {}
    for article_id, chunk_id, cypher_text in matches:
        key = (int(article_id), int(chunk_id))
        blocks[key] = cypher_text.strip()

    print(f"✔ Loaded {len(blocks)} Cypher blocks")
    return blocks


# --------------------------
# Prompt builder (UPDATED)
# --------------------------
def build_prompt(article_id, chunk_id, root_name, root_type, chunk_text, cypher_text):

    return f"""
Bạn là hệ thống đánh giá chất lượng Cypher cho Neo4j từ văn bản y khoa tiếng Việt.
Nhiệm vụ của bạn: KIỂM TRA Cypher sinh ra từ một CHUNK văn bản để xác định:

1) ĐÚNG LAYER chưa?
2) ĐÚNG CẤU TRÚC CHUẨN KG chưa?
3) ĐẦY ĐỦ NỘI DUNG chưa (không bỏ sót)?
4) KHÔNG THÊM NỘI DUNG mới (không hallucinate)?
5) TÊN NODE có GỌN và CHUẨN không (không quá dài, không trùng lặp)?
6) MỌI thông tin từ chunk đã được phân loại đúng vào:
   - Disease
   - SubDisease
   - Symptom
   - Cause
   - Treatment
   - Prevention
   - Definition
   - Population
   - RiskFactor
   - Complication
   - Detail
   - Application
   - Topic
   - SubTopic
   - hoặc các layer khác mà hệ thống đã quy định.

Bạn CHỈ đánh giá, KHÔNG sửa Cypher.

------------------------------------
INPUT GỒM HAI PHẦN:

== ARTICLE INFO ==
article_id = {article_id}
chunk_id   = {chunk_id}
root_name  = {root_name}
root_type  = {root_type}

== CHUNK VĂN BẢN ==
\"\"\"{chunk_text}\"\"\"


== CYPHER ĐÃ TẠO ==
\"\"\"{cypher_text}\"\"\"


------------------------------------
YÊU CẦU TRẢ VỀ STRICT JSON (KHÔNG markdown):

JSON FORMAT:
{{
  "layer_correctness_score": 0,
  "content_coverage_score": 0,
  "hallucination_score": 0,
  "structure_score": 0,
  "naming_score": 0,
  "missing_nodes": [],
  "wrong_layer_nodes": [],
  "hallucinated_nodes": [],
  "problems": [],
  "final_verdict": "PASS"
}}
"""


# --------------------------
# Clean output
# --------------------------
def clean_output(text):
    t = text.strip()
    if t.startswith("```"):
        t = t.strip("`")
        t = t.replace("json", "", 1).strip()
    return t


# --------------------------
# Evaluate pair
# --------------------------
def evaluate_pair(article_id, chunk_id, root_name, root_type, chunk_text, cypher_text):

    prompt = build_prompt(article_id, chunk_id, root_name, root_type, chunk_text, cypher_text)

    headers = {
        "Content-Type": "application/json",
        "Authorization": f"Bearer {API_KEY}",
    }

    payload = {
        "model": MODEL,
        "messages": [{"role": "user", "content": prompt}],
        "temperature": 0,
        "max_tokens": 2048,
    }

    response = requests.post(BASE_URL, headers=headers, json=payload)

    try:
        content = response.json()["choices"][0]["message"]["content"]
    except:
        return {"error": response.text}

    clean = clean_output(content)

    try:
        return json.loads(clean)
    except:
        return {"error": "JSON_PARSE_FAILED", "raw": clean}


# --------------------------
# RUN ALL
# --------------------------
def run_all(csv_file, cypher_file, output_file="judge_results.csv"):

    df = pd.read_csv(csv_file)
    cypher_blocks = load_cypher_blocks(cypher_file)

    print(f"📌 Total rows: {len(df)}")

    results = []

    for idx, row in df.iterrows():
        article_id = int(row["article_id"])
        chunk_id = int(row["chunk_id"])
        key = (article_id, chunk_id)

        cypher_text = cypher_blocks.get(key, "")

        print(f"\n🔍 Evaluating Article {article_id}, Chunk {chunk_id} ...")

        result = evaluate_pair(
            article_id,
            chunk_id,
            row["root_name"],
            row["root_type"],
            row["chunk_text"],
            cypher_text,
        )

        results.append({
            "article_id": article_id,
            "chunk_id": chunk_id,
            "root_name": row["root_name"],
            "root_type": row["root_type"],
            "layer_correctness_score": result.get("layer_correctness_score"),
            "content_coverage_score": result.get("content_coverage_score"),
            "hallucination_score": result.get("hallucination_score"),
            "structure_score": result.get("structure_score"),
            "naming_score": result.get("naming_score"),
            "missing_nodes": result.get("missing_nodes"),
            "wrong_layer_nodes": result.get("wrong_layer_nodes"),
            "hallucinated_nodes": result.get("hallucinated_nodes"),
            "problems": result.get("problems"),
            "final_verdict": result.get("final_verdict"),
            "raw": result.get("raw"),
        })

    pd.DataFrame(results).to_csv(output_file, index=False, encoding="utf-8-sig")

    print(f"\n🎉 DONE! Saved results to {output_file}")


# --------------------------
# MAIN
# --------------------------
if __name__ == "__main__":
    run_all(
        csv_file="./data_kg/csv/topic/topic1.csv",
        cypher_file="./data_kg/csv/topic1",
        output_file="./data_kg/judge/topic1.csv",
    )
