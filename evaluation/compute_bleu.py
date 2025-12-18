import pandas as pd
import sacrebleu
import matplotlib.pyplot as plt

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

refs = df["gold_answer"].astype(str).tolist()
hyps = df["system_answer"].astype(str).tolist()

# ============================================================
# COMPUTE BLEU
# ============================================================

bleu = sacrebleu.corpus_bleu(hyps, [refs])

print("========== BLEU SCORE ==========")
print(f"BLEU: {bleu.score:.2f}")
print(f"BLEU-1..4: {bleu.precisions}")
print(f"Brevity Penalty: {bleu.bp:.3f}")
print(f"System length: {bleu.sys_len}")
print(f"Reference length: {bleu.ref_len}")

# ============================================================
# VISUALIZATION
# ============================================================

# ---------- 1. BLEU-1..4 ----------
bleu_labels = ["BLEU-1", "BLEU-2", "BLEU-3", "BLEU-4"]
bleu_values = bleu.precisions

plt.figure(figsize=(7, 5))
plt.bar(bleu_labels, bleu_values)
plt.ylim(0, 50)
plt.ylabel("Precision (%)")
plt.title("BLEU-1 to BLEU-4 Precision")

# annotate values
for i, v in enumerate(bleu_values):
    plt.text(i, v + 1, f"{v:.2f}", ha="center")

plt.tight_layout()
plt.show()

# ---------- 2. Length comparison ----------
plt.figure(figsize=(6, 5))
plt.bar(
    ["System Output", "Reference (Gold)"],
    [bleu.sys_len, bleu.ref_len],
)
plt.ylabel("Total Token Count")
plt.title("System vs Gold Answer Length")

# annotate values
plt.text(0, bleu.sys_len + 60, str(bleu.sys_len), ha="center")
plt.text(1, bleu.ref_len + 60, str(bleu.ref_len), ha="center")

plt.tight_layout()
plt.show()
