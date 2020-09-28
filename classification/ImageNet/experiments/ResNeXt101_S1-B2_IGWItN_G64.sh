#!/usr/bin/env bash
cd "$(dirname $0)/.."
CUDA_VISIBLE_DEVICES=4,5,6,7 python3 imagenet.py \
-a=resnext_whiten_010n101_32x8d \
--arch-cfg=dropout=0 \
--batch-size=256 \
--epochs=100 \
-oo=sgd \
-oc=momentum=0.9 \
-wd=1e-4 \
--lr=0.1 \
--lr-method=step \
--lr-step=30 \
--lr-gamma=0.1 \
--dataset-root=/raid/dd/imageNet/input_torch/ \
--dataset=folder \
--norm=IGWItN \
--norm-cfg=T=5,num_groups=64,num_channels=0 \
--seed=1 \
$@
#--log-suffix=BN \
