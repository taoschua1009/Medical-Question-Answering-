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


# ========================================================
# 1. LOAD CYPHER BLOCKS
# ========================================================
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


# ========================================================
# 2. PROMPT BUILDER (UPDATED WITH FAIL_REASON SUPPORT)
# ========================================================
def build_prompt(article_id, chunk_id, root_name, root_type, chunk_text, cypher_text):

    return f"""
Bạn là hệ thống đánh giá chất lượng Cypher cho Neo4j từ văn bản y khoa tiếng Việt.

Mục tiêu chính:
1) Kiểm tra nội dung trong CHUNK đã được phân loại ĐÚNG LAYER chưa.
2) Kiểm tra Cypher có BAO PHỦ đầy đủ nội dung của CHUNK không.
3) Kiểm tra Cypher KHÔNG thêm nội dung ngoài CHUNK (không hallucinate).
4) Báo cáo LÝ DO FAIL thật chi tiết, rõ ràng.

⚠️ QUY TẮC QUAN TRỌNG:
- Mỗi chunk chỉ chứa một phần nội dung. Không yêu cầu Cypher có đủ 12 layer.
- Chỉ đánh giá layer XUẤT HIỆN TRONG CHUNK.
- Không phạt nếu thiếu layer không có trong chunk.
- Không suy diễn thêm nội dung ngoài chunk.
- Nếu root_type ≠ Disease → Cypher vẫn phải có Disease cha (không xem là hallucination).

5) MỌI thông tin từ chunk đã được phân loại đúng vào:
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

⚠️ KHI FAIL:
Bạn PHẢI liệt kê đầy đủ fail_reasons, gồm một hoặc nhiều lý do:
- nội dung bị bỏ sót
- node sai layer
- node bị hallucinate
- quan hệ sai hoặc bị thiếu
- cấu trúc sai KG
- tên node sai hoặc quá dài


--------------------------------
INPUT:

== ARTICLE INFO ==
article_id = {article_id}
chunk_id   = {chunk_id}
root_name  = {root_name}
root_type  = {root_type}

== CHUNK ==
\"\"\"{chunk_text}\"\"\" 

== CYPHER ==
\"\"\"{cypher_text}\"\"\" 

------------------------------------
Trả về STRICT JSON (không markdown):

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
  "fail_reasons": [],
  "final_verdict": "PASS"
}}
"""


# ========================================================
# 3. CLEAN OUTPUT
# ========================================================
def clean_output(text):
    t = text.strip()
    if t.startswith("```"):
        t = t.strip("`")
        t = t.replace("json", "", 1).strip()
    return t


# ========================================================
# 4. CALL API
# ========================================================
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
        "max_tokens": 4096,  # tăng để tránh truncate JSON
    }

    response = requests.post(BASE_URL, headers=headers, json=payload)

    try:
        content = response.json()["choices"][0]["message"]["content"]
    except:
        return {"error": response.text}

    clean = clean_output(content)

    # parse JSON safely
    try:
        return json.loads(clean)
    except:
        return {"error": "JSON_PARSE_FAILED", "raw": clean}


# ========================================================
# 5. RUN ALL
# ========================================================
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
            "fail_reasons": result.get("fail_reasons"),
            "final_verdict": result.get("final_verdict"),
            "raw": result.get("raw"),
        })

    pd.DataFrame(results).to_csv(output_file, index=False, encoding="utf-8-sig")

    print(f"\n🎉 DONE! Saved results to {output_file}")


# ========================================================
# 6. MAIN
# ========================================================
if __name__ == "__main__":
    run_all(
        csv_file="./data_kg/csv/topic/topic1.csv",
        cypher_file="./data_kg/csv/topic1",
        output_file="./data_kg/judge/topic1.csv",
    )
