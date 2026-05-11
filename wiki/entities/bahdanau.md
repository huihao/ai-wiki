# Bahdanau

Dzmitry Bahdanau是注意力机制的开创者之一，2015年论文"NEURAL MACHINE TRANSLATION BY JOINTLY LEARNING TO ALIGN AND TRANSLATE"的作者。

## 主要贡献

### Bahdanau Attention

首次在编码器-解码器框架中引入注意力机制，解决了：
- **对齐问题**：使用网络计算两种语言间不同单词的关联分数
- **遗忘问题**：打破依赖固定长度上下文信息的限制

### 设计思路演化

Bahdanau的思路发展历程：
1. 最初灵感来自"两个光标"概念（动态规划）
2. 尝试"硬编码的对角线注意力"
3. 突破性想法：让解码器自主学习关注源序列中的相关部分

### 关键创新

将软搜索设计为softmax操作，结合双向RNN的状态进行加权平均，模仿翻译时眼睛在源句和目标句之间反复移动的行为。

## 相关来源

- [探秘Transformer系列之（1）：注意力机制](../sources/transformer-attention-mechanism.md)

## 相关概念

- [注意力机制](../concepts/attention-mechanism.md)
- [Bahdanau Attention](../concepts/bahdanau-attention.md)
- [编码器-解码器](../concepts/encoder-decoder.md)