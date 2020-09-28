export NGPUS=8
#!/usr/bin/env bash
cd "$(dirname $0)/.."
python -m torch.distributed.launch --nproc_per_node=$NGPUS ./tools/train_net.py --config-file "configs/e2e_mask_rcnn_X_101_32x8d_FPN_2Xconv_1Image_1x_GN.yaml" MODEL.RPN.FPN_POST_NMS_TOP_N_TRAIN 1000
