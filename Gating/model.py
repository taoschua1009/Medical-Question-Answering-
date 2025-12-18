import torch.nn as nn
import torch.nn.functional as F

class GatingMLP(nn.Module):
    def __init__(self, dim, num_classes):
        super().__init__()
        self.fc1 = nn.Linear(dim, 512)
        self.fc2 = nn.Linear(512, num_classes)

    def forward(self, x):
        return self.fc2(F.relu(self.fc1(x)))
