---
created: 2026-04-28
updated: 2026-05-09
tags: [activation-function, deep-learning, neural-network]
sources: 3
---

# ReLU

## Definition

Rectified Linear Unit (ReLU) is an [[activation-function]] defined as f(x) = max(0, x), which outputs the input directly if positive and zero otherwise. ReLU is the most widely used activation function in modern deep neural networks because of its computational simplicity, ability to mitigate [[vanishing-gradients]] in positive regions, and tendency to produce sparse activations. Despite its simplicity, ReLU and its variants (Leaky ReLU, ELU, GELU) are ubiquitous in transformer models, convolutional networks, and feed-forward layers.

## Key Proponents / Critics

- [[geoffrey-hinton]] — advocate for ReLU as a replacement for sigmoid/tanh activations in deep networks
- [[yann-le-cun]] — influential proponent of ReLU and related piecewise-linear activations
- [[sebastian-raschka]] — has published detailed comparisons of activation functions including ReLU
- Xavier Glortot — introduced Glorot/Xavier initialization designed for ReLU-based networks

## Related Concepts

- [[activation-function]] — ReLU is the most prominent member of the activation function family
- [[gelu|gelu]] — a smooth approximation of ReLU used in the [[transformers]]
- [[swiglu]] — a gated activation variant using ReLU-like gating, used in modern LLM feed-forward layers
- [[feed-forward-network]] — transformer feed-forward layers use ReLU or GELU activations
- [[vanishing-gradients]] — ReLU addresses this problem by maintaining constant gradient for positive inputs
- [[deep-learning]] — ReLU enabled the training of much deeper networks compared to sigmoid/tanh
- [[neural-network-training]] — ReLU's simplicity makes gradient-based training more efficient
- [[backpropagation]] — ReLU's simple derivative (0 or 1) simplifies backpropagation
- [[dropout]] — commonly applied alongside ReLU as a regularization technique

## Related Entities

- [[pytorch]] — provides `nn.ReLU` as a standard module
- [[tensorflow]] — provides `tf.keras.layers.ReLU` and related activations
- [[google]] — ReLU was popularized during the deep learning revolution at Google/Brain

## Sources

- [[deep-learning-fundamentals]] — foundational material covering activation functions including ReLU
- [[neural-networks-made-easy]] — accessible explanation of ReLU in the context of neural network design
- [[machine-learning-glossary]] — glossary entry defining ReLU and activation functions

## Evolution

- **1975**: Hubel and Wiesel discover simple and complex cells in the visual cortex, inspiring rectified units
- **2000**: ReLU appears in early neural network literature but is not yet widely adopted
- **2010**: Glorot and Bengio compare activation functions, finding ReLU superior for deep networks
- **2012**: AlexNet uses ReLU, contributing to its breakthrough performance on ImageNet
- **2015**: Batch normalization makes training with ReLU more stable in very deep networks
- **2017**: [[gelu|GELU]] introduced as a smooth ReLU alternative, adopted in the [[transformers]]
- **2017-2025**: SwiGLU and other gated variants replace vanilla ReLU in state-of-the-art LLM feed-forward layers
