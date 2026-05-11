---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Quantization from the ground up — ngrok blog

## Metadata

- **Author**: Sam Rose
- **Date**: 2026-03-25
- **URL**: https://ngrok.com/blog/quantization
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/transformer/Quantization from the ground up _ ngrok blog.md`

## Summary

An interactive, beginner-friendly deep dive into post-training quantization (PTQ) for LLMs. It explains float representations, symmetric vs asymmetric quantization, block-wise quantization, and evaluates perplexity/KL-divergence/benchmark quality across 8-bit, 4-bit, and 2-bit quantization of Qwen3.5 9B using llama.cpp.

## Key Takeaways

- LLM parameters cluster near zero, which means they map well to the dense representable range of low-bit floats.
- **Symmetric quantization** squashes around zero; **asymmetric quantization** squashes around the data midpoint, reducing average error by ~10% for the same bit width.
- Quantizing in blocks (32–256 parameters) isolates the damage from outliers.
- 16-bit → 8-bit carries almost no quality penalty. 16-bit → 4-bit is noticeable but still ~90% of original quality. 2-bit collapses utility.
- llama.cpp `llama-quantize` and `llama-perplexity` are practical tools for measuring PTQ impact.

## Entities Mentioned

- [[sam-rose]] — Author.
- [[qwen]] — Qwen3.5 9B used as the benchmark model.
- [[quantization|ngrok]] — Publisher; offers an AI gateway product.

## Concepts Mentioned

- [[quantization]] — Lossy compression of weights/activations to lower precision.
- [[awesome-llm-post-training|Post-training quantization]] — Quantizing an already-trained model.
- bfloat16 / float8 / float4 — Common low-precision formats.
- Perplexity — Metric for evaluating quantization quality.
- KL divergence — Measures divergence between original and quantized output distributions.
- [[quantization|Block-wise quantization]] — Isolating outliers by quantizing in small blocks.

## Raw Notes

- The article includes interactive widgets for exploring float32, float16, bfloat16, float8, and float4 representations.
- GPQA Diamond benchmark results showed 8-bit quantization sometimes scoring *higher* than bfloat16—likely noise/random chance.
- 2-bit quantization caused the model to refuse answers and produce empty reasoning traces.

## Questions / Follow-ups

- How does quantization-aware training (QAT) compare to PTQ for sub-4-bit targets?
- What is the interaction between quantization and KV-cache compression methods like MLA or TurboQuant?
