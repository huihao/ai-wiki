---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Autoencoders

## Definition
Autoencoders are neural networks that learn compressed representations of data by encoding inputs into a lower-dimensional latent space and then decoding back to reconstruct the original input. In modern generative AI, deep-compression autoencoders (DC-AE) achieve dramatic spatial compression (up to 32x), enabling efficient latent diffusion for text-to-image generation.

## Key Aspects
- Two-part architecture: encoder maps input to latent representation, decoder reconstructs from latent to output
- Training objective is reconstruction loss (minimizing difference between input and output)
- Deep-Compression Autoencoders (DC-AE from MIT Han Lab) achieve 32x spatial compression vs. 8x with FluxVAE
- Critical component of latent diffusion models — running diffusion in compressed latent space reduces compute dramatically
- Used in text-to-image pipelines where the autoencoder compresses images before diffusion and decompresses after
- Trade-off between compression ratio and perceptual quality at high resolutions

## Related Concepts
- [[ada-layernorm]]
- [[autoregressive-generation]]

## Sources
- [[latent-diffusion]]
- [[text-to-image-architectural-experiments]]
