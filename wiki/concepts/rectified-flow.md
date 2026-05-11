---
created: 2026-04-29
updated: 2026-04-29
tags: [diffusion, generative]
sources: 1
---

# Rectified Flow

## Definition

A simplified variant of flow matching in which samples follow a linear transport path between noise and data distributions. The optimal flow field becomes time-independent, eliminating the need to model time-dependent dynamics while preserving deterministic generative capability.

## Key Details

- **Linear transport**: x_t = (1-t)·noise + t·data (straight line from noise to data)
- **Time-independent velocity**: v = data - noise (constant field)
- **Training loss**: MSE between predicted and ground-truth velocity
- **Advantages**: No stochastic SDEs, no complex noise schedules, computationally efficient
- **Used in**: Text-to-image models (PRX, Flux, SD3), diffusion model training

## Related Concepts

- [[flow-matching]] — General framework that rectified flow simplifies
- [[latent-diffusion]] — Running flow matching in compressed latent space

## Sources

- [[text-to-image-architectural-experiments]] — Photoroom's PRX architecture comparison
