import torch
from Gating.loader import encode_texts
from Experts.runner import run_single_expert

def smoe(question, enc, gate, id2label):
    emb = encode_texts(enc, [question])
    probs = torch.sigmoid(gate(emb)).squeeze(0)
    expert = id2label[int(torch.argmax(probs))]
    return run_single_expert(expert, question)
