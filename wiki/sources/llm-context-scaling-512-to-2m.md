---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, context-length, positional-encoding, rope, yarn]
sources: 1
---

# How LLMs Scaled from 512 to 2M Context: A Technical Deep Dive

## Metadata

- **Author**: Aman Arora
- **Date**: 2025-09-21
- **URL**: https://amaarora.github.io/posts/2025-09-21-rope-context-extension.html
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How LLMs Scaled from 512 to 2M Context_ A Technical Deep Dive.md`

## Summary

A comprehensive technical guide through the evolution of positional encodings in LLMs. Covers APE, RoPE, Position Interpolation, NTK-Aware Scaling, Dynamic Scaling, NTK-By-Parts, and YaRN — the techniques that enabled scaling context from 512 tokens (original Transformer) to 2M+ tokens (Grok-4-fast). Includes PyTorch implementations and intuitive explanations.

## Key Takeaways

- **Original Transformer**: 512 token context with sinusoidal APE.
- **RoPE (2021)**: Rotary Position Embedding — encodes absolute position via rotation matrix while incorporating relative position in attention. Now standard in Llama, Mistral, Gemma, Qwen, DeepSeek.
- **Extrapolation problem**: Models memorize position encodings rather than learning underlying math; fail catastrophically beyond training length.
- **Position Interpolation**: Compress longer sequences into training range by scaling positions. kaiokendev's breakthrough: scale RoPE frequencies by 0.25.
- **NTK-Aware Scaling**: Modify base frequency instead of positions. Slows all rotation frequencies proportionally.
- **Dynamic Scaling**: Adjust scaling factor based on actual sequence length (adopted by Qwen).
- **NTK-By-Parts**: Different scaling for different frequency bands — high frequencies use linear interpolation, low frequencies use NTK scaling.
- **YaRN**: Combines NTK-by-parts with attention temperature scaling. Extends to 128K+ with <1% pretraining compute. Used by most modern LLMs.

## Entities Mentioned

- Aman Arora — author, timmdocs creator
- kaiokendev — discovered position interpolation breakthrough
- bloc97 — NTK-aware scaling and NTK-by-parts
- [[meta]] — Position Interpolation paper (Chen et al. 2023)
- [[machine-learning|Nous Research]] — YaRN authors
- [[xai]] — Grok-4-fast with 2M context
- [[google]] — Gemini with 1M context

## Concepts Mentioned

- [[projective-ray-positional-encoding|Positional encoding]] — APE, RoPE
- [[context-engineering|Context window extension]] — techniques for longer sequences
- [[rotary-positional-embedding|Rotary position embedding]] — rotation-based position encoding
- Position interpolation — compressing positions into training range
- [[llm-context-scaling-512-to-2m|NTK-aware scaling]] — frequency-based context extension
- YaRN — Yet Another RoPE extensioN with temperature scaling
- [[self-attention|Attention temperature]] — scaling softmax logits for stability

## Raw Notes

See raw file for full PyTorch implementations and visualizations.

## Questions / Follow-ups

- How do these techniques interact with KV caching and speculative decoding?
