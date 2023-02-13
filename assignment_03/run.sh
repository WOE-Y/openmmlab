#!/bin/bash
# 激活环境
source activate openmmlab

# 刷新⽇志缓存
export PYTHONUNBUFFERED=1

# 训练模型
CUDA_VISIBLE_DEVICES=2 \
python train_data.py