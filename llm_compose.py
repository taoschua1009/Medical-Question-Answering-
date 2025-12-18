from openai import OpenAI
import os

client = OpenAI(
    api_key=os.getenv("OPENAI_API_KEY")  # hoặc AZURE/OpenRouter
)

def compose_answer(question: str, facts: list[str]) -> str:
    """
    facts: list các câu ngắn lấy từ Neo4j
    """
    if not facts:
        return "Hiện chưa có đủ thông tin trong cơ sở tri thức để trả lời câu hỏi này."

    context = "\n".join(f"- {f}" for f in facts)

    prompt = f"""
Bạn là trợ lý y khoa.
Dựa CHỈ trên thông tin sau, hãy trả lời câu hỏi một cách rõ ràng, mạch lạc,
không bịa thêm thông tin, không suy đoán ngoài dữ liệu.

CÂU HỎI:
{question}

THÔNG TIN TRUY XUẤT TỪ KNOWLEDGE GRAPH:
{context}

YÊU CẦU:
- Viết thành 1 đoạn văn hoàn chỉnh
- Giữ văn phong y khoa, dễ hiểu
- Không liệt kê gạch đầu dòng
"""

    resp = client.chat.completions.create(
        model="gpt-4o-mini",  # hoặc model bạn đang dùng
        messages=[{"role": "user", "content": prompt}],
        temperature=0.2,
    )

    return resp.choices[0].message.content.strip()
