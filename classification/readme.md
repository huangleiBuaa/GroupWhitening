## Requirements and Dependency
* Install [PyTorch](http://torch.ch) with CUDA (for GPU). (Experiments are validated on python 3.6.8 and pytorch 1.0.1)
* (For visualization if needed), install the dependency [visdom](https://github.com/facebookresearch/visdom) by:
```Bash
pip install visdom
```



## Experiments

 #### 1.  MLP on MNIST datasets:

Run the corresponding bash scripts in `./Mnist/experiments/`
Note that you need to specify your data dir by revising `--dataset-root=/raid/dd/`

2. #### ImageNet experiments:

Run the corresponding bash scripts in `./ImageNet/experiments/`
Note that you need to specifiy your data dir by revising `--dataset-root=/raid/dd/imageNet/input_torch/`





## Acknowledgement

This code is based on the [IterNorm-pytorch](https://github.com/huangleiBuaa/IterNorm-pytorch)