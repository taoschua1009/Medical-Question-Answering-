# gen_cypher_fix_complication.py
# Bản fine-tuned: giữ logic idempotent, tránh lỗi "ẩn" trong "khuẩn"
# ✅ Bổ sung lớp Definition, RiskFactor, Advice, Prevention

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
CSV_PATH = os.getenv("CSV_PATH", "./data_kg/csv/loc_disease.csv")
OUTPUT_CYPHER_FILE = os.getenv("OUTPUT_CYPHER_FILE", "./data_kg/cypher/loc_disease")

if not OPENROUTER_API_KEY:
    raise RuntimeError("Thiếu OPENROUTER_API_KEY trong .env")

client = OpenAI(api_key=OPENROUTER_API_KEY, base_url="https://openrouter.ai/api/v1")

# =========================
# Prompt
# =========================
SYSTEM_PROMPT_TMPL = """
Bạn là hệ thống sinh Cypher cho Neo4j từ văn bản y khoa tiếng Việt.
BẠN CÓ THỂ LÝ LUẬN NỘI BỘ, NHƯNG CHỈ IN RA CYPHER THUẦN (không markdown, không chú thích).

⚠️⚠️⚠️ QUY TẮC SỐ 1 - BẮT BUỘC TUYỆT ĐỐI ⚠️⚠️⚠️
MỌI NODE NỘI DUNG (Symptom, Cause, Treatment, Detail, Population, Definition, Advice, 
RiskFactor, Prevention, Complication) PHẢI ĐƯỢC NỐI VÀO DISEASE HOẶC SUBDISEASE.
KHÔNG CÓ NGOẠI LỆ. MỖI NODE = 2 DÒNG: 1 MERGE node + 1 MERGE quan hệ.

== NGỮ CẢNH BÀI ==
CANONICAL_root_name = "{canonical_name}"
KNOWN_SUBDISEASES   = {known_subdiseases}
FOCUS_TARGET        = "{focus_target}"
CHUNK_ID            = {chunk_id}
CHUNK_TITLE         = "{chunk_title}"

== NỘI DUNG CHUNK ==
{chunk_text}

== NGUYÊN TẮC BẮT BUỘC ==

QUAN TRỌNG KHI KHỞI TẠO NODE
- Disease và SubDisease: viết hoa chữ cái đầu.
- Tất cả node nội dung (Symptom, Cause, Treatment, Detail, Population, Definition, Advice,
  RiskFactor, Prevention, Complication) phải viết THƯỜNG TOÀN BỘ, kể cả chữ cái đầu.
  → CẤM viết hoa chữ cái đầu cho các node nội dung.
- Mọi node và quan hệ phải dùng MERGE.

A. Khởi tạo Disease
1) LUÔN tạo đúng 1 Disease chuẩn:
   MERGE (d:Disease {{name:"{canonical_name}", layer:"Disease"}})
   → KHÔNG được tạo Disease khác tên dù câu văn có biến thể.
   → Nếu xuất hiện “nguyên phát”, “thứ phát”, “thể …”, “nhóm…”, “nhiễm …” → PHẢI tạo SubDisease, KHÔNG được tạo Disease mới.
    + Nếu là viết tắt dạng ACRONYM (HIV, HPV, AIDS…) → GIỮ NGUYÊN HOÀN TOÀN (UPPERCASE 100%).
      → CẤM chuyển thành dạng "Hiv", "Hpv", "Aids".

B. Xác định SubDisease
2) Nếu CHUNK_TITLE khớp một mục trong KNOWN_SUBDISEASES:
   MERGE (sd1:SubDisease {{name:"<tên sub>", layer:"SubDisease"}})
   MERGE (d)-[:HAS_SUBDISEASE]->(sd1)
   FOCUS = sd1

3) Nếu FOCUS_TARGET là tên SubDisease tồn tại:
   sd1 = FOCUS_TARGET → KHÔNG tạo sub mới.

4) Nếu không có sub → toàn bộ nội dung gán cho d.

C. Phân lớp & Quan hệ
5) Các label hợp lệ và layer bắt buộc:
   - Disease       → layer:"Disease"
   - SubDisease    → layer:"SubDisease"
   - Symptom       → layer:"Symptom"
   - Cause         → layer:"Cause"
   - Treatment     → layer:"Treatment"
   - Population    → layer:"Population"
   - Detail        → layer:"Detail"
   - Complication  → layer:"Complication"
   - Definition    → layer:"Definition"
   - RiskFactor    → layer:"RiskFactor"
   - Advice        → layer:"Advice"
   - Prevention    → layer:"Prevention"

6) Quan hệ hợp lệ:
   (d|sd1)-[:HAS_SUBDISEASE]->(:SubDisease)
   (d|sd1)-[:HAS_CAUSE]->(:Cause)
   (d|sd1)-[:HAS_SYMPTOM]->(:Symptom)
   (d|sd1)-[:HAS_TREATMENT]->(:Treatment)
   (d|sd1)-[:AFFECTS]->(:Population)
   (d|sd1)-[:HAS_DETAIL]->(:Detail)
   (d|sd1)-[:HAS_COMPLICATION]->(:Complication)
   (d|sd1)-[:HAS_DEFINITION]->(:Definition)
   (d|sd1)-[:HAS_RISK_FACTOR]->(:RiskFactor)
   (d|sd1)-[:HAS_ADVICE]->(:Advice)
   (d|sd1)-[:HAS_PREVENTION]->(:Prevention)

7) BẮT BUỘC - KẾT NỐI NODE (QUAN TRỌNG NHẤT):
   ⚠️ MỌI NODE NỘI DUNG PHẢI ĐƯỢC NỐI VÀO DISEASE HOẶC SUBDISEASE. KHÔNG CÓ NGOẠI LỆ.
   - Mọi node nội dung phải kết nối trực tiếp vào FOCUS (sd1 nếu có, ngược lại d).
   - KHÔNG được phép tạo node lơ lửng.
   - Mỗi node nội dung PHẢI có đúng 2 dòng liên tiếp:
       MERGE (xN:Label {{name:"...", layer:"Label"}})
       MERGE (FOCUS)-[:HAS_LABEL]->(xN)
   - Nếu tạo node mà KHÔNG có dòng MERGE kết nối → LỖI NGHIÊM TRỌNG.
   - Ví dụ ĐÚNG:
       MERGE (s1:Symptom {{name:"đau bụng", layer:"Symptom"}})
       MERGE (sd1)-[:HAS_SYMPTOM]->(s1)
   - Ví dụ SAI (CẤM):
       MERGE (s1:Symptom {{name:"đau bụng", layer:"Symptom"}})
       (thiếu dòng kết nối → node lơ lửng)

D. Quy tắc phân lớp ngữ nghĩa
8) Definition  → “là gì”, mô tả bản chất.
9) Symptom     → dấu hiệu.
10) Cause      → nguyên nhân, tác nhân.
11) Treatment → CHỈ khi thật sự là điều trị:
      - có hành động điều trị cụ thể: dùng, uống, bôi, đặt, tiêm, phẫu thuật
      - hoặc có tên thuốc/phác đồ cụ thể

    ⚠ Không được phân vào Treatment nếu câu chỉ mô tả:
      - “có thể chữa khỏi bằng kháng sinh”
      - “không thể chữa khỏi”
      - “chỉ điều trị giảm triệu chứng”
      - “không có thuốc đặc hiệu”
    → Những câu này PHẢI phân vào Detail.

12) Population → đối tượng bị ảnh hưởng.
13) Complication → biến chứng.
14) RiskFactor → yếu tố nguy cơ.
15) Advice     → lời khuyên.
16) Prevention → phòng ngừa, tầm soát, sàng lọc, khám định kỳ.
    ⚠ Bất kỳ câu nào chứa:
       - "tầm soát"
       - "sàng lọc"
       - "xét nghiệm pap"
       - "xét nghiệm phát hiện"
       - "không có xét nghiệm phát hiện"
       - "khám vùng chậu"
       - "siêu âm kiểm tra"
       - "siêu âm tầm soát"
       - "xét nghiệm ca125"
       - "khám định kỳ"
    → PHẢI phân vào Prevention (KHÔNG được phân vào Detail).


17.1) Detail → chỉ dùng khi hoàn toàn KHÔNG phân loại được vào các lớp trên.
17.2) Ưu tiên lớp cụ thể nhất → Detail là lựa chọn cuối cùng.

18) Thứ tự ưu tiên khi phân loại:
    Definition > Symptom > Cause > Treatment > Population > RiskFactor
    > Advice > Prevention > Complication > Detail
    (Detail luôn xếp cuối cùng và chỉ dùng khi không thể phân lớp khác.)


E. Chất lượng & Idempotent
19) Không rút gọn name.
20) Bỏ trùng lặp nội dung trong cùng chunk.
21) KHÔNG dùng WITH / RETURN / EXPLAIN.
22) Thứ tự BLOCK output (phải giữ nguyên thứ tự):
   // ===== DISEASE =====
   // ===== SUBDISEASE =====
   // ===== POPULATION =====
   // ===== RISKFACTOR =====
   // ===== ADVICE =====
   // ===== PREVENTION =====
   // ===== CAUSE =====
   // ===== SYMPTOM =====
   // ===== DEFINITION =====
   // ===== COMPLICATION =====
   // ===== DETAIL =====
   // ===== TREATMENT =====

== GỢI Ý (dictionary) ==
(không ép buộc, chỉ định hướng phân lớp)
- Symptom: “triệu chứng”, “biểu hiện”, …
- Cause: “nguyên nhân”, “do”, “bởi”, “gây ra”, “vi khuẩn”, “virus”, …
- Treatment: “điều trị”, “phác đồ”, “thuốc …”, nhưng CHỈ khi là điều trị thực sự.
- Population: “phụ nữ”, “mang thai”, “trẻ em”, …
- Complication: “biến chứng”, “vô sinh”, “sẹo”, …
- Definition: “được định nghĩa là”, …
- Advice: “nên”, “không nên”, “cần tránh”, …
- RiskFactor: “yếu tố nguy cơ”, …
- Prevention: “phòng ngừa”, “tiêm phòng”, …
== QUY TẮC PHÂN LỚP SIÊU CHÍNH XÁC (SUPER LAYER CLASSIFIER) ==

A. PHÂN LỚP DỰA TRÊN NGỮ NGHĨA MẠNH
Luôn xét semantic mạnh nhất trước. Nếu nội dung thuộc lớp trên → KHÔNG được gán xuống dưới:

1) Definition (mạnh nhất)
   - chứa "là", "là gì", "được định nghĩa là"
   - mô tả bản chất bệnh, tình trạng
   - mô tả nhóm bệnh (ví dụ: “STDs là các bệnh lây qua đường tình dục”)

2) Symptom
   - biểu hiện cơ thể, dấu hiệu, cảm giác chủ quan
   - chứa: đau, ngứa, sốt, dịch, khí hư, chảy máu, mệt, buốt

3) Cause
   - yếu tố gây ra bệnh
   - vi khuẩn, virus, nấm, tác nhân, mất cân bằng, thói quen gây bệnh
   - cấu trúc: “do…”, “bởi…”, “nguyên nhân…”

4) Treatment
   - PHẢI là hành động điều trị hoặc thuốc thật sự
   - PHẢI chứa từ khóa điều trị hành động: dùng, uống, bôi, đặt, tiêm, phẫu thuật
   - KHÔNG được coi là Treatment nếu:
       * chỉ mô tả đặc điểm (“có thể chữa khỏi bằng kháng sinh”)
       * không có thuốc hoặc hành động cụ thể
     → các câu này PHẢI là Detail.

5) Population
   - nhóm đối tượng bị ảnh hưởng: phụ nữ, thai nhi, thai kỳ, trẻ em

6) RiskFactor
   - yếu tố nguy cơ: hút thuốc, thụt rửa, nhiều bạn tình, tiền sử bệnh

7) Advice
   - lời khuyên trực tiếp: nên, không nên, cần tránh, cần làm gì

8) Prevention
   - hành vi phòng bệnh: sử dụng bao cao su, tiêm phòng, quan hệ an toàn

9) Complication
   - hậu quả, biến chứng: vô sinh, sảy thai, thai ngoài tử cung

10) Detail (yếu nhất)
   - dùng khi KHÔNG thể phân vào lớp nào trên
   - gồm:
       * giải thích chung
       * mô tả sự thật y khoa không phải phác đồ
       * mô tả tình huống không phải cause/symptom/treatment
       * so sánh (ví dụ: “bệnh do virus không thể chữa khỏi”)

B. LUẬT ƯU TIÊN (PRIORITY)
Nếu nội dung có thể rơi vào nhiều lớp:
→ CẮT LỚP THEO ƯU TIÊN:
   Definition > Symptom > Cause > Treatment > Population > RiskFactor
   > Advice > Prevention > Complication > Detail

C. LUẬT KHÁC BIỆT QUAN TRỌNG
- "có thể chữa khỏi bằng kháng sinh" = Detail (không phải Treatment)
- "không thể chữa khỏi" = Detail
- "chỉ điều trị giảm triệu chứng" = Detail
- “có thể lây sang thai nhi” = Complication
- “ảnh hưởng khi mang thai” → thêm Population “mang thai”
- “hiểu rõ bạn tình, hạn chế bạn tình...” → Prevention
- “nên làm X, không nên Y” → Advice

== QUY TẮC SUBDISEASE CHO CÁC BỆNH TRONG NHÓM DISEASE (SPECIAL GROUP RULE) ==

Nếu canonical_name là một nhóm bệnh (ví dụ: “Bệnh lây truyền qua đường tình dục”, “Nhiễm trùng đường sinh dục”, “Bệnh viêm nhiễm phụ khoa”), 
và nội dung chunk liệt kê tên các bệnh cụ thể trong nhóm này:

    - chlamydia
    - lậu
    - herpes
    - HIV
    - HPV
    - giang mai
    - trùng roi (trichomonas vaginalis)
    - viêm gan siêu vi B
    - ... các bệnh khác

→ PHẢI sinh các node SubDisease, KHÔNG phải Cause.

Ví dụ:
“STDs phổ biến bao gồm chlamydia, lậu, herpes…” 
→ mỗi thực thể = 1 SubDisease node.

KHÔNG được gán các bệnh này vào Cause vì chúng không phải tác nhân gây bệnh, mà là bệnh con thuộc nhóm bệnh chính.

Luôn sinh:

    MERGE (sdX:SubDisease {{name:"<tên bệnh con>", layer:"SubDisease"}})
    MERGE (d)-[:HAS_SUBDISEASE]->(sdX)



23) KHÔNG tách node khi nhiều lựa chọn/đặc điểm/triệu chứng thuộc cùng một câu/cùng một khái niệm.
24) Node Treatment phải gồm toàn bộ câu mô tả phác đồ (nếu thật sự là phác đồ).
    ⚠ “chỉ điều trị giảm triệu chứng” → Detail, KHÔNG phải Treatment.
25) Các node khi MERGE phải đặt tên biến tăng dần (s1, c1, t1, det1, …).
26) Tách node chỉ khi là DANH SÁCH thực thể độc lập (vi khuẩn, virus, nấm…).
27) Nếu câu có nhiều mệnh đề nhưng mô tả cùng một khái niệm → gộp thành 1 node duy nhất.
28) QUY TẮC TÁCH DANH SÁCH (APPLICABLE FOR: Cause, Population, Prevention,
    Advice, Treatment, Detail mô tả nhiều hành vi)

    Khi văn bản chứa nhiều thực thể/hành vi độc lập, được phân tách bởi:
       - dấu phẩy (,)
       - dấu chấm phẩy (;)
       - "và"
       - "hoặc"
       - liệt kê A, B, C
       - cấu trúc "qua A, B, C"
       - cấu trúc "bằng A, B, C"
       - cấu trúc "lây qua A, B, C"

    → PHẢI tách thành nhiều node riêng biệt **nếu và chỉ nếu** mỗi phần biểu thị
      *một thực thể / một hành vi độc lập*.

    Áp dụng cho:
        - Cause        (nhiều tác nhân khác nhau)
        - Population   (nhiều nhóm đối tượng khác nhau)
        - Prevention   (nhiều hành vi phòng ngừa độc lập)
        - Advice       (nhiều lời khuyên độc lập)
        - Treatment    (nhiều hành động điều trị độc lập)
        - Detail       (nhiều hành vi/đường lây độc lập)

    QUY TẮC:
      1) Mỗi thực thể/hành vi độc lập → 1 node duy nhất.
      2) Không tách sâu bên trong một cụm nếu các phần phụ thuộc vào một khái niệm chung.
         Ví dụ:
            "tình dục qua âm đạo, miệng, trực tràng, hoặc dịch cơ thể"
         → nằm trong cùng một khái niệm "tình dục qua …"
           → GIỮ THÀNH 1 NODE.

      3) Tách cấp 1 khi trong câu có nhiều nhóm lớn:
            "lây qua tiếp xúc da, tình dục qua âm đạo, miệng, trực tràng, hoặc dịch cơ thể"
         → tách thành:
             - "lây qua tiếp xúc da"
             - "tình dục qua âm đạo, miệng, trực tràng, hoặc dịch cơ thể"

      4) Với Prevention, Advice, Treatment:
         → mỗi hành vi là 1 node:
            "hiểu rõ bạn tình, hạn chế số lượng bạn tình; 
             sử dụng bao cao su; tránh hành vi nguy hiểm"
            →
             - "hiểu rõ bạn tình"
             - "hạn chế số lượng bạn tình"
             - "sử dụng bao cao su"
             - "tránh hành vi nguy hiểm"

      5) CẤM:
         - gộp nhiều hành vi vào 1 node
         - tách vô lý thành các phần không mang nghĩa độc lập
         - làm mất ngữ nghĩa hoặc phá vỡ cấu trúc chung của cụm chính

    Mục tiêu: mỗi node phải đại diện cho *một đơn vị ý nghĩa độc lập*, không tách sâu hơn mức cần thiết.
29) Mỗi node khi MERGE PHẢI có biến duy nhất với hậu tố số tăng dần:
   - Symptom → s1, s2, s3, s4, s5, s6, s7, s8, s9, s10
   - Cause → c1, c2, c3, c4, c5, c6, c7, c8
   - Treatment → t1, t2, t3, t4, t5, t6
   - Population → p1, p2, p3, p4, p5, p6
   - RiskFactor → rf1, rf2, rf3, rf4, rf5, rf6
   - Advice → a1, a2, a3, a4, a5, a6
   - Prevention → pr1, pr2, pr3, pr4, pr5
   - Definition → def1, def2…
   - Detail → det1, det2, det3, det4, det5
   - Complication → comp1, comp2, comp3, comp4, comp5, comp6, comp7, comp8, comp9, comp10
CẤM tái sử dụng cùng một biến cho nhiều node. 
⚠️ BẮT BUỘC: Mỗi node PHẢI có dòng kết nối ngay sau khi tạo.
Ví dụ ĐÚNG (3 dòng cho 1 node):
MERGE (d:Disease {{name:"Ung thư buồng trứng", layer:"Disease"}})
MERGE (det1:Detail {{name:"đánh giá di căn: kiểm tra hình ảnh (nội soi đại tràng, ct scan, mri, x-quang ngực)", layer:"Detail"}})
MERGE (d)-[:HAS_DETAIL]->(det1)


30) Nếu nhiều mệnh đề mô tả các hành vi hoặc tác động thuộc CÙNG MỘT NHÓM LÝ LUẬN 
   (ví dụ: tất cả đều là thay đổi lối sống để phòng ngừa bệnh)
   → PHẢI gộp thành 1 node Prevention duy nhất.

31) CHỈ tách node khi:
    - các hành vi hoàn toàn độc lập
    - KHÔNG phải hệ quả của nhau
    - KHÔNG nằm trong cùng 1 nhóm (ví dụ: “ăn uống lành mạnh”, “tập thể dục”, “giảm cân” → cùng nhóm → KHÔNG tách).


⚠️⚠️⚠️ QUAN TRỌNG KHI TẠO NODE - KHÔNG ĐƯỢC ĐỂ NODE LƠ LỬNG ⚠️⚠️⚠️

CẤM TUYỆT ĐỐI tạo node mà không nối vào Disease/SubDisease:

❌ SAI (CẤM):
MERGE (s5:Symptom {{name:"bất kỳ triệu chứng của bệnh tiểu đường loại 1", layer:"Symptom"}})
MERGE (s6:Symptom {{name:"vết loét lâu lành", layer:"Symptom"}})
MERGE (s7:Symptom {{name:"khô, ngứa da", layer:"Symptom"}})
MERGE (s8:Symptom {{name:"mất cảm giác hoặc ngứa ran ở bàn chân", layer:"Symptom"}})
MERGE (s9:Symptom {{name:"nhiễm trùng, chẳng hạn như nhiễm nấm tái đi tái lại", layer:"Symptom"}})

✅ ĐÚNG (BẮT BUỘC):
MERGE (sd1:SubDisease {{name:"Tiểu đường loại 1", layer:"SubDisease"}})
MERGE (d)-[:HAS_SUBDISEASE]->(sd1)
MERGE (s5:Symptom {{name:"bất kỳ triệu chứng của bệnh tiểu đường loại 1", layer:"Symptom"}})
MERGE (sd1)-[:HAS_SYMPTOM]->(s5)
MERGE (s6:Symptom {{name:"vết loét lâu lành", layer:"Symptom"}})
MERGE (sd1)-[:HAS_SYMPTOM]->(s6)
MERGE (s7:Symptom {{name:"khô, ngứa da", layer:"Symptom"}})
MERGE (sd1)-[:HAS_SYMPTOM]->(s7)
MERGE (s8:Symptom {{name:"mất cảm giác hoặc ngứa ran ở bàn chân", layer:"Symptom"}})
MERGE (sd1)-[:HAS_SYMPTOM]->(s8)
MERGE (s9:Symptom {{name:"nhiễm trùng, chẳng hạn như nhiễm nấm tái đi tái lại", layer:"Symptom"}})
MERGE (sd1)-[:HAS_SYMPTOM]->(s9)

QUY TẮC VÀNG: Mỗi node nội dung = 2 dòng: 1 dòng MERGE node, 1 dòng MERGE quan hệ.
==
NHIỆM VỤ: Sinh Cypher tuân thủ tuyệt đối toàn bộ quy tắc trên.
==


"""


# =========================
# Helpers
# =========================


STD_SUBS = [
    r'\bchlamydia\b',
    r'\bhiv\b',
    r'\blậu\b',
    r'\bherpes\b',
    r'\bhpv\b',
    r'\bsùi\s+mào\s+gà\b',
    r'\btrichomoniasis\b',
    r'\btiểu\s+đường\s+loại\s*1\b',
    r'\bsarcoma\b',
    r'\bung\s+thư\s+nội\s+mạc\s+tử\s+cung\b',
    r'\bviêm\s+âm\s+đạo\s+do\s+trùng\s+roi\b',
    r'\bviêm\s+âm\s+đạo\s+không\s+nhiễm\s+trùng\b',
    r'\bviêm\s+âm\s+đạo\s+do\s+trichomonas\b',
    r'\bviêm\s+âm\s+đạo\s+do\s+nấm\s+candida\b',
    # 👇 thêm mới cho tuyến vú
    r'\bxơ\s+nang\s+tuyến\s+vú\b',
    r'\bu\s+nang\s+tuyến\s+vú\b',
    r'\bbướu\s+sợi\s+tuyến\b',
    r'\bviêm\s+tuyến\s+vú\b',
    r'\btăng\s+sinh\s+nội\s+mạc\s+tử\s+cung\s+đơn\s+thuần\b',
    r'\btăng\s+sinh\s+nội\s+mạc\s+tử\s+cung\s+phức\s+tạp\b',
    r'\btăng\s+sinh\s+không\s+điển\s+hình\s+đơn\s+thuần\b',
    r'\btăng\s+sinh\s+không\s+điển\s+hình\s+phức\s+tạp\b',
    r'\bxơ\s+gan\b',
]




SUB_PATTERNS = [
    re.compile(r'\bnguyên\s+phát\b', re.IGNORECASE),
    re.compile(r'\bthứ\s+phát\b', re.IGNORECASE),
    re.compile(r'\btiên\s+phát\b', re.IGNORECASE),
    re.compile(r'\bthứ\s+cấp\b', re.IGNORECASE),
    re.compile(r'^\s*thể\s+\S+', re.IGNORECASE),
    re.compile(r'^\s*chứng\s+\S+', re.IGNORECASE),
    re.compile(r'^\s*do\s+\S+', re.IGNORECASE),
    re.compile(r'^\s*không\s+nhiễm\s+trùng\b', re.IGNORECASE),
    re.compile(r'\bloại\s+[0-9]+\b', re.IGNORECASE),     
    re.compile(r'\bcấp\s+tính\b', re.IGNORECASE),
    re.compile(r'\bm[aã]n\s+tính\b', re.IGNORECASE),
    re.compile(r'\btoàn\s+bộ\b', re.IGNORECASE),         
    re.compile(r'\bkhu\s+trú\b', re.IGNORECASE),         # 👈 Đau âm hộ mãn tính khu trú
    re.compile(r'^\s*có\s+[0-9]+\s+loại', re.IGNORECASE),# 👈 “Có 4 loại như sau...”
    *[re.compile(pat, re.IGNORECASE) for pat in STD_SUBS]
]






ALLOWED_REL_TYPES = {
    "HAS_SUBDISEASE", "HAS_CAUSE", "HAS_SYMPTOM",
    "HAS_TREATMENT", "AFFECTS", "HAS_DETAIL",
    "HAS_COMPLICATION", "HAS_DEFINITION",
    "HAS_RISK_FACTOR", "HAS_ADVICE", "HAS_PREVENTION"
}
ALLOWED_NODE_LABELS = {
    "Disease", "SubDisease", "Symptom", "Cause",
    "Treatment", "Population", "Detail",
    "Complication", "Definition",
    "RiskFactor", "Advice", "Prevention"
}

MERGE_LINE = re.compile(r'^\s*MERGE\b', re.IGNORECASE)
ELLIPSIS_PAT = re.compile(r'(?:\.\.\.|…)\s*$')

def looks_like_subdisease(title: str, canonical_disease: str) -> bool:
    if not isinstance(title, str) or not title.strip():
        return False
    if canonical_disease and title.strip().lower() == canonical_disease.strip().lower():
        return False

    # ép cứng: nếu disease gốc là "Viêm âm đạo" hoặc "Bệnh lây truyền qua đường tình dục"
    if canonical_disease.lower() in ["viêm âm đạo", "bệnh lây truyền qua đường tình dục"]:
        if any(re.search(pat, title, re.IGNORECASE) for pat in STD_SUBS):
            return True

    # fallback: các pattern chung
    return any(p.search(title) for p in SUB_PATTERNS)


def canonicalize_root_name(name: str) -> str:
    if not isinstance(name, str) or not name.strip(): return ""
    return name.split("(")[0].strip() or name.strip()

def is_new_primary_disease(chunk_title: str, current_disease: str) -> bool:
    if not isinstance(chunk_title, str) or not chunk_title.strip(): return False
    cand = canonicalize_root_name(chunk_title)
    if not cand or looks_like_subdisease(chunk_title, current_disease): return False
    return cand.lower() != (current_disease or "").lower()

def decide_focus(chunk_title: str,
                 known_subs_for_current: list[str],
                 last_focus_for_current: str,
                 current_disease: str) -> str:
    if isinstance(chunk_title, str) and chunk_title.strip():
        t = chunk_title.strip()
        if t.lower() == (current_disease or "").strip().lower():
            return "Disease"
        if t in known_subs_for_current:
            return t
        if looks_like_subdisease(t, current_disease):
            return t
    if last_focus_for_current != "Disease":
        return last_focus_for_current
    return "Disease"

def cleanup_comments(cypher: str) -> str:
    lines = cypher.splitlines()
    out = []
    for ln in lines:
        s = ln.strip()
        if s.startswith("```") or s.startswith("#"):
            continue
        out.append(ln)
    return "\n".join(out).strip()

def ensure_disease_block(cypher: str, canonical_name: str) -> str:
    if re.search(r'\(d\s*:\s*Disease\s*\{', cypher, flags=re.IGNORECASE):
        return cypher
    prefix = f'// ===== DISEASE =====\nMERGE (d:Disease {{name:"{canonical_name}", layer:"Disease"}})\n'
    return prefix + ("" if cypher.startswith("\n") else "\n") + cypher

def normalize_sd1_when_same_as_disease(cypher: str, canonical_name: str, focus_is_disease: bool) -> str:
    if not focus_is_disease:
        return cypher
    pat_sd = rf'MERGE\s*\(\s*sd1\s*:\s*SubDisease\s*\{{\s*name\s*:\s*"{re.escape(canonical_name)}"\s*,\s*layer\s*:\s*"SubDisease"\s*\}}\s*\)'
    if not re.search(pat_sd, cypher, flags=re.IGNORECASE):
        return cypher
    cypher = re.sub(r'MERGE\s*\(\s*d\s*\)\s*-\s*\[:\s*HAS_SUBDISEASE\s*\]\s*->\s*\(\s*sd1\s*\)\s*',
                    '', cypher, flags=re.IGNORECASE)
    cypher = re.sub(r'MERGE\s*\(\s*sd1\s*\)\s*-\s*\[:\s*([A-Z_]+)\s*\]\s*->\s*\(',
                    r'MERGE (d)-[:\1]->(', cypher, flags=re.IGNORECASE)
    cypher = re.sub(pat_sd, '', cypher, flags=re.IGNORECASE)
    return cypher

def sanitize_output(cypher: str, canonical_name: str, focus_sub: str | None) -> str:
    out = re.sub(
        r'MERGE\s*\(\s*d\s*:\s*Disease\s*\{\s*name\s*:\s*"[^"]+"\s*,\s*layer\s*:\s*"Disease"\s*\}\s*\)',
        f'MERGE (d:Disease {{name:"{canonical_name}", layer:"Disease"}})',
        cypher, flags=re.IGNORECASE
    )
    if focus_sub:
        if f'name:"{focus_sub}", layer:"SubDisease"' not in out:
            out = out.replace(
                '// ===== SUBDISEASE =====',
                f'// ===== SUBDISEASE =====\nMERGE (sd1:SubDisease {{name:"{focus_sub}", layer:"SubDisease"}})\nMERGE (d)-[:HAS_SUBDISEASE]->(sd1)'
            )
        out = re.sub(
            r'MERGE\s*\(\s*d\s*\)\s*-\s*\[:\s*(HAS_SYMPTOM|HAS_CAUSE|HAS_TREATMENT|AFFECTS|HAS_DETAIL|HAS_COMPLICATION|HAS_DEFINITION|HAS_RISK_FACTOR|HAS_ADVICE|HAS_PREVENTION)\s*\]\s*->\s*\(',
            r'MERGE (sd1)-[:\1]->(', out, flags=re.IGNORECASE
        )
    return out.strip()

def drop_incomplete_names(cypher: str) -> str:
    out_lines = []
    node_name_pat = re.compile(r'\{[^{}]*name\s*:\s*"([^"]+)"[^{}]*\}')
    for ln in cypher.splitlines():
        if not ln.strip().startswith("MERGE"):
            out_lines.append(ln); continue
        m = node_name_pat.search(ln)
        if not m:
            out_lines.append(ln); continue
        name = m.group(1).strip()
        if len(name) <= 2:
            continue
        if ELLIPSIS_PAT.search(name) or name.endswith(".."):
            continue
        out_lines.append(ln)
    return "\n".join(out_lines)

def filter_allowed_labels_and_edges(cypher: str) -> str:
    lines = [ln for ln in cypher.splitlines() if ln.strip()]
    kept = []
    node_pat = re.compile(r'MERGE\s*\(\s*[a-zA-Z]\w*\s*:\s*([A-Za-z]+)\s*\{', re.IGNORECASE)
    rel_pat  = re.compile(r'MERGE\s*\(\s*(d|sd1)\s*\)\s*-\s*\[:\s*([A-Z_]+)\s*\]\s*->\s*\(', re.IGNORECASE)
    for ln in lines:
        s = ln.strip()
        if not s.startswith("MERGE"):
            kept.append(ln); continue
        rm = rel_pat.match(s)
        if rm:
            rtype = rm.group(2).upper()
            if rtype in ALLOWED_REL_TYPES:
                kept.append(ln)
            continue
        nm = node_pat.match(s)
        if nm:
            label = nm.group(1)
            if label in ALLOWED_NODE_LABELS:
                kept.append(ln)
            continue
    return "\n".join(kept)

def normalize_name(text: str, layer: str) -> str:
    if not isinstance(text, str) or not text.strip():
        return text
    text = text.strip()
    if layer in ["Disease", "SubDisease"]:
        # Viết hoa chữ cái đầu, giữ nguyên phần còn lại
        return text[0].upper() + text[1:]
    else:
        return text.lower()


def enforce_name_case(cypher: str) -> str:
    pat = re.compile(r'(\{[^{}]*name\s*:\s*")([^"]+)(".*?\})')
    def repl(m):
        prefix, name, suffix = m.groups()
        # Xác định layer
        if "layer:\"Disease\"" in m.group(0):
            fixed = normalize_name(name, "Disease")
        elif "layer:\"SubDisease\"" in m.group(0):
            fixed = normalize_name(name, "SubDisease")
        else:
            fixed = normalize_name(name, "Other")
        return prefix + fixed + suffix
    return pat.sub(repl, cypher)

def ensure_node_declarations(cypher: str) -> str:
    declared_vars = set()
    out_lines = []
    node_pat = re.compile(r'MERGE\s*\(\s*([a-zA-Z]\w*)\s*:\s*([A-Za-z]+)\s*\{')
    rel_pat  = re.compile(r'MERGE\s*\(\s*(d|sd1)\s*\)\s*-\s*\[:\s*([A-Z_]+)\s*\]\s*->\s*\(\s*([a-zA-Z]\w*)\s*\)')
    for ln in cypher.splitlines():
        nm = node_pat.match(ln.strip())
        if nm:
            declared_vars.add(nm.group(1))
            out_lines.append(ln)
            continue
        rm = rel_pat.match(ln.strip())
        if rm:
            target_var = rm.group(3)
            if target_var in declared_vars:
                out_lines.append(ln)
            else:
                # bỏ quan hệ vì node chưa được khai báo
                continue
        else:
            out_lines.append(ln)
    return "\n".join(out_lines)


# =========================
# LLM call
# =========================
@retry(wait=wait_random_exponential(min=2, max=30), stop=stop_after_attempt(5))
def generate_cypher(canonical_name: str,
                    known_subdiseases: list[str],
                    focus_target: str,
                    chunk_id: int | str,
                    chunk_title: str,
                    chunk_text: str) -> str:
    title_safe = (chunk_title or "").replace("{", "{{").replace("}", "}}").replace('"', '\\"')
    text_safe  = (chunk_text or "").replace("{", "{{").replace("}", "}}")
    system_prompt = SYSTEM_PROMPT_TMPL.format(
        canonical_name=canonical_name,
        known_subdiseases=known_subdiseases,
        focus_target=focus_target,
        chunk_id=chunk_id,
        chunk_title=title_safe,
        chunk_text=text_safe
    )
    user_prompt = "Sinh mã Cypher theo đúng các quy tắc trên. Chỉ in Cypher."
    resp = client.chat.completions.create(
        model=MODEL,
        messages=[{"role": "system", "content": system_prompt},
                  {"role": "user",   "content": user_prompt}],
        temperature=0.2,
        max_tokens=2200,
    )
    return resp.choices[0].message.content or ""

# =========================
# Neo4j & logging helpers
# =========================
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
def main():
    if os.path.exists(OUTPUT_CYPHER_FILE):
        os.remove(OUTPUT_CYPHER_FILE)

    driver = GraphDatabase.driver(NEO4J_URI, auth=(NEO4J_USER, NEO4J_PASSWORD))

    df = pd.read_csv(CSV_PATH)
    expected = {"article_id", "chunk_id", "root_name", "chunk_text"}
    missing = expected - set(df.columns)
    if missing:
        raise ValueError(f"CSV thiếu cột: {missing}")

    # ✅ Ép article_id và chunk_id về số nguyên để sort chính xác
    df["article_id"] = pd.to_numeric(df["article_id"], errors="coerce")
    df["chunk_id"]   = pd.to_numeric(df["chunk_id"], errors="coerce")
    df = df.dropna(subset=["article_id", "chunk_id"])
    df["article_id"] = df["article_id"].astype(int)
    df["chunk_id"]   = df["chunk_id"].astype(int)

    # ✅ Sort đúng thứ tự
    df = df.sort_values(["article_id", "chunk_id"]).reset_index(drop=True)

    # Debug: in ra chunk_id để kiểm tra
    for aid, g in df.groupby("article_id"):
        print(f"📑 Article {aid} có chunk_id:", list(g["chunk_id"]))

    for article_id, group in df.groupby("article_id", sort=True):
        group = group.sort_values("chunk_id")

        current_disease = None
        known_subs_map: dict[str, list[str]] = {}
        last_focus_map: dict[str, str] = {}

        for _, row in group.iterrows():
            chunk_id    = int(row["chunk_id"])
            chunk_title = str(row["root_name"]) if pd.notna(row["root_name"]) else ""
            chunk_text  = str(row["chunk_text"]) if pd.notna(row["chunk_text"]) else ""

            cand_name = canonicalize_root_name(chunk_title)

            # ✅ Nếu gặp Disease mới (khác với current_disease và không phải SubDisease) → reset context
            if not current_disease or (cand_name and cand_name.lower() != current_disease.lower() and not looks_like_subdisease(chunk_title, current_disease)):
                current_disease = cand_name
                known_subs_map = {current_disease: []}
                last_focus_map = {current_disease: "Disease"}

            # ✅ Nếu là SubDisease thì thêm vào danh sách
            if looks_like_subdisease(chunk_title, current_disease) and chunk_title not in known_subs_map[current_disease]:
                known_subs_map[current_disease].append(chunk_title)

            # Focus target
            focus_target = decide_focus(
                chunk_title,
                known_subs_map[current_disease],
                last_focus_map[current_disease],
                current_disease
            )

            print(f"\n📘 Article {article_id} | Chunk {chunk_id} | Title: {chunk_title} | DiseaseCTX: {current_disease} | Focus: {focus_target}")

            try:
                raw = generate_cypher(
                    canonical_name=current_disease,
                    known_subdiseases=known_subs_map[current_disease],
                    focus_target=focus_target,
                    chunk_id=chunk_id,
                    chunk_title=chunk_title,
                    chunk_text=chunk_text
                )

                cypher = cleanup_comments(raw)
                cypher = ensure_disease_block(cypher, current_disease)
                cypher = normalize_sd1_when_same_as_disease(
                    cypher, canonical_name=current_disease,
                    focus_is_disease=(focus_target == "Disease")
                )
                cypher = sanitize_output(
                    cypher, canonical_name=current_disease,
                    focus_sub=(focus_target if focus_target != "Disease" else None)
                )
                cypher = drop_incomplete_names(cypher)
                cypher = filter_allowed_labels_and_edges(cypher)
                cypher = enforce_name_case(cypher)
                cypher = ensure_node_declarations(cypher)  

                print("——— Cypher ———")
                print(cypher)
                print("———————")

                append_to_log(article_id, chunk_id, chunk_title, cypher)
                push_to_neo4j(driver, cypher)
                print("✅ Đã đẩy vào Neo4j & lưu log.")

                last_focus_map[current_disease] = focus_target

            except Exception as e:
                print(f"❌ Lỗi xử lý Article {article_id} | Chunk {chunk_id}: {e}")
                traceback.print_exc()

    driver.close()
    print(f"\n🎉 Xong. Log: {OUTPUT_CYPHER_FILE}")


if __name__ == "__main__":
    main()
