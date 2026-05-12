---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# A Visual Guide to Attention Variants in Modern LLMs

## Metadata

- **Author**: Sebastian Raschka
- **Date**: 2026-03-22
- **URL**: https://magazine.sebastianraschka.com/p/visual-attention-variants
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/transformer/A Visual Guide to Attention Variants in Modern LLMs.md`

## Summary

A comprehensive visual survey of attention mechanisms used in modern open-weight LLMs, comparing MHA, GQA, MLA, SWA, DeepSeek Sparse Attention, Gated Attention, and Hybrid Attention architectures. The article evaluates trade-offs between inference efficiency, implementation complexity, and modeling quality across prominent models.

## Key Takeaways

- **Multi-Head Attention (MHA)** remains the gold standard for modeling quality but is expensive at inference due to large KV-cache footprint.
- **Grouped-Query Attention (GQA)** reduces KV-cache memory by sharing key-value heads across query heads; it is simpler to implement and tune than MLA, making it popular for models <100B parameters.
- **Multi-Head Latent Attention (MLA)**, pioneered by DeepSeek, compresses the KV cache by storing a latent representation rather than full K/V tensors. At scale, it can match or exceed MHA quality while using far less memory.
- **Sliding Window Attention (SWA)** restricts attention to a local token neighborhood, reducing long-context compute. Many models combine SWA with occasional global layers (e.g., Gemma 3 uses 5:1 local-to-global).
- **DeepSeek Sparse Attention (DSA)** uses a learned sparse pattern (indexer + selector) rather than hard-coded locality, letting the model decide which past tokens to revisit.
- **Hybrid Attention** replaces most full-attention layers with cheaper linear or state-space modules (e.g., Gated DeltaNet, Mamba-2), keeping only periodic heavy attention layers for exact retrieval. This trades some modeling quality for dramatically better long-context efficiency.
- GQA and SWA are often used together because they optimize different parts of the inference bottleneck.

## Entities Mentioned

- [[sebastian-raschka]] — Author of the article and the LLM Architecture Gallery.
- [[deepseek-sparse-attention|DeepSeek]] — Introduced MLA and DSA; DeepSeek V3/R1/V3.2 are reference architectures.
- [[moonshot-ai]] — Creator of Kimi K2 and Kimi Linear, which use MLA and hybrid attention.
- [[qwen]] — Qwen3-Next and Qwen3.5 use Gated DeltaNet + Gated Attention hybrids.
- [[google]] — Gemma 3 uses aggressive SWA patterns.
- [[nvidia]] — Nemotron 3 Nano/Super use Mamba-2 hybrids.
- [[meta]] — Llama 4 Maverick uses GQA with chunked attention.
- [[mistral-ai]] — Mistral Small 3.1 and Large 3 use standard GQA or MLA.
- [[minimax]] — MiniMax M2.5 uses classic GQA.
- Sarvam — Released both GQA (30B) and MLA (105B) variants for comparison.
- [[answer-ai-source|Arcee AI]] — Trinity Large uses gated attention with SWA.
- [[xiaomi]] — MiMo uses aggressive SWA with very small windows.
- [[llm-context-scaling-512-to-2m|Ling]] — Ling 2.5 pairs MLA with Lightning Attention hybrid.
- [[trace-declarative-modeling-for-the-ai-age|Allen Institute for AI]] — OLMo 3 uses GQA + SWA.
- GLM — GLM-5 adopts MLA + DSA.

## Concepts Mentioned

- [[multi-head-attention-from-scratch|Multi-head attention]] — Standard transformer attention running several heads in parallel.
- [[grouped-query-attention]] — Sharing K/V heads across multiple query heads to shrink the KV cache.
- [[multi-head-latent-attention]] — Caching a compressed latent representation instead of full K/V tensors.
- [[sliding-window-attention]] — Local attention restricted to a fixed window of recent tokens.
- [[deepseek-sparse-attention]] — Learned sparse attention pattern using an indexer and token selector.
- [[self-attention|Gated attention]] — Modified full-attention block with output gates and zero-centered QK-Norm for stability in hybrid stacks.
- [[hybrid-attention]] — Replacing most attention layers with cheaper linear or state-space modules.
- [[kv-cache|KV cache]] — Stored key and value tensors during autoregressive inference; a major memory bottleneck.
- [[positional-encoding|Linear attention]] — Attention variants with linear-time complexity, e.g., Lightning Attention, DeltaNet.
- [[pytorch|State-space models]] — Mamba-2 and related sequence models used as alternatives to attention.

## Raw Notes

- The author notes that for smaller models (<100B), GQA often works better or is easier to tune than MLA.
- Sarvam’s deliberate choice of GQA for 30B and MLA for 105B is a useful real-world data point on the complexity-vs-quality trade-off.
- Hybrid architectures are still novel; inference stacks are not as optimized for them, so local throughput may lag classic setups.

## Questions / Follow-ups

- When will Mamba-3 layers start replacing Gated DeltaNet in hybrid stacks?
- Can attention residuals be made compatible with GQA/MLA for further efficiency gains?
