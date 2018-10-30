import torch
import sys
import shutil

model_name = sys.argv[1]
back_name = model_name + '.back'
shutil.move(model_name, back_name)

state_dict = torch.load(back_name)
for name, weights in state_dict.items():
    state_dict[name] = weights.squeeze(0)

torch.save(state_dict, model_name)
