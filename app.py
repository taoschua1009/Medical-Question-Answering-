from Gating.loader import load_gating
from smoe_core import smoe
from Experts.loader import preload_all_experts
def main():
    enc, gate, id2label = load_gating()

    while True:
        q = input("❓ ").strip()
        if q.lower() in ("exit", "quit"):
            break
        if not q:
            continue

        result = smoe(q, enc, gate, id2label)

        rows = result.get("neo4j", [])
        if not rows:
            print("Không tìm thấy thông tin.")
            continue

        # Lấy key động (definition / treatment / symptom / ...)
        key = list(rows[0].keys())[0]

        # In từng câu trả lời
        for row in rows:
            value = row.get(key)
            if value:
                print(value)
        print(f"\n⏱ Thời gian xử lý: {result['latency_ms']} ms\n")        
@st.cache_resource
def startup():
    preload_all_experts(EXPERT_NAMES)

startup()

if __name__ == "__main__":
    main()
