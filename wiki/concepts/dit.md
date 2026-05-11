---
created: 2026-04-29
updated: 2026-04-29
tags: [architecture, generative]
sources: 1
---

# Diffusion Transformer (DiT)

## Definition

A transformer-based architecture for image generation in diffusion models. Replaces the U-Net backbone with transformer blocks, using adaptive layer normalization (AdaLN) for timestep conditioning. The PixArt-α variant adds cross-attention for text conditioning.

## Key Details

- **Transformer blocks**: Self-attention + feed-forward layers replacing U-Net convolutions
- **AdaLN (Adaptive LayerNorm)**: Normalization parameters modulated by timestep embedding
- **PixArt-α variant**: Adds cross-attention between self-attention and FFN for text fusion
- **Baseline for T2I**: Widely adopted foundation (Wan, many others)
- **Parameters**: ~867M at the scale tested by Photoroom

## Related Concepts

- [[mmdit]] — Multimodal dual-stream extension of DiT
- [[cross-attention]] — Text conditioning mechanism
- [[ada-layernorm]] — Timestep/conditioning modulation

## Sources

- [[text-to-image-architectural-experiments]] — Photoroom's architecture comparison
