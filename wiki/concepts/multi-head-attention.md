---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture, attention, transformer]
sources: 2
---

# Multi-Head Attention

## Definition

An extension of self-attention that uses multiple independent attention heads operating in parallel. Each head can potentially learn to focus on different parts of the input sequence, capturing various aspects or relationships within the data. The outputs from all heads are concatenated and linearly projected to produce the final result.

## Key Proponents / Critics

- **Proponents:** [[vaswani-et-al|Vaswani et al.]] — introduced in original transformer paper
- **Expositors:** [[sebastian-raschka]] — detailed coding tutorials

## Related Concepts

- [[self-attention]] — the base mechanism
- [[self-attention|attention head]] — individual parallel attention computation
- [[transformers|transformer]] — the architecture using multi-head attention
- [[grouped-query-attention]] — KV-cache reduction via shared K/V heads
- [[multi-head-latent-attention]] — KV-cache compression via latent representations
- [[sliding-window-attention]] — local attention for long-context efficiency
- [[deepseek-sparse-attention]] — learned sparse attention patterns
- [[hybrid-attention]] — combining attention with linear/state-space layers
- [[convolutional-neural-network|CNN]] — analogy: multiple kernels produce multiple channels
- [[rope|embedding]] — concatenated head outputs modify the representation

## Sources

- [[self-attention|understanding-coding-self-attention-raschka]]
- [[self-attention|coding-self-attention-multi-head-causal-cross-raschka]]

## Evolution

- **2017:** Introduced in "Attention Is All You Need" with 8 heads
- **2019:** GPT-2 used 12 heads; GPT-3 scaled to 96 heads
- **2022:** Llama 2 7B uses 32 attention heads
- **Current:** Number of heads scales with model size; remains a core design choice
