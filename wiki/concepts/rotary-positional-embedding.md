---
created: 2026-05-11
updated: 2026-05-11
tags: [concept]
sources: 0
---

# Rotary positional embedding (RoPE)

## Definition

A positional encoding method that encodes absolute position via rotation matrices while incorporating relative position information into the attention computation. Used in most modern LLMs (Llama, Mistral, Gemma). The key insight: rotating query and key vectors by their respective position angles makes the dot product between them naturally depend on relative distance, with natural decay for distant tokens.

## Related Concepts

- [[rotary-position-embeddings]] — The broader category; RoPE is the specific implementation
- [[absolute-positional-embeddings]] — The predecessor approach using sinusoidal fingerprints
- [[position-interpolation]] — Context extension method compressing positions into training range
- [[ntk-aware-scaling]] — Frequency-based extension modifying RoPE base
- [[yarn]] — Combined NTK-by-parts + attention scaling for 128K+ contexts
- [[transformer-architecture]] — The architecture RoPE is designed for

## Evolution

From Absolute PE (512 tokens) → RoPE (training range) → Position Interpolation (32K) → NTK-Aware → YaRN (128K+). Each generation extended context length while preserving the core rotational insight.
