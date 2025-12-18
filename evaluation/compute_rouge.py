import pandas as pd
from rouge_score import rouge_scorer

# ============================================================
# CONFIG
# ============================================================

INPUT_CSV = "system_predictions.csv"

# ============================================================
# LOAD DATA
# ============================================================

df = pd.read_csv(INPUT_CSV)

df = df[
    df["gold_answer"].notna() &
    df["system_answer"].notna() &
    (df["system_answer"].str.strip() != "")
]

scorer = rouge_scorer.RougeScorer(
    ["rouge1", "rouge2", "rougeL"],
    use_stemmer=True
)

scores = {
    "rouge1": [],
    "rouge2": [],
    "rougeL": [],
}

for _, row in df.iterrows():
    ref = row["gold_answer"]
    hyp = row["system_answer"]

    s = scorer.score(ref, hyp)
    for k in scores:
        scores[k].append(s[k].fmeasure)

print("========== ROUGE SCORE ==========")
for k, v in scores.items():
    print(f"{k.upper()}: {sum(v)/len(v):.4f}")
import matplotlib.pyplot as plt

metrics = {
    
    "ROUGE-1": 61.26,
    "ROUGE-2": 51.03,
    "ROUGE-L": 52.90,
}

names = list(metrics.keys())
values = list(metrics.values())

plt.figure(figsize=(7, 5))
plt.bar(names, values)
plt.ylabel("Score")
plt.title("ROUGE scores")
plt.xticks(rotation=45)
plt.ylim(0, 70)
plt.tight_layout()
plt.show()
