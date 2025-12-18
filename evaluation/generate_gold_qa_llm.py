import os
import json
import csv
import pandas as pd
from dotenv import load_dotenv
from openai import OpenAI

# ============================================================
# ENV
# ============================================================
load_dotenv()

MODEL = os.getenv("MODEL_ID", "qwen/qwen-2.5-72b-instruct")
client = OpenAI(
    api_key=os.getenv("OPENROUTER_API_KEY"),
    base_url="https://openrouter.ai/api/v1",
)

# ============================================================
# CONFIG
# ============================================================

INPUT_CSV  = "data/dataset_sanitized.csv"
OUTPUT_CSV = "gold_eval_qa_250_articles.csv"

COL_ARTICLE_ID = "article_id"
COL_CHUNK_ID   = "chunk_id"
COL_DISEASE    = "root_name"
COL_ROOT_TYPE  = "root_type"
COL_TEXT       = "chunk_text"

TARGET_ROOT_TYPES = {"disease", "subdisease", "Disease", "Subdisease", "diseases", "subdiseases","topic","Topic","Diseases","Subdiseases","subtopic","Subtopic"}

LAYERS = [
    "Definition",
    "Symptom",
    "Cause",
    "RiskFactor",
    "Complication",
    "Treatment",
    "Prevention",
    "Population",
    "Context",
    "Application",
    "Advice",
    "Detail",
]

TEMPERATURE = 0.0
MAX_TOKENS  = 400

# ============================================================
# SYSTEM PROMPT
# ============================================================

SYSTEM_PROMPT = (
    "Bạn là công cụ tạo GOLD ANSWER cho đánh giá hệ thống hỏi đáp y khoa.\n"
    "CHỈ sử dụng thông tin trong các đoạn được cung cấp.\n"
    "KHÔNG suy đoán, KHÔNG thêm kiến thức ngoài.\n"
    "Nhiệm vụ: trích xuất thông tin chính xác theo layer được yêu cầu."
)

# ============================================================
# SAFE CSV LOADER (chịu CSV bẩn)
# ============================================================

def load_csv_safe(path: str) -> pd.DataFrame:
    rows = []
    with open(path, "r", encoding="utf-8", errors="replace") as f:
        reader = csv.reader(
            f,
            delimiter=",",
            quotechar='"',
            escapechar="\\",
            strict=False,
        )

        header = next(reader)
        n_cols = len(header)

        for row in reader:
            if not row:
                continue

            if len(row) < n_cols:
                row += [""] * (n_cols - len(row))
            elif len(row) > n_cols:
                row = row[: n_cols - 1] + [",".join(row[n_cols - 1 :])]

            rows.append(row)

    return pd.DataFrame(rows, columns=header)

# ============================================================
# QUESTION TEMPLATE
# ============================================================

def build_question(disease: str, layer: str) -> str:
    return {
        "Definition": f"{disease} là gì?",
        "Symptom": f"{disease} có những triệu chứng nào?",
        "Cause": f"Nguyên nhân gây ra {disease} là gì?",
        "RiskFactor": f"Yếu tố nguy cơ của {disease} là gì?",
        "Complication": f"{disease} có thể gây ra những biến chứng gì?",
        "Treatment": f"{disease} được điều trị như thế nào?",
        "Prevention": f"Làm thế nào để phòng ngừa {disease}?",
        "Population": f"{disease} thường gặp ở những đối tượng nào?",
        "Context": f"{disease} trong các bối cảnh đặc biệt cần lưu ý điều gì?",
        "Application": f"{disease} được áp dụng hoặc xử lý trong thực tế như thế nào?",
        "Advice": f"Có những lời khuyên nào cho người mắc {disease}?",
        "Detail": f"Có những thông tin quan trọng nào khác về {disease}?",
    }[layer]

# ============================================================
# LLM COMPOSER (STRICT – KHÓA SAI LAYER)
# ============================================================

def compose_answer_llm(disease: str, layer: str, evidences: list[dict]) -> str:
    evidence_text = "\n".join(
        f"- ({e['chunk_id']}) {e['text']}" for e in evidences
    )

    prompt = f"""
BỆNH: {disease}
LAYER MỤC TIÊU: {layer}

CÂU HỎI:
{build_question(disease, layer)}

CÁC ĐOẠN THAM CHIẾU:
{evidence_text}

YÊU CẦU BẮT BUỘC:
- CHỈ trích xuất thông tin THUỘC layer = {layer}
- Nếu KHÔNG có thông tin phù hợp layer → trả về DUY NHẤT: <<EMPTY>>
- TUYỆT ĐỐI KHÔNG giải thích, bình luận, ví dụ
- KHÔNG dùng ngôn ngữ khác tiếng Việt
- Output = 1 đoạn văn HOẶC <<EMPTY>>
"""

    resp = client.chat.completions.create(
        model=MODEL,
        temperature=TEMPERATURE,
        max_tokens=MAX_TOKENS,
        messages=[
            {"role": "system", "content": SYSTEM_PROMPT},
            {"role": "user", "content": prompt},
        ],
    )

    answer = (resp.choices[0].message.content or "").strip()
    return "" if answer == "<<EMPTY>>" else answer

# ============================================================
# MAIN – TẠO QA CHO 10 ARTICLE ĐẦU
# ============================================================

def main():
    df = load_csv_safe(INPUT_CSV)

    df[COL_ROOT_TYPE] = df[COL_ROOT_TYPE].astype(str).str.lower()

    # 🔥 LẤY 10 ARTICLE ĐẦU TIÊN
    first_10_articles = (
        df[COL_ARTICLE_ID]
        .dropna()
        .astype(int)      # 🔥 ép về số
        .sort_values()    # 🔥 sort số
        .unique()[199:260]
        .astype(str)      # 🔁 convert lại string để filter
)


    df = df[df[COL_ARTICLE_ID].astype(str).isin(first_10_articles)]
    df = df[df[COL_ROOT_TYPE].isin(TARGET_ROOT_TYPES)]

    out = []

    for article_id, df_article in df.groupby(COL_ARTICLE_ID):
        print(f"\n📰 ARTICLE {article_id}")

        for disease, g in df_article.groupby(COL_DISEASE):
            evidences = [
                {
                    "chunk_id": row[COL_CHUNK_ID],
                    "text": str(row[COL_TEXT]).strip(),
                }
                for _, row in g.iterrows()
                if str(row[COL_TEXT]).strip()
            ]

            if not evidences:
                continue

            for layer in LAYERS:
                answer = compose_answer_llm(disease, layer, evidences)
                if not answer:
                    continue  # ❗ layer không có → bỏ

                out.append({
                    "article_id": article_id,
                    "disease_name": disease,
                    "gold_layer": layer,
                    "question": build_question(disease, layer),
                    "gold_answer": answer,
                    "gold_evidence": json.dumps(evidences, ensure_ascii=False),
                })

            print(f"  [OK] {disease}")

    pd.DataFrame(out).to_csv(
        OUTPUT_CSV,
        index=False,
        encoding="utf-8-sig"
    )

    print("\n✅ DONE")
    print(f"- Saved: {OUTPUT_CSV}")
    print(f"- Total GOLD QA: {len(out)}")

if __name__ == "__main__":
    main()
