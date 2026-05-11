---
created: 2026-04-28
updated: 2026-04-28
tags: [attention, deepseek, transformer]
sources: 1
---

# DeepSeek Sparse Attention

## Definition

A learned sparse attention mechanism that uses an indexer and token selector to decide which past tokens to revisit, rather than relying on hard-coded locality (as in Sliding Window Attention) or attending to all tokens. The model learns a sparse pattern that preserves important long-range dependencies while skipping irrelevant tokens.

## Key Attributes

- **Learned sparsity**: An indexer + selector mechanism learns which tokens to attend to, rather than using fixed windows.
- **Dynamic patterns**: The sparse pattern can vary per layer, per head, and even per sequence.
- **Key models**: DeepSeek V3/R1/V3.2, GLM-5.

## Related Concepts

- [[multi-head-attention-from-scratch|Multi-head attention]] — the dense baseline
- [[sliding-window-attention]] — hard-coded locality alternative
- [[multi-head-latent-attention]] — another DeepSeek attention innovation
- [[feed-forward-network|Sparse transformer]] — earlier work on fixed sparse patterns
- [[inference-optimization]] — broader class of techniques

## Sources

- [[a-visual-guide-to-attention-variants-in-modern-llms]] — detailed comparison with SWA and hybrid attention

## Evolution

- **2024**: DeepSeek introduces learned sparse attention alongside MLA in V3/R1.
- **2025**: GLM-5 adopts MLA + DSA, validating the pattern outside DeepSeek.
- **Current**: One of the most sophisticated attention optimizations, but requires specialized inference kernels.
