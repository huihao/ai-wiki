---
created: 2026-04-28
updated: 2026-04-28
tags: [attention, nlp, transformer]
sources: 3
---

# Self-Attention

## Definition

A mechanism that enables a model to weigh the importance of different elements in an input sequence and dynamically adjust their influence on the output. In self-attention, each position in the sequence attends to all other positions in the same sequence, producing a context-aware representation.

## Key Proponents / Critics

- **Proponents:** [[vaswani-et-al|Vaswani et al.]] — introduced in "Attention Is All You Need" (2017)
- **Expositors:** [[sebastian-raschka]], [[jay-alammar]] — popular tutorials

## Related Concepts

- [[multi-head-attention-from-scratch|multi-head attention]] — parallel self-attention heads
- [[self-attention|causal attention]] — masked variant for autoregressive models
- [[cross-attention]] — attention between two different sequences
- [[self-attention|scaled dot-product attention]] — the standard formulation
- [[transformers|transformer]] — the architecture built on self-attention
- [[rope|embedding]] — input representations that self-attention enriches
- [[vector-embeddings-mallya|query]], [[vector-embeddings-mallya|key]], [[vector-embeddings-mallya|value]] — the three projections in attention

## Sources

- [[self-attention|understanding-coding-self-attention-raschka]]
- [[self-attention|coding-self-attention-multi-head-causal-cross-raschka]]
- [[what-is-chatgpt-doing-wolfram]]

## Evolution

- **2017:** Introduced in "Attention Is All You Need" as a replacement for RNNs in sequence modeling
- **2018-2020:** Became the dominant architecture for NLP (BERT, GPT series)
- **2020+:** Extended to vision (ViT), multimodal models, and beyond
- **Current:** Remains the core mechanism of virtually all large language models
