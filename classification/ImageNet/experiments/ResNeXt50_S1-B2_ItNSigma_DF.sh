#!/usr/bin/env bash
cd "$(dirname $0)/.."
CUDA_VISIBLE_DEVICES=6,7 python3 imagenet.py \
-a=resnext_whiten_010n50_32x4d \
--arch-cfg=dropout=0,last=True \
--batch-size=256 \
--epochs=100 \
-oo=sgd \
-oc=momentum=0.9 \
-wd=1e-4 \
--lr=0.1 \
--lr-method=step \
--lr-steps=30 \
--lr-gamma=0.1 \
--dataset-root=/raid/dd/imageNet/input_torch/ \
--dataset=folder \
--norm=ItNSigma \
--norm-cfg=T=5,num_channels=256 \
--seed=1 \
$@
#--log-suffix=BN \
