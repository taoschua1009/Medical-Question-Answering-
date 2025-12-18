import os
import torch
from dotenv import load_dotenv, find_dotenv

DEVICE = "cuda" if torch.cuda.is_available() else "cpu"
DEBUG = True

# Paths
GATING_DIR = "Gating"
GATING_META = os.path.join(GATING_DIR, "gating_meta.pt")
GATING_STATE = os.path.join(GATING_DIR, "gating_mlp.pt")

EXPERT_ROOT = "Experts"
ANCHOR_FILE = "all_node/anchors.csv"
CONTEXT_FILE = "all_node/contexts.csv"
ENCODER_MODEL = "google/embeddinggemma-300m"
# Load env
load_dotenv(find_dotenv())

def env_bool(key, default=False):
    v = os.getenv(key)
    if v is None:
        return default
    return v.lower() in ("1", "true", "yes")

ENABLE_NEO4J = env_bool("ENABLE_NEO4J", False)
NEO4J_URI = os.getenv("NEO4J_URI")
NEO4J_USER = os.getenv("NEO4J_USER")
NEO4J_PASS = os.getenv("NEO4J_PASS") or os.getenv("NEO4J_PASSWORD")
