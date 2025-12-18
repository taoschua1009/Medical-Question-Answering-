import os
from neo4j import GraphDatabase, basic_auth
from dotenv import load_dotenv

# Load .env
load_dotenv()

URI = os.getenv("NEO4J_URI")
USER = os.getenv("NEO4J_USER")
PASSWORD = os.getenv("NEO4J_PASSWORD")


# FILE_PATH = "./data_kg/csv/topic1"
# FILE_PATH = "./data_kg/csv/topic2"
# FILE_PATH = "./data_kg/csv/topic3"
# FILE_PATH = "./data_kg/cypher/disease_subdisease1"
# FILE_PATH = "./data_kg/cypher/disease_subdisease2"
# FILE_PATH = "./data_kg/cypher/loc_disease"
FILE_PATH = "./data_kg/cypher/topic_2node.cypher"



driver = GraphDatabase.driver(URI, auth=basic_auth(USER, PASSWORD))


def is_valid_cypher(line: str):
    """Return True if line is a valid Cypher statement."""
    valid_starts = ("MERGE", "MATCH", "CREATE", "SET", "WITH", "CALL")
    s = line.strip()

    if s == "":
        return False
    if s.startswith("//"):               # comment
        return False
    if s.startswith("===="):             # ===== header
        return False
    if s.startswith("Article"):          # Article X | Chunk Y | ...
        return False

    # Only keep actual cypher statements
    return s.startswith(valid_starts)


def run_cypher_file_by_block(path):
    print(f"Running file by block: {path}")

    with open(path, "r", encoding="utf-8") as f:
        content = f.read()

    # tách theo // =====
    raw_blocks = content.split("// =====")

    for raw in raw_blocks:
        lines = raw.split("\n")

        # giữ lại chỉ các dòng cypher hợp lệ
        cypher_lines = [line.strip() for line in lines if is_valid_cypher(line)]

        if not cypher_lines:
            continue

        block_query = "\n".join(cypher_lines)

        print("\n===== RUN BLOCK =====")
        print(block_query[:200], "...")

        with driver.session() as session:
            session.run(block_query)

    print("✅ DONE — All blocks executed successfully")


if __name__ == "__main__":
    run_cypher_file_by_block(FILE_PATH)
