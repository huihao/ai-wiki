---
created: 2026-04-29
updated: 2026-04-29
url: "https://huggingface.co/blog/Photoroom/prx-part1-architectures"
title: "Text-to-image Architectural Experiments"
tags: [source, diffusion, transformers, text-to-image]
source: unknown
---

# Text-to-image Architectural Experiments

**Author:** Photoroom team (PRX project)
**Published:** November 13, 2025
**URL:** https://huggingface.co/blog/Photoroom/prx-part1-architectures

## Summary

A technical deep-dive into architectural choices for training a text-to-image foundation model from scratch. Photoroom evaluated DiT, MMDiT, DiT-Air, U-ViT, and their custom PRX architecture under comparable conditions to find the best efficiency-quality trade-off. Also explores T5Gemma as a modern text encoder replacement and Deep-Compression Autoencoders for latent space efficiency.

## Key Takeaways

1. **Rectified flow matching**: Deterministic velocity field transport from noise to data via linear path, no stochastic SDEs. Loss = MSE between predicted and ground-truth velocity.
2. **Five architectures compared**: DiT (867M), DiT-Air (689M), MMDiT (3.1B), PRX (1.2B), U-ViT (696M) — all at small scale to predict large-scale behavior.
3. **PRX (Photoroom eXperimental)**: Best overall trade-off — matches MMDiT reconstruction quality, better FID, highest throughput (1059.9), lowest memory (23.8GB). Text tokens processed independently, cached at inference.
4. **MMDiT**: Best reconstruction and CMMD scores, but heaviest (3.1B params), lowest throughput, highest memory (54.3GB).
5. **DiT-Air**: 66% fewer params than MMDiT, 25% fewer than PixArt-α, strong balance of efficiency and quality.
6. **U-ViT**: U-shaped topology with Transformer blocks, no AdaLN, concatenates conditioning to input tokens.
7. **T5Gemma 2B**: Drop-in replacement for T5-XXL (11B) — fewer params, smaller embeddings, better evaluation loss, multilingual support.
8. **Deep-Compression Autoencoders**: DC-AE achieves ×32 spatial compression (vs FluxVAE ×8), dramatically reducing latent resolution.
9. **Text token caching**: PRX omits timestep modulation for text stream (static across timesteps), enabling one-time projection and caching.

## Entities Mentioned

- **Photoroom** — Company behind PRX architecture
- **Peebles & Xie** — DiT paper authors
- **Esser et al.** — MMDiT/Stable Diffusion 3 authors
- **Li et al.** — DiT-Air paper authors
- **Bao et al.** — U-ViT paper authors
- **Lipman et al.** — Flow matching paper authors
- **Liu et al.** — Rectified flow paper authors
- **Han Lab (MIT)** — DC-AE autoencoder developers

## Concepts Mentioned

- [[flow-matching]] — Deterministic velocity field for generative modeling
- [[rectified-flow]] — Linear transport path simplification of flow matching
- [[latent-diffusion]] — Running diffusion in compressed latent space
- [[dit]] — Diffusion Transformer architecture
- [[mmdit]] — Multimodal Diffusion Transformer with dual-stream attention
- [[cross-attention]] — Text conditioning mechanism in transformer blocks
- [[ada-layernorm]] — Adaptive normalization modulated by timestep/conditioning
- [[clip-mmd]] — CLIP-based evaluation metric for text-image alignment
- [[text-encoders]] — T5, T5Gemma for mapping text to embeddings
- [[autoencoders]] — Encoder-decoder for latent space compression

## Raw Notes

| Model | Params | FID ↓ | CMMD ↓ | Throughput ↑ | Memory ↓ |
|---|---|---|---|---|---|
| DiT | 867M | 14.02 | 0.253 | 1046.6 | 27.2 |
| DiT-Air | 689M | 13.16 | 0.244 | 972.5 | 25.4 |
| MMDiT | 3.1B | 13.81 | 0.19 | 761.3 | 54.3 |
| PRX | 1.2B | 13.16 | 0.217 | 1059.9 | 23.8 |
| U-ViT | 696M | 14.6 | 0.239 | 914.7 | 25.2 |

- PRX block: text and image tokens processed independently, concatenated for self-attention, only image tokens attend
- Evaluation: batch 256, 16 transformer blocks, 28 attention heads, 1792 embedding dim, Flux VAE, GemmaT5 text encoder, RoPE
- DiT-Air paper showed small-scale efficiency predicts large-scale behavior

## Questions / Follow-ups

- How does PRX scale to multi-billion parameter models?
- What are the training techniques covered in part 2 of this series?
- How does DC-AE ×32 compression affect perceptual quality at high resolutions?
