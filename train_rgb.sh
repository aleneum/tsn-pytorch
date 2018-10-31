#!/bin/bash

export TORCH_HOME='/tsn_pytorch'

# parameters: num_class num_gpu batch_size

python /tsn_pytorch/main.py $1 RGB \
   /generated/data/rgb_train_split.txt /generated/data/rgb_val_split.txt \
   --arch BNInception --num_segments 3 \
   --gd 20 --lr 0.001 --lr_steps 30 60 --epochs 80 -b $3 -j $2 --dropout 0.8 \
   --snapshot_pref /generated/models/tsn_rgb ${@:4}
