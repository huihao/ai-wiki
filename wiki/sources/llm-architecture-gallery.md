---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# LLM Architecture Gallery

## Metadata

- **Author**: Sebastian Raschka
- **Date**: 2026-04-26
- **URL**: https://sebastianraschka.com/llm-architecture-gallery/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/transformer/LLM Architecture Gallery.md`

## Summary

An interactive gallery collecting architecture fact sheets for 30+ prominent open-weight LLMs, from GPT-2 XL through Gemma 4. Each card includes scale, context length, attention type, layer mix, KV-cache size per token, and key architectural details. A built-in diff tool allows side-by-side model comparisons.

## Key Takeaways

- The gallery spans dense, sparse MoE, and hybrid architectures from late 2019 to early 2026.
- KV-cache per token varies dramatically: from 6 KiB (Nemotron 3 Nano) to 840 KiB (Gemma 4 31B dense).
- Notable recent trends: adoption of MLA (DeepSeek V3/R1/Mistral Large 3), aggressive SWA (Gemma 3/4, Xiaomi), hybrid Mamba-2 stacks (Nemotron 3), and GQA becoming the default for dense models.
- OLMo 3 retains post-norm and MHA in the 7B variant, making it a useful "classic" reference point.
- Gemma 4 introduces unified K/V on global layers and p-RoPE, while keeping the 5:1 local:global ratio.

## Entities Mentioned

- [[sebastian-raschka]] — Creator of the gallery.
- [[openai]] — GPT-2 XL, GPT-OSS.
- [[meta]] — Llama 3, Llama 3.2, Llama 4 Maverick.
- [[deepseek-sparse-attention|DeepSeek]] — DeepSeek V3, R1, V3.2.
- [[google]] — Gemma 3, Gemma 4.
- [[mistral-ai]] — Mistral Small 3.1, Large 3.
- [[moonshot-ai]] — Kimi K2, Kimi Linear.
- [[alibaba]] — Qwen3 series, Qwen3 Next.
- [[trace-declarative-modeling-for-the-ai-age|Allen Institute for AI]] — OLMo 2, OLMo 3.
- [[nvidia]] — Nemotron 3 Nano/Super.
- [[phi-4-microsoft-collection|Microsoft]] — Phi-4.
- [[minimax]] — MiniMax M2.
- [[xiaomi]] — MiMo-V2-Flash.
- [[answer-ai-source|Arcee AI]] — Trinity Large.
- GLM — GLM-4.5, GLM-4.7, GLM-5.
- Sarvam — 30B GQA and 105B MLA variants.

## Concepts Mentioned

- [[transformer-architecture]] — Decoder-only stacks with various attention and normalization choices.
- [[grouped-query-attention]] — Default for many dense models (Llama, Qwen, Mistral).
- [[multi-head-latent-attention]] — Used by DeepSeek, Kimi, and Mistral Large 3.
- [[sliding-window-attention]] — Gemma and Xiaomi families.
- [[mixture-of-experts]] — DeepSeek V3/R1, Qwen3 235B, Llama 4, Nemotron 3.
- [[hybrid-attention]] — Nemotron 3 (Mamba-2 + GQA), Qwen3 Next/Kimi Linear (DeltaNet + attention).
- [[kv-caching|KV cache]] — Per-token cache sizes are a headline metric in the gallery.
- [[rope]] / QK-Norm / YaRN — Positional and normalization variations noted per model.

## Raw Notes

- The gallery includes KV-cache calculation pages explaining how per-token sizes are derived.
- Physical posters and digital downloads are available via Redbubble and Gumroad.
- An issue tracker is open for corrections.

## Questions / Follow-ups

- Will the gallery add training-cost or pre-training data-mix fact sheets in the future?
- Can we extract a structured dataset from the gallery for automated architecture analysis?
