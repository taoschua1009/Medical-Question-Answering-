# topic_2node_gen.py
# Pipeline sinh Cypher cho Topic/Disease ↔ Context (2 node gốc)

import os
import re
import traceback
import pandas as pd
from dotenv import load_dotenv
from neo4j import GraphDatabase
from tenacity import retry, wait_random_exponential, stop_after_attempt
from openai import OpenAI

# =========================
# Config & Clients
# =========================
load_dotenv()

OPENROUTER_API_KEY = os.getenv("OPENROUTER_API_KEY")
NEO4J_URI          = os.getenv("NEO4J_URI")
NEO4J_USER         = os.getenv("NEO4J_USER")
NEO4J_PASSWORD     = os.getenv("NEO4J_PASSWORD")

MODEL    = os.getenv("MODEL_ID", "qwen/qwen-2.5-72b-instruct")
CSV_PATH = os.getenv("CSV_PATH", "./data_kg/csv/normalized_topic_2node.csv")
OUTPUT_CYPHER_FILE = os.getenv("OUTPUT_CYPHER_FILE", "./data_kg/cypher/topic_2node.cypher")

if not OPENROUTER_API_KEY:
    raise RuntimeError("Thiếu OPENROUTER_API_KEY trong .env")

client = OpenAI(api_key=OPENROUTER_API_KEY, base_url="https://openrouter.ai/api/v1")

# =========================
# Prompt tách root_name
# =========================
SPLIT_PROMPT_TMPL = """
Bạn là hệ thống tách nhãn cho Neo4j.

== INPUT ==
root_name: "{root_name}"
root_type: "{root_type}"

== NHIỆM VỤ ==
- Nếu root_type = "Disease":
  MAIN_NODE_NAME = tên bệnh chính (ví dụ: "Bệnh chàm", "Tiểu đường", "Rạn da", "Đái tháo đường", "Béo phì")
  CONTEXT_NODE   = bối cảnh (ví dụ: "Thai kỳ", "Mang thai")
- Nếu root_type = "Topic":
  MAIN_NODE_NAME = khái niệm chính (ví dụ: "Siêu âm", "Nghén", "Quần áo")
  CONTEXT_NODE   = bối cảnh (ví dụ: "Thai kỳ", "Mang thai", "Bà bầu")
- Nếu root_name không có bối cảnh rõ:
  MAIN_NODE_NAME = root_name
  CONTEXT_NODE   = "Khác"

== OUTPUT ==
Trả về đúng 3 dòng:
MAIN_NODE_NAME: ...
MAIN_NODE_TYPE: Disease/Topic/SubDisease
CONTEXT_NODE: ...

"""

# =========================
# Prompt sinh Cypher
# =========================
SYSTEM_PROMPT_TMPL = """
Bạn là hệ thống sinh Cypher cho Neo4j từ văn bản y khoa tiếng Việt.  
BẠN CHỈ IN RA CYPHER THUẦN (không markdown, không chú thích).  

== NGỮ CẢNH BÀI ==
MAIN_NODE_TYPE   = "{main_node_type}"
MAIN_NODE_NAME   = "{main_node_name}"
CONTEXT_NODE     = "{context_node}"
CHUNK_ID         = {chunk_id}
CHUNK_TITLE      = "{chunk_title}"
CHUNK_TEXT       = {chunk_text}

== NGUYÊN TẮC ==
A. Node gốc
1) Luôn tạo đủ 2 node gốc:
   - Nếu MAIN_NODE_NAME = "HIV" → LUÔN tạo SubDisease:
     MERGE (s:SubDisease {{name:"HIV", layer:"SubDisease"}})
   - Nếu MAIN_NODE_NAME = "Bệnh chàm" → LUÔN tạo Disease:
     MERGE (s:Disease {{name:"Bệnh chàm", layer:"Disease"}})
   - Ngược lại → MERGE theo MAIN_NODE_TYPE:
     MERGE (s:{main_node_type} {{name:"{main_node_name}", layer:"{main_node_type}"}})
   - Sau đó:
     MERGE (tk:Topic {{name:"{context_node}", layer:"Topic"}})
     MERGE (s)-[:APPLIED_IN]->(tk)

B. Các lớp nội dung hợp lệ
- Definition, Application, Detail, Symptom, Cause,
  Treatment, Complication, Population, RiskFactor,
  Advice, Prevention
  

⚠️ KHÔNG được tạo ra bất kỳ lớp nào khác ngoài danh sách trên. 
Nếu không phân loại được → mặc định đưa vào lớp Detail.

C. TÁCH THÀNH NHIỀU NODE
- Nếu trong một đoạn có nhiều triệu chứng, nguyên nhân, lời khuyên, chi tiết, hậu quả → phải tạo nhiều node riêng biệt (symptom1, symptom2, advice1, comp1…).
- Khi triệu chứng/nguyên nhân/treatment… được liệt kê bằng "và", "hoặc", dấu phẩy (",") → phải tách ra thành nhiều node nhỏ thay vì gộp chung.
  Ví dụ: "buồn nôn và nôn" → tạo 2 node Symptom riêng biệt: "buồn nôn", "nôn".
- Mỗi node phải chứa toàn bộ mệnh đề/câu của nó, không được gộp nhiều câu vào một node.
- Không được gộp tất cả nội dung vào một node duy nhất.
- Nếu một cụm có nhiều mệnh đề gắn kết chặt về mặt nghĩa (ví dụ: loại thuốc + mục đích điều trị, liều lượng + thời gian sử dụng) → PHẢI giữ nguyên trong một node duy nhất.
- Không được tách riêng trong các trường hợp này để tránh mất ngữ nghĩa.
Ví dụ: "nhiều thuốc chống nôn an toàn, chủ yếu để cải thiện triệu chứng" → chỉ tạo 1 node Treatment.

- Nếu một đoạn có nhiều triệu chứng, nguyên nhân, lời khuyên, chi tiết, hậu quả → phải tạo node riêng biệt.
- Nếu liệt kê bằng "và", "hoặc", dấu phẩy → tách thành nhiều node nhỏ thay vì gộp chung.
- Tuy nhiên, nếu câu có cấu trúc so sánh hoặc điều kiện (ví dụ: "đa số… nhưng một số…", "nếu… thì…", "mặc dù… nhưng…") → PHẢI giữ nguyên toàn bộ cụm trong 1 node duy nhất, không được tách nhỏ, để đảm bảo ngữ nghĩa đầy đủ.
- Nếu là mô tả phác đồ điều trị gồm nhiều lựa chọn/thuốc/cách dùng độc lập → phải tách riêng thành nhiều node Treatment.
- Nếu là một cụm gồm loại thuốc + mục đích sử dụng / liều lượng + thời gian → phải giữ nguyên trong 1 node duy nhất.
- Nếu có danh sách các yếu tố/triệu chứng/biểu hiện/chi tiết được nối bằng "và", "hoặc", dấu phẩy → phải tách thành nhiều node riêng biệt.  
Ví dụ: "đói, mệt mỏi, căng thẳng" → tạo 3 node Cause {{name:"đói"}}, {{name:"mệt mỏi"}}, {{name:"căng thẳng"}}.

Ví dụ:
- Input: "đa số thai phụ có thể điều trị tại nhà hoặc ngoại trú, nhưng một số cần nhập viện"
  → Output: chỉ tạo 1 node Treatment {{name:"đa số thai phụ có thể điều trị tại nhà hoặc ngoại trú, nhưng một số cần nhập viện"}}

- Input: "dùng kháng sinh hoặc phẫu thuật"
  → Output: tách thành 2 node Treatment {{name:"dùng kháng sinh"}} và {{name:"phẫu thuật"}}.

- Nếu câu bắt đầu hoặc chứa cụm “cần phân biệt với …” → 
  KHÔNG được tách thành nhiều Cause. 
  Thay vào đó, gộp nguyên câu vào 1 node Detail duy nhất.
- Nếu câu chứa các cụm “phát hiện …”, “chẩn đoán …” → phải đưa vào lớp Application, 
  KHÔNG được gán sang Complication hay Detail.
  


D. Quan hệ hợp lệ
- (s)-[:HAS_DEFINITION]->(:Definition)
- (s)-[:HAS_APPLICATION]->(:Application)
- (s)-[:HAS_DETAIL]->(:Detail)
- (s)-[:HAS_SYMPTOM]->(:Symptom)
- (s)-[:HAS_CAUSE]->(:Cause)
- (s)-[:HAS_TREATMENT]->(:Treatment)
- (s)-[:HAS_COMPLICATION]->(:Complication)
- (s)-[:AFFECTS]->(:Population)
- (s)-[:HAS_RISK_FACTOR]->(:RiskFactor)
- (s)-[:HAS_ADVICE]->(:Advice)
- (s)-[:HAS_PREVENTION]->(:Prevention)

Đặc biệt:
Mapping đặc biệt
- Symptom: chỉ dành cho biểu hiện lâm sàng thực thể (buồn nôn, nôn, đau, mệt mỏi, sốt, ngứa, ra khí hư…).
- Detail: dành cho mốc thời gian (tuần, tháng, giai đoạn), tiến triển (cải thiện, kéo dài, xấu đi), tên gọi khác ("thường gọi là…").
- Complication: tác động, hậu quả, ảnh hưởng đến sức khỏe, tinh thần, công việc, gia đình…
- Advice: khuyến nghị, hỗ trợ, điều nên/không nên làm.
- Không được đưa các mốc thời gian hoặc tên gọi vào Symptom.
- Nếu câu chứa các cụm “phát hiện …”, “chẩn đoán …”, “xác định …” → luôn gán vào Application. 
  KHÔNG được gán sang Complication.
- Complication chỉ áp dụng khi mô tả tác động thực sự xảy ra với sức khỏe, tinh thần, công việc, 
  gia đình… của bệnh nhân (ví dụ: "nguy cơ sảy thai", "ảnh hưởng đến công việc").




E. Context hóa
Nếu nội dung liên quan trực tiếp đến bối cảnh:
- (app:Application)-[:CONTEXT]->(tk)
- (comp:Complication)-[:CONTEXT]->(tk)
- (p:Population)-[:CONTEXT]->(tk)
- (rf:RiskFactor)-[:CONTEXT]->(tk)
- (a:Advice)-[:CONTEXT]->(tk)
- (pr:Prevention)-[:CONTEXT]->(tk)
- (det:Detail)-[:CONTEXT]->(tk)
- (s:Symptom)-[:CONTEXT]->(tk)
- (c:Cause)-[:CONTEXT]->(tk)
- (t:Treatment)-[:CONTEXT]->(tk)
- (def:Definition)-[:CONTEXT]->(tk)

- MỌI node con (Definition, Application, Detail, Symptom, Cause, Treatment, Complication, Population, RiskFactor, Advice, Prevention)
  đều phải có quan hệ trực tiếp với Topic:
  (nodeX)-[:CONTEXT]->(tk)
- Các node con chỉ nối với node gốc (s), KHÔNG được nối chéo giữa các node con với nhau (ví dụ: Cause ↔ Symptom).

F. Quy tắc biến
- def1, app1, det1, s1, c1, t1, comp1, p1, rf1, a1, pr1 …
- Không được trùng biến.
- Mỗi node phải có 2 dòng liên tiếp: MERGE node + MERGE quan hệ.
- Không WITH/RETURN.
- Mọi node con (Definition, Application, Detail, Symptom, Cause, Treatment, Complication, Population, RiskFactor, Advice, Prevention)  
  đều PHẢI có thêm quan hệ CONTEXT với Topic:  
  (nodeX)-[:CONTEXT]->(tk)
- Không được bỏ sót bất kỳ lớp nào.

== TỪ ĐIỂN GỢI Ý ==
- Definition: "là gì", "được định nghĩa", "là tình trạng", "được xác định".
- Application: "ứng dụng", "dùng để", "giúp", "vai trò", "chức năng".
- Detail: "mô tả chi tiết", "bao gồm", "đặc điểm", "trình bày".
- Symptom: "triệu chứng", "biểu hiện", "dấu hiệu", "đau", "sưng", "ngứa", "sốt".
- Cause: "nguyên nhân", "do", "bởi", "gây ra", "nhiễm", "liên quan đến".
- Treatment: "điều trị", "thuốc", "kháng sinh", "phẫu thuật", "liệu pháp".
- Complication: "biến chứng", "hậu quả", "nguy cơ", "tử vong", "sảy thai".
- Population: đối tượng hoặc tỷ lệ bị ảnh hưởng (ví dụ: "1–3% sản phụ", "phụ nữ tuổi sinh sản", "trẻ em", "người lớn tuổi").  
  → Nếu câu chứa số liệu %, nhóm người, tỷ lệ mắc → chắc chắn là Population, KHÔNG được gán sang Complication.
- RiskFactor: "yếu tố nguy cơ", "dễ mắc", "tiền sử", "gen", "tuổi".
- Advice: "lời khuyên", "khuyến cáo", "nên", "không nên", "cần".
- Prevention: "phòng ngừa", "ngăn ngừa", "tiêm phòng", "vaccine", "bao cao su".

G. Quy tắc thuộc tính
- Mỗi node chỉ có các thuộc tính: {{name, layer}}.
- Nếu có chi tiết hoặc số liệu (từng đưa vào "text"), hãy gộp thẳng vào trong {{name}}.
- Không sinh thêm thuộc tính text.

H. Quy tắc viết hoa/thường
- Topic: LUÔN viết hoa chữ cái đầu tiên, giữ nguyên phần còn lại.
  Ví dụ: "Thai kỳ", "Mang thai". 
- Disease: LUÔN viết hoa chữ cái đầu tiên của mỗi từ quan trọng (Title Case).
  Ví dụ: "Tiểu đường", "Bệnh chàm".
- SubDisease: LUÔN viết hoa chữ cái đầu tiên của mỗi từ quan trọng (Title Case).
  Ví dụ: "HIV", "Viêm gan B".
- Tất cả các lớp khác ( Symptom, Cause, Treatment, Complication, Population, RiskFactor, Advice, Prevention, Detail, Definition):
  viết thường toàn bộ (lowercase). Ví dụ: "sản phụ bị nghén nặng", "nghén nặng có thể ảnh hưởng 1–3% sản phụ".

"""

# =========================
# Helpers
# =========================
CLASS_CACHE = {}
VALID_ROOT_TYPES = {"Disease", "Topic", "SubDisease"}

DISEASE_KEYWORDS = ["tiểu đường", "béo phì", "viêm", "ung thư", "rạn da", "eczema", "nấm", "hiv", "viêm gan"]
@retry(wait=wait_random_exponential(min=2, max=15), stop=stop_after_attempt(3))


def split_root_with_llm(root_name: str, root_type: str):
    # Nếu root_name đã được phân loại trước đó thì dùng lại
    if root_name in CLASS_CACHE:
        return CLASS_CACHE[root_name]

    # --- gọi LLM như cũ ---
    prompt = SPLIT_PROMPT_TMPL.format(root_name=root_name, root_type=root_type)
    resp = client.chat.completions.create(
        model=MODEL,
        messages=[{"role": "system", "content": prompt}],
        temperature=0,
        max_tokens=200,
    )
    text = resp.choices[0].message.content.strip()

    main_name, main_type, context = root_name, root_type, "Khác"
    for line in text.splitlines():
        if line.startswith("MAIN_NODE_NAME:"):
            main_name = line.replace("MAIN_NODE_NAME:", "").strip()
        elif line.startswith("MAIN_NODE_TYPE:"):
            main_type = line.replace("MAIN_NODE_TYPE:", "").strip()
        elif line.startswith("CONTEXT_NODE:"):
            context = line.replace("CONTEXT_NODE:", "").strip()

    # ép hợp lệ
    if main_type not in VALID_ROOT_TYPES:
        main_type = "Topic"

    CLASS_CACHE[root_name] = (main_name, main_type, context)
    return main_name, main_type, context


@retry(wait=wait_random_exponential(min=2, max=15), stop=stop_after_attempt(3))
def generate_cypher(main_node_type, main_node_name, context_node, chunk_id, chunk_title, chunk_text):
    system_prompt = SYSTEM_PROMPT_TMPL.format(
        main_node_type=main_node_type,
        main_node_name=main_node_name,
        context_node=context_node,
        chunk_id=chunk_id,
        chunk_title=chunk_title.replace("{", "{{").replace("}", "}}"),
        chunk_text=chunk_text.replace("{", "{{").replace("}", "}}"),
    )
    user_prompt = "Sinh mã Cypher theo đúng các quy tắc trên. Chỉ in Cypher."
    resp = client.chat.completions.create(
        model=MODEL,
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt},
        ],
        temperature=0.2,
        max_tokens=1500,
    )
    return resp.choices[0].message.content.strip()

def push_to_neo4j(driver, cypher_query: str) -> None:
    with driver.session() as session:
        session.run(cypher_query)

def append_to_log(article_id, chunk_id, root_name, cypher_code):
    with open(OUTPUT_CYPHER_FILE, "a", encoding="utf-8") as f:
        f.write(f"\n// ===== Article {article_id} | Chunk {chunk_id} | {root_name} =====\n")
        f.write(cypher_code)
        f.write("\n")

# =========================
# Main
# =========================
def main():
    if os.path.exists(OUTPUT_CYPHER_FILE):
        os.remove(OUTPUT_CYPHER_FILE)

    driver = GraphDatabase.driver(NEO4J_URI, auth=(NEO4J_USER, NEO4J_PASSWORD))

    df = pd.read_csv(CSV_PATH, engine="python", quotechar='"', on_bad_lines="skip")
    df["article_id"] = pd.to_numeric(df["article_id"], errors="coerce")
    df["chunk_id"]   = pd.to_numeric(df["chunk_id"], errors="coerce")
    df = df.dropna(subset=["article_id", "chunk_id"])
    df["article_id"] = df["article_id"].astype(int)
    df["chunk_id"]   = df["chunk_id"].astype(int)
    df = df.sort_values(["article_id", "chunk_id"]).reset_index(drop=True)

    for _, row in df.iterrows():
        article_id = int(row["article_id"])
        chunk_id   = int(row["chunk_id"])
        root_name  = str(row["root_name"]).strip()
        root_type  = str(row["root_type"]).capitalize()
        chunk_text = str(row["chunk_text"]) if pd.notna(row["chunk_text"]) else ""

        try:
            main_node_name, main_node_type, context_node = split_root_with_llm(root_name, root_type)
            cypher = generate_cypher(main_node_type, main_node_name, context_node, chunk_id, root_name, chunk_text)


            print(f"\n📘 Article {article_id} | Chunk {chunk_id}")
            print("——— Cypher ———")
            print(cypher)
            print("———————")

            append_to_log(article_id, chunk_id, root_name, cypher)
            push_to_neo4j(driver, cypher)
            print("✅ Đã đẩy vào Neo4j & lưu log.")

        except Exception as e:
            print(f"❌ Lỗi xử lý Article {article_id} | Chunk {chunk_id}: {e}")
            traceback.print_exc()

    driver.close()
    print(f"\n🎉 Xong. Log: {OUTPUT_CYPHER_FILE}")

if __name__ == "__main__":
    main()
