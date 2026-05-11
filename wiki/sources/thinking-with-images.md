---
url: "https://openai.com/index/thinking-with-images/"
title: "图像思考"
date: "2026-02-25"
fetched_at: "2026-04-27T15:02:27"
tags: ["openai", "visual-reasoning", "o3", "multimodal", "image-thinking"]
---

# 图像思考

> 原始链接: [https://openai.com/index/thinking-with-images/](https://openai.com/index/thinking-with-images/)

## 概述

OpenAI o3 和 o4-mini 是最新的 o 系列视觉推理模型。这是第一次模型能够在思维链中结合图像进行思考，而不仅仅是看到图像。

通过在思维链中结合图像进行思考，o3 和 o4-mini 进一步扩展了这一功能。图像思考通过使用工具转换用户上传的图像来实现，包括裁切、放大、旋转等处理技术。这些功能都是原生的，无需依赖单独的专门模型。

## 特性

### 增强型视觉智能

ChatGPT 的增强型视觉智能可进行比以往更全面、更准确、更可靠的图像分析：

- 将高级推理与网络搜索无缝结合
- 自动缩放、裁切、翻转或图像增强处理
- 从残缺的照片中获得启发

### 测试时间计算扩展

这种方法实现了测试时间计算扩展的新轴心，将视觉推理和文本推理无缝融合在一起。在多模态基准测试中获得的顶尖成绩反映了这一进展。

### 更轻松的交互方式

图像思考允许用户以更轻松的方式与 ChatGPT 交互：
- 通过拍照来提问，不必担心对象的位置
- 即使文字颠倒或存在多个问题，模型也能处理
- 视觉推理促使模型将照片放大以获得更清晰的视图

## 工具协同

最新的视觉推理模型可与多种工具协同工作：
- Python数据分析
- 网络搜索
- 图像生成
- 创造性地有效解决更复杂的问题
- 首次为用户提供多模态代理体验

## 性能评估

在所有多模态任务中，两款新视觉推理模型的表现明显优于前代模型。

### 关键基准测试

- **STEM相关问题解答**：MMMU、MathVista
- **图表阅读与推理**：CharXiv
- **感知原语**：VLM为Blind
- **视觉搜索**：V*（达到95.7%准确率，基本解决基准问题）

特别值得注意的是，在所有感知基准中，不依赖浏览而进行的图像思考都表现出了显著提升。

## 局限性

### 推理链过长

模型可能会执行多余或不必要的工具调用和图像处理步骤，导致思维链过长。

### 感知错误

模型仍然会犯基本的感知错误。即使工具调用正确地推进了推理过程，视觉误读仍然可能导致错误的最终答案。

### 可靠性

在多次尝试解决一个问题时，模型可能会尝试不同的视觉推理过程，而其中一些过程可能会导致错误的结果。

## 未来方向

OpenAI将持续改进模型的图像推理能力，让它更简洁、冗余更少、可靠性更高。期待继续开展多模态推理研究，帮助人们探索如何利用这些改进提高日常工作效率。

## 作者团队

Aditya Ramesh, Aidan Clark, Aleksandra Spyra, Alex Tachard Passos, Alexander Kirillov, Ali Kalami, Amy McDonald Sandjideh, Andrei Gheorghe, Andrew Gibiansky, Andrew Tulloch, Angela Baek, Anubha Srivastava, Avital Oliver, Behrooz Ghorbani, Ben Leimberger, Borys Minaiev, Bowen Cheng, Brandon McKinzie, Carpus Chang, Cary Hudson, Casey Chu, Charlotte Cole, Chen Shen, Dan Roberts, Dana Palmie, Daniel Kappler, David Medina, Edmund Wong, Eric Mitchell, Eric Ning, Freddie Sulit, Haiming Bao, Haitang Hu, Hongyu Ren, Hyeonwoo Noh, Jakub Pachocki, James Betker, James Qin, Jamie Kiros, Jason Ai, Jerry Tworek, Jessica Liang, Ji Lin, Jiahui Yu, Jianfeng Wang, Joseph Mo, Kenji Hata, Kevin King, Kristian Georgiev, Kshitij Gupta, Lauren Yang, Li Jing, Lin Yang, Linden Li, Mark Chen, Martin Li, Max Schwarzer, Mia Glaese, Michael Malek, Minnia Feng, Nacho Soto, Nat McAleese, Niko Felix, Peter Faiman, Prafulla Dhariwal, Rajkumar Samuel, Rapha Gontijo Lopes, Ravi Teja Mullapudi, Reiichiro Nakano, Rennie Song, Ricky Xu, Sam Altman, Sean Fitzgerald, Shengjia Zhao, Shengli Hu, Shuchao Bi, Spencer Papay, Szi-chieh Yu, Wenda Zhou, Yang Lu, Yara Khakbaz, Yunxing Dai, Zhishuai Zhang

关键词：OpenAI、视觉推理、o3、o4-mini、多模态推理、图像思考、思维链