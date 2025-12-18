import time
import pandas as pd
from engine import SMoEEngine

# ============================================================
# CONFIG
# ============================================================

INPUT_CSV  = "evaluation_dataset.csv"
OUTPUT_CSV = "system_predictions.csv"

QUESTION_COL = "question"

# ============================================================
# LOAD ENGINE (1 lần duy nhất)
# ============================================================

print("🔧 Loading SMoE Engine...")
engine = SMoEEngine()
print("✅ Engine loaded")

# ============================================================
# LOAD EVALUATION DATASET
# ============================================================

df = pd.read_csv(INPUT_CSV)

df = df[df[QUESTION_COL].notna()]
df[QUESTION_COL] = df[QUESTION_COL].astype(str)

print(f"📥 Loaded {len(df)} evaluation questions")

# ============================================================
# RUN SYSTEM
# ============================================================

outputs = []

for idx, row in df.iterrows():
    q = row[QUESTION_COL]

    print(f"▶ [{idx+1}/{len(df)}] {q}")

    start = time.time()
    result = engine.answer(q)
    latency = round(time.time() - start, 4)

    answers = []

    for r in result.get("neo4j", []):
        for v in r.values():
            if v:
                answers.append(str(v))

    system_answer = " ".join(answers).strip()

    outputs.append({
        "article_id": row["article_id"],
        "disease_name": row["disease_name"],
        "gold_layer": row["gold_layer"],
        "question": q,
        "gold_answer": row["gold_answer"],
        "system_answer": system_answer,
        "latency_s": latency,
    })

# ============================================================
# SAVE
# ============================================================

out_df = pd.DataFrame(outputs)

out_df.to_csv(
    OUTPUT_CSV,
    index=False,
    encoding="utf-8-sig"
)

print("\n✅ DONE")
print(f"💾 Saved: {OUTPUT_CSV}")
print(f"🧠 Total evaluated: {len(out_df)}")
