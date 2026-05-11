---
url: "https://medium.com/syncedreview/a-brief-overview-of-attention-mechanism-13c578ba9129"
title: "A Brief Overview of Attention Mechanism"
author: "Synced"
date: "2017-09-25"
description: "What is Attention?"
tags: ["attention-mechanism", "nlp", "transformers", "machine-learning"]
---

# A Brief Overview of Attention Mechanism

A foundational introduction to the attention mechanism in neural networks, explaining how it解决了固定长度向量信息丢失的问题 in sequence-to-sequence models.

## Core Concept

Attention is simply a vector, often the outputs of dense layer using softmax function. Before Attention mechanism, translation relied on compressing entire sentences into fixed-length vectors, causing information loss. Attention allows models to:

- Look over all information from the original sentence
- Generate proper words based on current context
- Zoom in or out (focus on local or global features)

## Why Attention?

### RNN Limitations

Vanilla RNN suffered from two main problems:

1. **Structure Dilemma**: Cannot handle arbitrary input/output lengths needed for translation alignment
2. **Mathematical Nature**: Gradient vanishing/exploding makes training difficult for long sequences (max ~4 words)

### Encoder-Decoder Solution

The encoder-decoder model with GRU/LSTM cells addressed these deficits:
- Embedding layer maps words to dense vectors
- Encoder processes input sequentially, generating hidden state
- Decoder uses teacher forcing for sequential output generation

But one hidden state proved insufficient for complex sequences.

## How Attention Works

Attention plugs a **context vector** between encoder and decoder:

1. Loop over all encoder states to compare with target states
2. Generate scores for each encoder state
3. Use softmax to normalize scores → probability distribution
4. Apply weights to make context vector trainable

Key mathematical principles:
- Context vectors computed for every output word (2D matrix: target words × source words)
- Attention vector computed from context vector, target word, and attention function
- Trainable weights (W in Luong's, W1 and W2 in Bahdanau's)

## Variants

Different attention styles differ in:
- Choice of score function
- Attention function design
- Soft attention vs. hard attention (differentiability)

## Related Papers

- Bahdanau et al. (2014): Neural machine translation by jointly learning to align and translate
- Vaswani et al. (2017): Attention Is All You Need
- Xu et al. (2015): Show, attend and tell: Neural image caption generation with visual attention

## Key Takeaway

Attention is not mysterious—it's a trainable interface that can be plugged anywhere suitable, potentially enhancing results through delicate parameterization and math.