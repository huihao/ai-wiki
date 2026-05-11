---
created: 2026-04-29
updated: 2026-05-09
tags: [generative, machine-learning]
sources: 1
---

# Generative Modeling

## Definition

Generative modeling is the task of learning a data distribution so that new samples can be drawn from it. Modern generative models learn a mapping from a simple noise distribution (e.g., Gaussian) to a complex data distribution through iterative denoising or transport-based transformations. Flow matching and diffusion models are two equivalent frameworks for this task, as demonstrated by Google DeepMind.

## Key Aspects

- **Flow Matching Framework**: Uses linear interpolation between data and noise samples; the model learns a velocity field that transports noise to data along these paths
- **Equivalence to Diffusion**: Flow matching and diffusion models are mathematically equivalent — DDIM sampling is identical to the flow matching Euler sampler
- **U-prediction**: The network output proposed by flow matching (u-prediction) balances x-prediction and epsilon-prediction, providing a natural parameterization
- **Noise Schedule Importance**: The choice of noise schedule (variance-preserving, cosine, etc.) affects path straightness and training efficiency
- **Stochastic Sampling**: Contrary to common belief, stochastic sampling (DDPM-style) can also be applied to flow matching models

## Related Concepts
- [[gans]]
- [[gans]]
- [[implicit-regularization]]

## Sources
- [[diffusion-meets-flow-matching]]
