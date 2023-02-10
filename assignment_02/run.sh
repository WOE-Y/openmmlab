#!/bin/bash

# 激活环境
source activate openmmlab

# 刷新⽇志缓存
export PYTHONUNBUFFERED=1

# 训练模型
python tools/train.py \
       configs/mask_rcnn_balloon/mask_rcnn_r50_fpn_1x_coco.py \
       --work-dir work/mask_rcnn_balloon