---
created: 2026-04-28
updated: 2026-04-28
tags: [attention, inference, transformer]
sources: 2
---

# Grouped-Query Attention

## Definition

An attention mechanism that reduces the memory footprint of the KV cache by sharing key and value heads across multiple query heads. Instead of every query head having its own K and V projections (as in standard Multi-Head Attention), GQA groups query heads together so that each group shares a single K/V head.

Widely adopted in modern models like LLaMA-2/3, Mistral, and Qwen, GQA is a key reason these models support longer contexts within consumer-grade VRAM constraints.

## Key Attributes

- **KV-cache reduction**: Shrinks memory by a factor equal to the group size (e.g., 4× or 8×)
- **Implementation complexity**: Simpler to implement and tune than Multi-Head Latent Attention, making it popular for models <100B parameters
- **Quality trade-off**: Slightly lower modeling quality than MHA, but often imperceptible in practice
- **Common pairings**: Frequently combined with Sliding Window Attention because they optimize different inference bottlenecks
- **VRAM impact**: Consistently uses less memory than MHA at same context length, making long contexts feasible on consumer GPUs

## Related Concepts

- [[multi-head-attention-from-scratch|Multi-head attention]] — the full-attention baseline
- [[multi-head-latent-attention]] — alternative compression approach using latent representations
- [[kv-caching|KV cache]] — the memory bottleneck GQA targets
- [[sliding-window-attention]] — often used together with GQA
- [[inference-optimization]] — broader class of techniques

## Sources

- [[a-visual-guide-to-attention-variants-in-modern-llms]] — comprehensive comparison across models
- [[context-kills-vram-consumer-gpus]] — VRAM measurements comparing MHA vs GQA, consumer GPU benchmarks

## Evolution

- **2023**: Introduced as an optimization to reduce inference memory in large decoder models.
- **2024–2025**: Adopted by Meta (Llama 2/3/4), Mistral, MiniMax, and many open-weight models.
- **Current**: The default attention variant for most production models under 100B parameters.
