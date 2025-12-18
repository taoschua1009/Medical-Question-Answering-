import pandas as pd
import re

def normalize_root_name(name: str):
    if not isinstance(name, str):
        return name

    # lower để match substring
    text = name.lower()

    # thay "mang thai" -> "thai kỳ"
    text = re.sub(r"\bmang thai\b", "thai kỳ", text)

    # Viết hoa chữ đầu
    return text[0].upper() + text[1:] if text else text


def normalize_root_names_in_csv(input_csv, output_csv):
    df = pd.read_csv(input_csv, engine="python", on_bad_lines="warn")

    df["root_name"] = df["root_name"].apply(normalize_root_name)
    df.to_csv(output_csv, index=False)

    print(f"Đã chuẩn hoá root_name xong. File output: {output_csv}")


if __name__ == "__main__":
    normalize_root_names_in_csv(
        input_csv="./data_kg/csv/topic_1node.csv",
        output_csv="./data_kg/csv/normalized_topic_1node.csv"
    )
