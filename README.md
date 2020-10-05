# Group Whitening

This project provides the PyTorch implementation of Group Whitening described in the following paper:

**Group Whitening: Balancing Learning Efficiency and Representational Capacity**,  [arXiv:2009.13333](https://arxiv.org/abs/2009.13333).



## Highlights
* We believe the proposed Group Whitening (GW) module is a practical component, the implementation of which is in the directory:  `./classification/extension/normalization/`.
* GW consistently improves the performance of ResNet and ResNeXt, with absolute gains of 1.02% ∼ 1.49% in top-1 accuracy on ImageNet (repo: `./classification/`) and 1.82% ∼ 3.21% in bounding box AP on COCO object detection (repo: `/maskrcnn_debug/`).



> Table 1, ImageNet Classification. Standard setup: batchSize=256,  wd=0.0001, init lr=0.1, 100 epochs (30,60,90- decay).

|             | BaseLine | Using GW module                                              |
| ----------- | -------- | ------------------------------------------------------------ |
| ResNet-50   | 76.23    | 77.72 ([model](./classification/ImageNet/models/resnet_whiten_010n.py), [pth](https://drive.google.com/file/d/1bNeTDhfu5jg8aBatOCSQAe_WzTouUfHA/view?usp=sharing) ) |
| ResNet-101  | 77.69    | 78.71 ([model](./classification/ImageNet/models/resnet_whiten_010n.py), [pth](https://drive.google.com/file/d/1BnuzZzpaQ6rgBHho5mOQhBWBh1Lh-trK/view?usp=sharing) ) |
| ResNeXt-50  | 77.01    | 78.43 ([model](./classification/ImageNet/models/resnext_whiten_010n.py), [pth](https://drive.google.com/file/d/1pJSIbjeHpELJ5zlWOF6ekRGjykRYf6tO/view?usp=sharing) ) |
| ResNeXt-101 | 79.29    | 80.43 ([model](./classification/ImageNet/models/resnext_whiten_010n.py), [pth](https://drive.google.com/file/d/1lVAvTSCnHs-Ij5gt7ubQvLmZzUQdKUNt/view?usp=sharing) ) |



Table 2, COCO object detection results using Faster R-CNN with ResNet-50+FPN.  We use the 1x lr scheduling (90k iterations), with a batch size of 16 on 8 GPUs. 

|           | 2fc head box | 4conv 1fc head box |
| --------- | ------------ | ------------------ |
| BN-frozen | 36.31% AP    | 36.39 % AP         |
| GN        | 36.32% AP    | 37.86 % AP         |
| GW        | 38.13% AP    | 39.60 % AP         |

Table 3, COCO object detection and segmentation results using Mask R-CNN with ResNeXt-101+FPN.  We use the 1x lr scheduling (180k iterations), with a batch size of  8 on 8 GPUs. 

|           | AP (box) | AP(mask) |
| --------- | -------- | -------- |
| BN-frozen | 42.24%   | 37.53%   |
| GN        | 42.18%   | 37.54%   |
| GW        | 44.41%   | 39.17%   |



## Contact

huanglei36060520@gmail.com



## Acknowledgement

Note that the code repo `./classification/` is based on the [IterNorm project](https://github.com/huangleiBuaa/IterNorm), and the code repo `/maskrcnn_debug/`is based on the [maskrcnn project](https://github.com/facebookresearch/maskrcnn-benchmark).