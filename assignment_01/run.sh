#!/bin/bash

# 激活环境
source activate openmmlab

# 刷新⽇志缓存
export PYTHONUNBUFFERED=1

# 训练模型
python tools/train.py \
       configs/resnet18/resnet18_b64_flower.py \
       --work-dir work/resnet18_b64_flower
