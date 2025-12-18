# Experts/runner.py

import time
import torch
from data.anchors import ANCHORS, ANCHOR_LAYERS, CONTEXTS
from data_kg.cypher import EXPERT_QUERY
from data_kg.neo4j import Neo4jClient
from .loader import load_expert

# ✅ SINGLE NEO4J ENTRY POINT
neo4j = Neo4jClient.instance()


def run_single_expert(name, question):
    t_total0 = time.perf_counter()

    # 1) LOAD EXPERT
    exp = load_expert(name)

    # 2) ENCODE QUESTION
    with torch.no_grad():
        q_a, q_c, q_h = exp["encode"]([question])

    # 3) ANCHOR MATCHING
    sim_a = torch.matmul(exp["a"], q_a.T).squeeze(1)
    idx = int(torch.argmax(sim_a))
    anchor = ANCHORS[idx]
    anchor_layer = ANCHOR_LAYERS[idx]

    # 4) CONTEXT MATCHING
    context = None
    has_ctx = torch.sigmoid(q_h).item()
    if exp["c"] is not None and has_ctx > 0.3:
        sim_c = torch.matmul(exp["c"], q_c.T).squeeze(1)
        ctx_idx = int(torch.argmax(sim_c))
        context = CONTEXTS[ctx_idx]

    # 5) CYPHER
    tpl = EXPERT_QUERY.get(name)
    if tpl is None:
        raise ValueError(f"No Cypher template for expert '{name}'")

    cypher = (
        tpl["with_ctx"] % (anchor, context)
        if context
        else tpl["no_ctx"] % anchor
    )

    # 6) NEO4J QUERY (🔥 DUY NHẤT)
    rows = neo4j.run(cypher)

    latency_s = round(time.perf_counter() - t_total0, 4)

    return {
        "expert": name,
        "anchor": anchor,
        "anchor_layer": anchor_layer,
        "context": context,
        "cypher": cypher,
        "neo4j": rows,
        "latency_s": latency_s,
    }
