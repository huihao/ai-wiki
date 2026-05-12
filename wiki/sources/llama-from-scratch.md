---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Llama from scratch (or how to implement a paper without crying)

## Metadata

- **Author**: Brian Kitano
- **Date**: 2023-08-09
- **URL**: https://blog.briankitano.com/llama-from-scratch/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Llama from scratch (or how to implement a paper without crying).md`

## Summary

A practical walkthrough of implementing a scaled-down Llama architecture from scratch in PyTorch, training it on TinyShakespeare. Covers iterative debugging, RMSNorm, rotary embeddings (RoPE), SwiGLU, causal masking, and multi-layer transformer blocks.

## Key Takeaways

- Iterative implementation: start with a simple working model, then swap components one at a time.
- Llama modifies the original Transformer with three key changes: RMSNorm, rotary embeddings, and SwiGLU activation.
- RMSNorm scales by variance without centering, applied as pre-normalization.
- RoPE embeds position by rotating embeddings with a different rotation per position.
- Causal masking is essential: without it, the model attends to future tokens and collapses.
- SwiGLU replaces ReLU with a Swish-gated linear unit, improving expressiveness.
- Building multi-layer blocks with residual connections yields the full Llama-style architecture.

## Entities Mentioned

- [[anki|Brian Kitano]] — author
- [[meta|Meta AI]] — original Llama authors
- [[andrej-karpathy]] — referenced for Makemore series and TinyShakespeare
- [[google]] — referenced for SentencePiece tokenizer

## Concepts Mentioned

- [[comprehensive-rag-ollama-langchain|Llama]] — open-weight language model architecture from Meta
- [[rmsnorm]] — root mean square layer normalization
- [[rotary-positional-embedding]] — position encoding via rotation matrices
- [[swiglu]] — Swish-gated linear unit activation function
- [[self-attention|Causal attention]] — masking future tokens in autoregressive models
- [[multi-head-attention-from-scratch|Multi-head attention]] — parallel attention heads
- [[residual-connections]] — adding input to sub-layer output
- [[teacher-forcing]] — implicitly discussed in training setup

## Questions / Follow-ups

- Compare with [[implementing-a-transformer-from-scratch]] for architectural evolution from 2017 to 2023.
