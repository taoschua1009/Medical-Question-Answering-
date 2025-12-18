from Gating.loader import load_gating
from smoe_core import smoe
from Experts.loader import preload_all_experts


EXPERT_NAMES = [
    "Advice",
    "Treatment",
    "Definition",
    "Complication",
    "RiskFactor",
    "Population",
    "Cause",
    "Prevention",
    "Symptom",
    "SubDisease",
    "Application",
    "Detail"
]


# class SMoEEngine:
#     def __init__(self):
#         self.enc, self.gate, self.id2label = load_gating()

    # def answer(self, question: str):
    #     return smoe(question, self.enc, self.gate, self.id2label)


class SMoEEngine:
    def __init__(self):
        self.enc, self.gate, self.id2label = load_gating()

        # 🔥 PRELOAD HERE
        
        preload_all_experts(EXPERT_NAMES)
    def answer(self, question: str):
        return smoe(question, self.enc, self.gate, self.id2label)
