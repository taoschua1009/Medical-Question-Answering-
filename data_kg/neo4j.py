from neo4j import GraphDatabase
from config import ENABLE_NEO4J, NEO4J_URI, NEO4J_USER, NEO4J_PASS

class Neo4jClient:
    _instance = None

    def __init__(self):
        self.driver = GraphDatabase.driver(
            NEO4J_URI,
            auth=(NEO4J_USER, NEO4J_PASS),
            max_connection_pool_size=10,
            connection_timeout=5,
        )

    @classmethod
    def instance(cls):
        if cls._instance is None:
            cls._instance = cls()
        return cls._instance

    def run(self, query: str, params: dict | None = None):
        if not ENABLE_NEO4J:
            return None
        with self.driver.session() as session:
            return session.run(query, params).data()


# ✅ WRAPPER — ĐÂY LÀ CHÌA KHÓA
def run_neo4j(query: str, params: dict | None = None):
    return Neo4jClient.instance().run(query, params)


# from neo4j import GraphDatabase
# from config import ENABLE_NEO4J, NEO4J_URI, NEO4J_USER, NEO4J_PASS

# class Neo4jClient:
#     _instance = None

#     def __init__(self):
#         self.driver = GraphDatabase.driver(
#             NEO4J_URI,
#             auth=(NEO4J_USER, NEO4J_PASS),
#             max_connection_pool_size=10,
#             connection_timeout=5,
#         )

#     @classmethod
#     def instance(cls):
#         if cls._instance is None:
#             cls._instance = cls()
#         return cls._instance

#     def run(self, query: str, params: dict | None = None):
#         if not ENABLE_NEO4J:
#             return None
#         with self.driver.session() as session:
#             return session.run(query, params).data()
        
#     def run_neo4j(query: str, params: dict | None = None):
#         return Neo4jClient.instance().run(query, params)

