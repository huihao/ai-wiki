---
created: 2026-04-28
updated: 2026-04-28
tags: [deep-learning, generative]
sources: 0
---

# Diffusion Models

## Definition

Diffusion models are a class of generative models that learn to reverse a gradual noising process. Starting from random noise, they iteratively denoise to generate high-quality samples (images, audio, video). They have become the dominant approach for image generation, supplanting GANs and VAEs.

## Key Proponents / Critics

- **Jonathan Ho, Ajay Jain, Pieter Abbeel** — Denoising Diffusion Probabilistic Models (DDPM, 2020)
- **Yang Song, Stefano Ermon** — Score-based generative models
- **Robin Rombach, Andreas Blattmann** — Stable Diffusion (latent diffusion)
- **Giulio Biroli, Marc Mezard** — theoretical analysis of diffusion training dynamics

## Related Concepts

- [[diffusion-meets-flow-matching|Flow Matching]] — alternative training objective, mathematically equivalent to diffusion
- [[diffusion-meets-flow-matching|Latent Diffusion]] — operating in compressed latent space for efficiency
- [[pytorch|Score-Based Models]] — learning the gradient of data distribution
- Implicit Dynamical Regularization — training dynamics that prevent memorization
- Generalization — diffusion models generalize before memorizing

## Sources

- [[diffusion-meets-flow-matching]] — equivalence of diffusion and flow matching
- [[neurips|neurips-2025-best-paper-awards]] — theoretical analysis of diffusion generalization

## Evolution

- 2015: Sohl-Dickstein et al. introduced diffusion probabilistic models
- 2020: DDPM showed high-quality image generation
- 2022: Stable Diffusion brought latent diffusion to mainstream
- 2024–2025: Flow matching emerged as a simpler, equivalent formulation
- Open question: How do diffusion models generalize without memorizing? (NeurIPS 2025 best paper)
