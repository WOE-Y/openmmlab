#!/bin/bash

# 激活环境
source activate openmmlab

# 刷新⽇志缓存
export PYTHONUNBUFFERED=1

# 训练模型
python demo/video_splash.py \
       work/mask_rcnn_balloon/test_video.mp4 \
       configs/mask_rcnn_balloon/mask_rcnn_r50_fpn_1x_coco.py \
       work/mask_rcnn_balloon/best_epoch_30.pth \
       --out work/mask_rcnn_balloon/video_splash.mp4