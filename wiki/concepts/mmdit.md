---
created: 2026-04-29
updated: 2026-04-29
tags: [architecture, generative]
sources: 1
---

# Multimodal Diffusion Transformer (MMDiT)

## Definition

A dual-stream transformer architecture for text-to-image generation that jointly processes text and image tokens within a shared attention mechanism. Introduced as part of Stable Diffusion 3. Each stream has its own normalization, modulation, and feed-forward layers, but they share attention for full bidirectional cross-modal communication.

## Key Details

- **Dual-stream**: Parallel text and image token streams with separate parameters
- **Shared attention**: Q/K/V drawn from both modalities during attention computation
- **Per-stream AdaLN**: Each stream has independent normalization modulated by timestep and modality embeddings
- **Best quality**: Achieves best reconstruction and CMMD scores in comparisons
- **Heaviest**: ~3.1B params, highest memory (54.3GB), lowest throughput

## Related Concepts

- [[dit]] — Single-stream predecessor
- [[cross-attention]] — Text conditioning mechanism (MMDiT uses joint attention instead)

## Sources

- [[text-to-image-architectural-experiments]] — Photoroom's architecture comparison
