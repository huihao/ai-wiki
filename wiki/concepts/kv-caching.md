---
created: 2026-04-28
updated: 2026-04-28
tags: [inference]
sources: 3
---

# KV caching

## Definition

KV caching is an inference optimization technique in transformer models that stores the Key (K) and Value (V) matrices from previous tokens, avoiding redundant recomputation during autoregressive generation. This enables providers to offer cached input tokens at roughly 10x lower cost.

The KV cache grows linearly with context length and is the primary hidden VRAM killer in local LLM inference, often dwarfing model weights at large contexts.

## Key Proponents / Critics

- **Implementers**: OpenAI (automatic), Anthropic (explicit control)
- **Explainer**: Sam Rose (ngrok blog detailed walkthrough)
- **VRAM Analyst**: Lyx (Medium article on consumer GPU memory constraints)

## Related Concepts

- [[attention-mechanisms]] — where K and V matrices are computed
- [[grouped-query-attention]] — reduces KV-cache memory by sharing K/V heads
- [[multi-head-latent-attention]] — compresses KV cache via latent representations
- [[inference-optimization]] — latency and cost reduction
- [[prompt-caching-ngrok|Prompt caching]] — API-level feature built on KV caching
- [[quantization]] — can also compress the KV cache

## Sources

- [[how-llm-understands-input-math|Prompt Caching: 10x Cheaper LLM Tokens, But How?]]
- [[understanding-coding-kv-cache-raschka|Understanding and Coding the KV Cache]] — Sebastian Raschka's from-scratch implementation with performance comparisons
- [[context-kills-vram-consumer-gpus]] — VRAM breakdown formula, per-token memory cost, architecture impact (GQA vs MHA vs MLA)

## Evolution

- Early transformers: no caching, full recomputation per token.
- Standard optimization: KV cache became standard in inference frameworks (vLLM, TensorRT-LLM).
- 2024-2025: API providers began exposing caching as a billed feature with significant discounts.
- Current trade-off: Linear memory growth vs quadratic computation; long context makes memory the bottleneck. Pre-allocation and sliding window truncation are key optimizations.
