# ================================
# 📌 STREAMLIT UI FOR SMoE v3.0
# ================================
import streamlit as st
import traceback
from time import perf_counter as timer
from smoe import smoe_query, test_neo4j_connection, DEBUG   # <-- import từ smoe.py

st.set_page_config(page_title="SMoE Medical QA", layout="wide")

# =======================
# 🔧 Header Debug + Tools
# =======================
colA, colB, colC = st.columns([1,1,2])

with colA:
    if st.button("🔌 Test Neo4j"):
        ok, ms, err = test_neo4j_connection()
        if ok:
            st.success(f"Neo4j OK — {ms:.3f}s")
        else:
            st.error(f"Neo4j lỗi: {err}")

with colB:
    st.write(f"DEBUG: {'✅' if DEBUG else '❌'}")
    if st.button("♻️ Clear caches"):
        st.cache_resource.clear()
        st.cache_data.clear()
        st.success("Đã xoá cache. Bấm Rerun.")

with colC:
    with st.expander("🔎 Env / Driver"):
        from smoe import NEO4J_URI, NEO4J_USER, NEO4J_PASS
        st.write(f"- NEO4J_URI: {'✅' if NEO4J_URI else '❌'}")
        st.write(f"- NEO4J_USER: {'✅' if NEO4J_USER else '❌'}")
        st.write(f"- NEO4J_PASSWORD: {'✅' if NEO4J_PASS else '❌'}")

st.markdown("---")

# =======================
# 🔍 Session-state
# =======================
if "last_answer" not in st.session_state: st.session_state.last_answer = None
if "last_probs"  not in st.session_state: st.session_state.last_probs = {}
if "last_time"   not in st.session_state: st.session_state.last_time = 0.0

# =======================
# 🧠 User Question Input
# =======================
user_input = st.text_input("Nhập câu hỏi:", placeholder="VD: Triệu chứng của viêm âm đạo?")

if user_input:
    try:
        start = timer()
        ans, cypher, rows, probs = smoe_query(user_input)
        dur = timer() - start

        st.session_state.last_answer = ans
        st.session_state.last_probs  = probs
        st.session_state.last_time   = dur

        st.success("✅ Xong!")

        if DEBUG:
            with st.expander("🔧 Cypher đã chạy"):
                st.code(cypher, language="cypher")
                st.json(rows)

    except Exception as e:
        st.error(f"Failed: {e}")
        if DEBUG:
            st.code(traceback.format_exc(), language="text")

st.markdown("---")

# =======================
# 📊 MoE Probabilities
# =======================
st.subheader("📊 MoE Probabilities")
st.json(st.session_state.last_probs)

# =======================
# 🧠 Final Answer
# =======================
st.subheader("🧠 Trả lời")
if st.session_state.last_time:
    st.caption(f"⏱️ {st.session_state.last_time:.3f}s")

st.markdown(st.session_state.last_answer or "_(Chưa có dữ liệu)_")
