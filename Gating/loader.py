from functools import lru_cache
import torch
from sentence_transformers import SentenceTransformer
from config import DEVICE, GATING_META, GATING_STATE
from .model import GatingMLP

def encode_texts(encoder, texts):
    if isinstance(texts, str):
        texts = [texts]
    emb = encoder.encode(texts, convert_to_tensor=True, device=DEVICE)
    return emb.detach().clone()

@lru_cache(maxsize=1)
def load_gating():
    meta = torch.load(GATING_META, map_location=DEVICE)

    encoder = SentenceTransformer(meta["model_name"]).to(DEVICE).eval()
    gating = GatingMLP(meta["input_dim"], meta["num_classes"]).to(DEVICE)
    gating.load_state_dict(torch.load(GATING_STATE, map_location=DEVICE))
    gating.eval()

    _ = encode_texts(encoder, ["warmup"])
    return encoder, gating, meta["id2label"]
