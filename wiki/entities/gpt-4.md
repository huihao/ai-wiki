---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 1
---

# GPT-4

## Summary
GPT-4 is a large language model developed by OpenAI and is the fourth generation in the Generative Pre-trained Transformer series. As a decoder-only transformer, it follows the architectural lineage of GPT-2, with scaled-up parameters, training data, and context window. The GPT architecture serves as a reference implementation for building LLMs from scratch, as demonstrated in Rust-based implementations that reproduce its structure.

## Key Aspects

- **Decoder-Only Transformer**: Uses masked multi-head self-attention with causal masking; the same architecture implemented in the "Building an LLM from Scratch in Rust" series
- **GPT-2 Reference Architecture**: GPT-4 follows the same structural pattern as GPT-2 (12 layers, 768 dims, 12 heads in the base model), scaled to hundreds of billions of parameters
- **Forward Pass**: Token IDs -> Token Embeddings + Position Embeddings -> N Transformer Layers (each with multi-head attention + MLP) -> Layer Norm -> Vocabulary Logits
- **Multi-Head Attention**: Splits the embedding dimension across multiple heads (e.g., 768 dims / 12 heads = 64 dims per head), each computing independent attention
- **MLP Block**: 4x expansion (768 to 3072), GELU activation, project back to 768 — a pattern replicated at scale in GPT-4

## Related Concepts
- [[gpt-applications]]
- [[generative-modeling]]

## Sources
- [[building-llm-from-scratch-rust-part3]]
