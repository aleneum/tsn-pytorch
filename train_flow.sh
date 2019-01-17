#!/bin/bash

export TORCH_HOME='/tsn_pytorch'

# parameters: num_class num_gpu batch_size

python /tsn_pytorch/main.py $1 Flow \
   /generated/data/flow_train_split.txt /generated/data/flow_val_split.txt \
   --arch BNInception --num_segments 3 --gd 20 --lr 0.001 --lr_steps 190 300 -b $3 -j $2 --dropout 0.7 \
   --snapshot_pref /generated/models/tsn --flow_prefix flow_ ${@:4}
