import streamlit as st
from engine import SMoEEngine

# -----------------------------
# Page config
# -----------------------------
st.set_page_config(
    page_title="Medical QA (SMoE)",
    page_icon="🧠",
    layout="centered",
)

st.title("🧠 Medical Question Answering")
st.caption("Powered by SMoE + Knowledge Graph")

# -----------------------------
# Load engine (cache)
# -----------------------------
@st.cache_resource
def load_engine():
    return SMoEEngine()

engine = load_engine()

# -----------------------------
# Input
# -----------------------------
question = st.text_input(
    "❓ Nhập câu hỏi y khoa:",
    placeholder="Ví dụ: HIV trong thai kỳ là gì?",
)

# -----------------------------
# Answer
# -----------------------------
if question:
    with st.spinner("Đang suy luận..."):
        result = engine.answer(question)
    st.success("✅ System ready!")
    rows = result.get("neo4j", [])

    if not rows:
        st.warning("Không tìm thấy thông tin phù hợp.")
    else:
        key = list(rows[0].keys())[0]

        st.subheader("📌 Answer")
        for row in rows:
            val = row.get(key)
            if val:
                st.markdown(f"- {val}")
                
        st.caption(f"⏱ Time processing: {result['latency_s']} s")

# -----------------------------
# Debug (optional)
# -----------------------------
with st.expander("⚙️ Debug"):
    if question:
        st.json(result)
