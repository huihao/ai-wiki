---
created: 2026-04-28
updated: 2026-04-28
tags: [source, tutorial]
sources: 1
---

# Part 3: Model Architecture, Building an LLM from Scratch in Rust

## Metadata

- **Author**: Jeremy Andrews
- **Date**: 2026-01-12
- **URL**: https://www.tag1.com/how-to/part3-model-architecture-building-an-llm-from-scratch/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/Part 3_ Model Architecture, Building an LLM from Scratch in Rust.md`

## Summary

Part 3 of the Feste series implements the GPT-2 transformer architecture in Rust. Covers embeddings, attention, layer normalization, residual connections, and feedforward networks with detailed code explanations.

## Key Takeaways

- Implements GPT-2 (2019) architecture: 12 layers, 768 dims, 12 heads, 1024 context.
- Forward pass: token IDs → embeddings + position embeddings → 12 transformer layers → layer norm → vocabulary logits.
- Attention: Query/Key/Value projections, causal masking, softmax, weighted sum of Values.
- Multi-head attention splits 768-dim embeddings across 12 heads of 64 dims each.
- MLP: 4x expansion (768 → 3072), GELU activation, project back to 768.
- Residual connections enable gradient flow and prevent information bottlenecks.
- Model sizes: tiny (64d, 2 layers), small (128d, 3 layers), medium (256d, 4 layers), full GPT-2 Small (~87M params).

## Entities Mentioned

- Jeremy Andrews — author
- Tag1 — publisher
- OpenAI — GPT-2 creators

## Concepts Mentioned

- [[transformer-architecture]] — GPT-2 implementation
- [[attention-mechanism]] — multi-head self-attention
- [[layer-normalization]] — training stability
- [[residual-connection|Residual connections]] — gradient flow
- [[gelu]] — activation function
- [[building-llm-from-scratch-rust-part1|Rust]] — implementation language

## Questions / Follow-ups

- How does the Rust implementation's performance compare to PyTorch for inference?
