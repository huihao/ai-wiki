---
created: 2026-04-29
updated: 2026-04-29
tags: [diffusion, generative]
sources: 1
---

# Latent Diffusion

## Definition

Running diffusion or flow matching models in a compressed latent space rather than directly in pixel space. An encoder maps images to compact latent representations, the generative model operates in this reduced space, and a decoder reconstructs the final image. Dramatically reduces computational cost while preserving perceptual quality.

## Key Details

- **Encoder/decoder pair**: Autoencoder maps image ↔ latent (e.g., FluxVAE at ×8 compression, DC-AE at ×32)
- **Dimensionality reduction**: Fewer spatial dimensions → faster training, lower memory
- **Latent quality**: Perceptual quality preserved through learned representations
- **Common autoencoders**: VAE (FluxVAE), DC-AE (MIT Han Lab), KL-regularized autoencoders
- **Compression ratios**: ×8 (standard), ×32 (deep compression) — higher ratio = faster but potentially lower quality

## Related Concepts

- [[flow-matching]] — Generative process typically run in latent space
- [[autoencoders]] — Encoder-decoder architecture for latent compression
- [[rectified-flow]] — Simplified flow matching often used in latent space

## Sources

- [[text-to-image-architectural-experiments]] — Photoroom's latent space experiments
