#!/bin/bash

export TORCH_HOME='/tsn_pytorch'

# parameters: num_classes model num_gpu test_segments

python /tsn_pytorch/test_models.py $1 Flow \
    /generated/data/flow_val_split.txt \
    /generated/models/$2 --arch BNInception -j $3 --test_segments $4 \
    --save_scores /generated/data/tsn_pytorch_flow_scores.npz --flow_prefix flow_ ${@:5}
