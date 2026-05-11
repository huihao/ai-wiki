---
created: 2026-04-28
updated: 2026-04-28
tags: [attention, inference, transformer]
sources: 1
---

# Multi-Head Latent Attention

## Definition

An attention mechanism pioneered by DeepSeek that compresses the KV cache by storing a low-dimensional latent representation instead of full key and value tensors. During inference, the full K and V matrices are reconstructed on-the-fly from the cached latent vector, dramatically reducing memory usage at scale.

## Key Attributes

- **Cache compression**: Stores a latent vector rather than full K/V tensors; can match or exceed MHA quality while using far less memory.
- **Scale-dependent**: Complexity overhead is amortized at large scale; for smaller models (<100B parameters), GQA is often simpler and equally effective.
- **Key models**: DeepSeek V3, R1, V3.2; Moonshot AI Kimi K2 and Kimi Linear.

## Related Concepts

- [[multi-head-attention-from-scratch|Multi-head attention]] — the full-attention baseline
- [[grouped-query-attention]] — simpler KV-cache reduction alternative
- [[kv-caching|KV cache]] — the memory bottleneck MLA targets
- [[deepseek-sparse-attention]] — another DeepSeek attention innovation
- [[inference-optimization]] — broader class of techniques

## Sources

- [[a-visual-guide-to-attention-variants-in-modern-llms]] — comparison with GQA and other variants

## Evolution

- **2024**: DeepSeek introduces MLA in DeepSeek V2/V3, demonstrating that latent caching can rival full MHA in quality.
- **2025**: Moonshot AI adopts MLA for Kimi K2, validating the approach outside DeepSeek.
- **Current**: The preferred attention variant for very large models where KV-cache memory dominates.
