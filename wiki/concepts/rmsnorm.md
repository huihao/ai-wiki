---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# RMSNorm

## Definition

Root Mean Square Layer Normalization. A normalization technique that scales inputs by their RMS without centering (subtracting the mean), unlike standard LayerNorm. Used as pre-normalization in architectures like Llama.

## Key Proponents / Critics

- **Originators**: Zhang and Sennrich (2019)
- **Adopters**: Meta AI (Llama), and many subsequent open-weight models

## Related Concepts

- [[layer-normalization]] — standard normalization with mean subtraction
- [[comprehensive-rag-ollama-langchain|Llama]] — model architecture using RMSNorm
- [[layer-normalization|Pre-normalization]] — applying normalization before sub-layers

## Sources

- [[llama|Llama from scratch]] — implementation and testing of RMSNorm

## Evolution

- Introduced as a simpler alternative to LayerNorm that preserves training stability while reducing computation.
- Has become the default normalization in many modern decoder-only transformers.
