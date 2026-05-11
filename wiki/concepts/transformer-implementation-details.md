---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# Transformer Architecture Implementation

## Overview

The Transformer architecture introduced in "Attention is All You Need" (Vaswani et al., 2017) requires careful implementation details beyond the paper's description. Key insights from implementing from scratch reveal hidden complexities.

## Key Implementation Insights

### 1. Single Weight Matrix for Q, K, V

Multi-head attention uses one combined weight matrix `W` (512x1536) rather than three separate projection matrices. This matrix is decomposed into 8 heads × 3 vectors (Q, K, V) × 64 dimensions each.

For encoder-decoder attention, this splits into two matrices:
- Query projections from decoder
- Key and value projections from encoder

### 2. Dynamic QKV Dimensionality

Query, key, and value dimension is not a hyperparameter but calculated as:
```
qkv_dim = embed_dim / num_heads = 512 / 8 = 64
```

This keeps parameters constant regardless of number of heads. More heads → smaller dimensions per head.

### 3. Scaling Attention Logits

Division by sqrt(qkv_dim) prevents high variance in logits causing extremely small softmax probabilities and tiny gradients. Higher dimensions → more products in dot product sum → higher variance.

### 4. Weight Tying

Three embedding matrices share weights:
- Source token embeddings
- Target token embeddings
- Decoder pre-softmax linear layer

This saves ~46M parameters for typical 30k vocabulary with 512 embedding size.

### 5. Teacher Forcing

Training uses single forward pass with ground-truth sequences fed entirely, not autoregressive decoding. Each prediction based on previous ground-truth tokens, not predictions. Attention mask prevents cheating by looking at future tokens.

### 6. Residual Streams

Vertical information flow across layers and sub-layers, similar to LSTM's horizontal memory stream. Residual connections add information. Requires constant dimensionality throughout all layers.

## Components

- [[multi-head-attention|Multi-Head Attention]] — Core mechanism with surprising implementation details
- [[positional-encoding|Positional Encoding]] — Can use sinusoid (no hard limit) or learned (limit like BERT-512)
- [[encoder-decoder|Encoder-Decoder Architecture]] — Attention flow between encoder and decoder layers

## Related Implementations

- PyTorch official transformer tutorial and implementation
- Phillip Lippe's transformer tutorial
- Alexander Rush's Annotated Transformer
- Jay Alammar's Illustrated Transformer

## Sources

- [[implementing-a-transformer-from-scratch|Implementing a Transformer From Scratch]]