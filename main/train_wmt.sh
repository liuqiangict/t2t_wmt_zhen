#!/bin/bash

# train wmt17 zh-en
MODEL=wmt
TRAIN=wmt
mkdir -p ./data/$MODEL
mkdir -p ./train/$TRAIN
t2t-trainer \
  --t2t_usr_dir=./data_generators \
  --data_dir=./data/$MODEL \
  --problems=translate_enzh_wmt \
  --model=transformer \
  --hparams_set=transformer_base_single_gpu \
  --output_dir=./train/$TRAIN \
