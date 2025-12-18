import torch.nn as nn
import torch.nn.functional as F

class ExpertAdapter(nn.Module):
    def __init__(self, dim):
        super().__init__()

        self.anchor_adapter = nn.Sequential(
            nn.Linear(dim, 256),
            nn.ReLU(),
            nn.Linear(256, dim),
        )

        self.context_adapter = nn.Sequential(
            nn.Linear(dim, 256),
            nn.ReLU(),
            nn.Linear(256, dim),
        )

        self.has_context_head = nn.Sequential(
            nn.Linear(dim, 256),
            nn.ReLU(),
            nn.Linear(256, 1),
        )

    def forward(self, x):
        a = F.normalize(self.anchor_adapter(x), p=2, dim=1)
        c = F.normalize(self.context_adapter(x), p=2, dim=1)
        h = self.has_context_head(x).squeeze(-1)
        return a, c, h
