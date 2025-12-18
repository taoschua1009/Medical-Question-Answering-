import os
import re
import pandas as pd

# 📁 Thư mục gốc chứa các file node
NODE_DIR = "all_node"

# 📁 Thư mục lưu file sau khi clean
OUTPUT_DIR = "clean_nodes"
os.makedirs(OUTPUT_DIR, exist_ok=True)

# ============================================================
# Hàm parse node từ chuỗi kiểu:
# (:Disease {name: Bệnh lây truyền..., layer: Disease})
# ============================================================

def parse_node(text):
    """
    Trích xuất name và layer từ chuỗi node.
    Ví dụ:
        (:Disease {name: ABC, layer: Disease})
        (:Symptom {name:"đau bụng", layer:"Symptom"})
    """
    if pd.isna(text):
        return None, None

    txt = str(text)

    # Regex linh hoạt, nhận cả ' " và không có dấu
    pattern = r"name\s*:\s*['\"]?([^,'\"]+)['\"]?\s*,\s*layer\s*:\s*['\"]?([^,'\"\}]+)['\"]?"

    match = re.search(pattern, txt)
    if match:
        name = match.group(1).strip()
        layer = match.group(2).strip()
        return name, layer

    return None, None

# ============================================================
# Tìm cột chứa node string (chứa dấu ":")
# ============================================================

def detect_node_column(df):
    for col in df.columns:
        sample = str(df[col].iloc[0])
        if "{" in sample and "name" in sample:
            return col
    return df.columns[0]  # fallback

# ============================================================
# Xử lý từng file trong thư mục
# ============================================================

for file in os.listdir(NODE_DIR):
    if not file.endswith(".csv"):
        continue

    path = os.path.join(NODE_DIR, file)

    try:
        df = pd.read_csv(path)
    except Exception as e:
        print(f"⚠️ Không đọc được {file}: {e}")
        continue

    # Xác định cột chứa chuỗi node
    col = detect_node_column(df)

    # Parse
    df["name"], df["layer"] = zip(*df[col].apply(parse_node))

    # Giữ lại các dòng hợp lệ
    df_clean = df.dropna(subset=["name", "layer"])[["name", "layer"]].drop_duplicates()

    # Lưu
    out_path = os.path.join(OUTPUT_DIR, file)
    df_clean.to_csv(out_path, index=False, encoding="utf-8-sig")

    print(f"✅ {file} → {len(df_clean)} dòng hợp lệ")

print(f"\n🎉 Hoàn tất! Tất cả file sạch được lưu trong thư mục '{OUTPUT_DIR}'")
