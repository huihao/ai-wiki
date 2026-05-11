---
url: "https://www.cnblogs.com/rossiXYZ/p/18705809"
title: "探秘Transformer系列之（1）：注意力机制"
author: "罗西的思考"
date: "2025-02-09"
description: "本文从零开始解析Transformer，目标是解析Transformer如何运作，以及为何如此运作。从Seq2Seq介绍开始，逐渐切换到注意力机制，最后导出Transformer模型架构。"
fetched_at: "2026-04-27T15:13:19"
tags: ["transformer", "attention-mechanism", "seq2seq", "deep-learning"]
---

# 探秘Transformer系列之（1）：注意力机制

> 原始链接: [https://www.cnblogs.com/rossiXYZ/p/18705809](https://www.cnblogs.com/rossiXYZ/p/18705809)

## 概述

本文从零开始解析Transformer，目标是解析Transformer如何运作，以及为何如此运作。从Seq2Seq介绍开始，逐渐切换到注意力机制，最后导出Transformer模型架构。

Transformer的定义：
> Transformer is the first transduction model relying entirely on self-attention to compute representations of its input and output without using sequence aligned RNNs or convolution.

## 背景知识

### Seq2Seq

seq2seq（Sequence to Sequence/序列到序列）概念最早由Bengio在2014年提出，代表从一个源序列生成一个目标序列的操作。

### 自回归模型

自回归（Autoregressive）模型是一种生成模型，其语言建模目标是根据给定的上下文来预测下一个单词。遵循因果原则，模型每次推理只会预测输出一个 token，当前轮输出token 与历史输入 token 拼接，作为下一轮的输入 token。

弊端：
- 容易累积错误，导致训练效果不佳
- 只能以串行方式进行，难以并行化

### 编码器-解码器模型

处理序列转换的神经网络模型大多是编码器-解码器（Encoder-Decoder）模型。前半部分的RNN只有输入（编码器），后半部分的RNN只有输出（解码器），两个部分通过一个隐状态来传递信息。

**编码器**：把输入句子的所有语义信息压缩成一个固定长度的中间语义向量（上下文向量）

**解码器**：把这个中间语义上下文向量解码成输出句子

## CNN和RNN方案的问题

### 技术挑战

序列转换面对的主要技术挑战：
1. **对齐问题**：在处理完整个输入序列后，模型的输出序列可能和输入序列的顺序不一致
2. **长依赖问题**：序列中两个词之间距离过长时，难以确定词之间的依赖关系

### CNN方案

CNN的本质是学习空间数据中的局部依赖关系。卷积感受视野是局部的，提取局部特征。为了处理长序列，需要堆叠更多卷积层，通过深度弥补全局信息缺失。

缺点：
- 信息被"逐级加工，层层抽象"，信息传递不够透明
- 信息在过深的网络传播过程之后只有部分保留

### RNN方案

RNN引入了"记忆"功能，让网络能记住之前输入的信息。理论上可以预测无限长句子，利用前面所有信息。

**优点**：
- 适合处理序列数据
- 捕捉长期依赖
- 权重共享，减少参数数量
- 推理速度快

**缺点**：
- 表达能力缺失：隐向量长度固定，有损压缩
- 信息遗失：序列早期部分的记忆会随着距离增加产生传播衰减
- 难以并行：串行计算阻碍并行训练
- 难以训练：梯度消失或梯度爆炸问题

## 注意力机制

### 原理

注意力机制的本质：**上下文决定一切**。一个字/词在一篇文本中表达的意思通常与它的上下文有关。

理解角度：
1. **上下文决定一切**：通过句子中的其它词对我们关注词的语义进行推断
2. **资源分配**：给予输入的不同词赋予不同的注意力权重，区分影响程度
3. **信息交换**：序列中元素交换信息的过程

### 通用结构

任务模型包含四个部分：
1. **特征模型**：把输入X转换为特征向量F
2. **查询模型**：产生查询向量q，确定需要关注的信息
3. **注意力模型**：输入特征向量F和查询向量q，输出上下文向量c
4. **输出模型**：使用上下文向量c组合成最终特征向量

### QKV概念

- **Q（Query）**：目标序列的每个元素向其它单词发出的询问
- **K（Key）**：源序列元素的特征，用于回答其它单词的提问
- **V（Value）**：源序列元素的实际值（最终提供的信息）

从词典角度来看：query是要找的内容，key是索引，value是对应的信息。注意力机制是向量化+模糊匹配+信息合并。

### 计算流程

注意力机制的计算总体分为两步：
1. 在所有输入信息上计算注意力分布
2. 根据注意力分布计算输入信息的加权平均

详细步骤：
1. **生成语义向量**：编码器将源序列编译成step_len个语义向量
2. **计算对齐系数**：针对编码器输出的所有语义向量计算注意力分数
3. **计算概率分布**：使用softmax归一化，得到注意力权重
4. **计算上下文向量**：使用注意力权重加权求和
5. **更新解码器状态**
6. **计算输出预测词**

### 注意力分数

衡量序列中不同单词对当前单词的重要性程度。通过相似度计算函数得到（如点积、余弦相似度等）。

### 注意力权重

使用softmax操作将注意力分数归一化，使所有权重总和为1。

### 加权求和

每个query从对应的key上获取信息，以加权求和模式对数据进行加工。每个单词在新的表示中不只是自身的信息，还包含了其他单词的信息。

## 问题解决

注意力机制通过以下方式解决CNN和RNN的问题：

### 增大信息含量

与RNN方案相比，自注意力机制使用一个列表作为隐状态，所有上下文都存储在列表中，没有被压缩。编码器可以传入所有隐藏状态到解码器。

### 缩减单词间距

自注意力机制中，任意两个词之间的位置距离都是固定常数。这解决了长距离依赖问题：
- 信息传播损失小
- 没有有序假设，平等看待每个单词
- 可以在每一层内实现并行

### 选择性处理信息

**加权求和**：动态产生权重，根据输入计算注意力权重，自适应操作。

**对齐机制**：依据输入序列和输出序列的不同部分进行相关度计算，实现序列对齐。

### 同时前瞻和回顾

编码器可以同时从左到右和从右到左读取输入序列，生成更丰富和完整的表示。

## 注意力发展历史

重要节点：
1. **RCTM (2013)**：神经网络机器翻译开篇之作，CNN编码器+RNN解码器
2. **RNN 编码器-解码器 (2014)**：Bengio团队，明确编码器和解码器概念
3. **Bahdanau Attention (2015)**：Attention的开创者，在编码器-解码器基础上增加注意力机制
4. **Luong Attention (2015)**：全局注意力和局部注意力机制
5. **Self Attention (2016)**：提出自注意力机制（intra-attention）
6. **QKV-Attention (2017)**：最早提出QKV概念，区分key、value、predict
7. **MultiHead Self Attention (2017)**：多头自注意力机制
8. **Multi-step Attention (2017)**：CNN模型结合注意力机制

Transformer是建立在很多巨人肩膀之上的集大成者，整个网络结构完全由注意力机制组成。

## 参考资源

- Attention is All your Need
- NEURAL MACHINE TRANSLATION BY JOINTLY LEARNING TO ALIGN AND TRANSLATE
- Effective Approaches to Attention-based Neural Machine Translation
- Long Short-Term Memory-Networks for Machine Reading
- QKV-Attention: FRUSTRATINGLY SHORT ATTENTION SPANS IN NEURAL LANGUAGE MODELING

关键词：Transformer、注意力机制、Seq2Seq、自注意力、QKV、编码器-解码器