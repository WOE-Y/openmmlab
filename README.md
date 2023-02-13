# OpenMMLabCamp

## 一、assignment_01: 使用MMClassification 训练花卉图片分类模型

训练保存的模型权重: 链接: https://pan.baidu.com/s/1GDkiQBUIr2ZM_zRXbEfX1Q 提取码: bpbv

## 二、assignment_02: 使用MMDetection 训练balloon实例分割模型 并完成color splash的效果制作

保存的Mask RCNN模型权重 & color splash视频

链接: https://pan.baidu.com/s/1MYKTy69IfwmNvtn9Abq-8Q 提取码: skd5

## 三、assignment_03: 使用MMSegmentation 在自己的数据集上 训练语义分割模型

1. 数据集整理

   划分训练集、测试集: [split_data.py](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/split_data.py)

2. 数据集可视化

   查看数据集基本信息并可视化: [show_data.ipynb](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/show_data.ipynb)
   
   - 标注可视化
   
   ![image](https://user-images.githubusercontent.com/56215133/218587571-ef0a9ee7-724c-432e-8784-516713832898.png)


3. 使用MMSegmentation训练语义分割模型

   在MMSegmentation中，指定预训练模型，配置config文件，修改类别数、学习率。
   
   - 配置文件: [pspnet_r50_Glomeruli.py](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/pspnet_r50_Glomeruli.py)
   
   - 训练脚本: [train_data.py](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/train_data.py)
   
   - 训练日志: 查看[20230214_033626.json](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/20230214_033626.json)或者[20230214_033626.log](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/20230214_033626.log)
   
   - 保存权重: 链接: https://pan.baidu.com/s/1SBKqIxz0TeO9Dy6CGm4-Rg?pwd=vep6 提取码: vep6

4. 用训练得到的模型预测

   获得测试集图片的语义分割预测结果，对结果进行可视化和后处理，详情见[make_prediction.ipynb](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/make_prediction.ipynb)
   
   - 预测结果 V.S. 标签
   
   ![image](https://user-images.githubusercontent.com/56215133/218587747-1d8431eb-98c1-4c13-bcae-842f90556434.png) ![image](https://user-images.githubusercontent.com/56215133/218587856-171cf0ea-795f-4800-acb0-c499705e8507.png)

   - 混淆矩阵
   
   <img width="624" alt="image" src="https://user-images.githubusercontent.com/56215133/218588085-c2e9b9db-8665-46b3-95b6-f51762eb8f65.png">


5. 在测试集上评估算法的速度和精度性能

   - 测试集精度指标:
   
   <img width="265" alt="image" src="https://user-images.githubusercontent.com/56215133/218585983-da71b084-c3a4-4d43-8eb7-055f77052331.png">
   
   - 速度指标-FPS:
   
   <img width="865" alt="image" src="https://user-images.githubusercontent.com/56215133/218586134-e4b2b668-f778-44d9-a26f-9d5606f47bb3.png">

   详细日志见[test_speed.ipynb](https://github.com/WOE-Y/openmmlab/blob/main/assignment_03/test_speed.ipynb)
