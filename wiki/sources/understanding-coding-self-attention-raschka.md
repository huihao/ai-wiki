---
created: 2026-04-28
updated: 2026-04-28
tags: [source, transformer, attention, tutorial, pytorch]
sources: 1
---

# Understanding and Coding the Self-Attention Mechanism of Large Language Models From Scratch

## Metadata

- **Author:** [[sebastian-raschka]]
- **Date:** 2023-02-09
- **URL:** https://sebastianraschka.com/blog/2023/self-attention-from-scratch.html
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/Understanding and Coding the Self-Attention Mechanism of Large Language Models From Scratch.md`

## Summary

A detailed step-by-step tutorial implementing the scaled dot-product [[self-attention]] mechanism from scratch in [[pytorch-in-one-hour|PyTorch]]. Raschka builds intuition by working through an example sentence, creating embeddings, defining query/key/value weight matrices, computing attention scores with softmax scaling, and extending to [[multi-head-attention-from-scratch|multi-head attention]] and [[cross-attention]]. The article includes runnable code snippets and visualizations.

## Key Takeaways

- Self-attention enhances input embeddings by incorporating contextual information from the entire sequence
- Three weight matrices (W_q, W_k, W_v) project inputs into query, key, and value vectors
- Attention weights are computed as softmax(QK^T / √d_k), where scaling by √d_k prevents numerical instability
- Multi-head attention uses multiple independent attention heads, analogous to multiple kernels in CNNs
- Cross-attention mixes two different input sequences (e.g., encoder and decoder in the original transformer)
- Each attention head can learn to focus on different parts of the input, capturing diverse relationships

## Entities Mentioned

- [[sebastian-raschka]] — author, ML educator and researcher
- [[eleutherai]] — mentioned in context of GPT-Neo models
- [[stability-ai]] — mentioned for Stable Diffusion's use of cross-attention

## Concepts Mentioned

- [[self-attention]] — the core mechanism for contextualizing token representations
- [[self-attention|scaled dot-product attention]] — the specific attention formulation from "Attention Is All You Need"
- [[multi-head-attention-from-scratch|multi-head attention]] — parallel attention heads for diverse feature learning
- [[cross-attention]] — attention between two different sequences
- [[rotary-positional-embedding|embedding]] — numerical word representations
- [[softmax]] — normalization function for attention weights
- [[transformer-architecture|transformer]] — the architecture built on attention
- [[flash-attention|FlashAttention]] — mentioned as optimized alternative for production use

## Raw Notes

- Uses sentence "Life is short, eat dessert first" as running example
- Demonstrates with 16-dimensional embeddings (real models use thousands)
- Shows how to compute query, key, value vectors via matrix multiplication
- Computes attention scores ω as dot products between queries and keys
- Applies softmax with 1/√d_k scaling for normalization
- Multi-head: extends single-head matrices to h × d' × d dimensions
- Cross-attention: queries from decoder, keys/values from encoder
- Stable Diffusion uses cross-attention between image and text prompts

## Questions / Follow-ups

- How does this implementation compare to PyTorch's native MultiHeadAttention in terms of numerical stability?
- What are the memory bandwidth implications of the naive implementation vs FlashAttention?
