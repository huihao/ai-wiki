---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 2
---

# Causal attention

## Definition

A masking strategy that ensures each position can only attend to itself and previous positions, essential for autoregressive language modeling. Also known as "masked self-attention" in transformer decoder architectures.

## Mechanics

**Masking Implementation**:

1. Compute attention scores: `attn_scores = queries @ keys.T`
2. Create upper-triangular mask: `torch.triu(..., diagonal=1)` (1s above diagonal)
3. Replace above-diagonal scores with -infinity: `masked_fill(mask.bool(), -torch.inf)`
4. Apply softmax: -inf becomes 0 probability (e^-inf → 0)

**Alternative (requires renormalization)**:
- Use `torch.tril` (lower triangle) to keep 0s on mask
- Multiply attention weights by mask
- Renormalize rows to sum to 1

**Why -infinity before softmax?** More efficient than masking after softmax + renormalization. Softmax treats -inf as zero probability directly.

## Purpose

- Enables GPT-style decoder-only LLMs to generate text left-to-right
- Prevents "cheating": model cannot see future tokens during training
- Each token's context vector incorporates only itself and previous tokens
- Example: "Life is short" → "eat" can attend to "Life", "is", "short" but not future tokens

## Related Concepts

- [[Self-Attention]]
- [[Multi-Head Attention]]
- [[Transformer Architecture]]
- [[Attention Mask]]
- [[Autoregressive Model]]

## Related Entities

- [[sebastian-raschka|Sebastian Raschka]]

## Sources

- [[understanding-coding-self-attention-multi-head-causal-cross|Understanding and Coding Self-Attention, Multi-Head Attention, Causal-Attention, and Cross-Attention in LLMs]] — Sebastian Raschka implements causal masking with -inf before softmax technique
- [[the-illustrated-transformer|The Illustrated Transformer]] — Jay Alammar visualizes masked multi-head attention in decoder stack

## Evolution

- Original transformer (Vaswani et al. 2017): "masked multi-head attention" module in decoder
- Modern LLMs (GPT, Llama): causal attention is default for decoder-only architectures
