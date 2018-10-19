#!/bin/bash

# parameters: num_classes model num_gpu test_segments

python /tsn_pytorch/test_models.py $1 RGB \
    /generated/data/rgb_val_split.txt \
    /generated/models/$2 --arch BNInception -j $3 --test_segments $4 \
    --save_scores /generated/$2_scores.npz
