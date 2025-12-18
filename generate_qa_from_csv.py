import os
import json
import pandas as pd
from dotenv import load_dotenv
from openai import OpenAI
import csv
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
OUTPUT_CSV = "gold_eval_qa_llm.csv"

COL_ARTICLE_ID = "article_id"
COL_CHUNK_ID   = "chunk_id"
COL_DISEASE    = "root_name"
COL_ROOT_TYPE  = "root_type"
COL_TEXT       = "chunk_text"

TARGET_ROOT_TYPES = {"disease", "subdisease"}

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
# PROMPT
# ============================================================

SYSTEM_PROMPT = (
    "Bạn là công cụ tạo GOLD ANSWER cho đánh giá hệ thống hỏi đáp y khoa.\n"
    "CHỈ sử dụng thông tin trong các đoạn được cung cấp.\n"
    "KHÔNG suy đoán, KHÔNG thêm kiến thức ngoài.\n"
    "Nhiệm vụ: tổng hợp các đoạn thành một câu trả lời ngắn gọn, mạch lạc."
)



def load_csv_safe(path):
    rows = []

    with open(path, "r", encoding="utf-8", errors="replace") as f:
        reader = csv.reader(
            f,
            delimiter=",",
            quotechar='"',
            escapechar="\\",
            strict=False
        )

        header = next(reader)  # 5 columns
        n_cols = len(header)

        for i, row in enumerate(reader, start=2):
            if not row:
                continue

            if len(row) < n_cols:
                # pad thiếu
                row = row + [""] * (n_cols - len(row))

            elif len(row) > n_cols:
                # gộp các cột dư vào chunk_text
                fixed = row[:n_cols-1]
                merged_text = ",".join(row[n_cols-1:])
                row = fixed + [merged_text]

            rows.append(row)

    df = pd.DataFrame(rows, columns=header)
    return df



def build_question(disease, layer):
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

def compose_answer_llm(disease, layer, evidences):
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
- Nếu câu văn KHÔNG thuộc layer {layer} → BỎ QUA
- KHÔNG trộn nhiều loại thông tin
- Ví dụ:
  * Cause → chỉ nguyên nhân
  * Symptom → chỉ triệu chứng
  * Treatment → chỉ điều trị
- KHÔNG mô tả diễn tiến, thời điểm, đối tượng nếu không đúng layer
- Nếu KHÔNG có thông tin phù hợp layer → trả về CHUỖI RỖNG
- Trả lời 1–2 câu, văn phong y khoa
- KHÔNG gạch đầu dòng
- CHỈ trả về câu trả lời, không giải thích
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

    # 🔒 HARD GUARD: nếu model trả lời chung chung
    if answer.lower() in {"", "không có thông tin", "không đủ thông tin"}:
        return ""

    return answer


# ============================================================
# MAIN
# ============================================================

def main():
    df = load_csv_safe(INPUT_CSV)

    # 🔥 CHỈ TEST ARTICLE 1
    df = df[df[COL_ARTICLE_ID].astype(str) == "1"]

    # chỉ lấy Disease / SubDisease
    df = df[df[COL_ROOT_TYPE].isin(TARGET_ROOT_TYPES)]

    out = []

    grouped = df.groupby(COL_DISEASE)


    for disease, g in grouped:
        evidences = [
            {
                "chunk_id": row[COL_CHUNK_ID],
                "text": str(row[COL_TEXT]).strip()
            }
            for _, row in g.iterrows()
            if str(row[COL_TEXT]).strip()
        ]

        if not evidences:
            continue

        for layer in LAYERS:
            answer = compose_answer_llm(disease, layer, evidences)
            if not answer:
                continue

            out.append({
                "disease_name": disease,
                "gold_layer": layer,
                "question": build_question(disease, layer),
                "gold_answer": answer,
                "gold_evidence": json.dumps(evidences, ensure_ascii=False),
            })

        print(f"[OK] {disease} | {len(evidences)} chunks")

    pd.DataFrame(out).to_csv(
        OUTPUT_CSV, index=False, encoding="utf-8-sig"
    )

    print("\n✅ DONE")
    print(f"- Saved: {OUTPUT_CSV}")
    print(f"- Total GOLD QA: {len(out)}")

if __name__ == "__main__":
    main()
