---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Ada LayerNorm

## Definition
Ada LayerNorm (Adaptive Layer Normalization) is a normalization technique used in diffusion transformer architectures where the normalization parameters — scale and shift — are dynamically modulated by conditioning signals such as diffusion timesteps or text embeddings. It enables transformer blocks to adapt their behavior based on the current denoising step or external conditioning information.

## Key Aspects
- Extends standard Layer Normalization by conditioning scale and shift parameters on external signals (timestep, class label, or text embedding)
- Core mechanism in DiT (Diffusion Transformer) and related architectures for text-to-image generation
- U-ViT notably does not use AdaLN, instead concatenating conditioning to input tokens directly
- Enables a single transformer network to handle different stages of the diffusion process by modulating internal representations
- Compared in architectural studies: DiT, DiT-Air, MMDiT, and PRX all explore variations of how to inject conditioning information

## Related Concepts
- [[autoencoders]]
- [[attention-manipulation]]

## Sources
- [[dit]]
- [[text-to-image-architectural-experiments]]
