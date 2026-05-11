---
created: 2026-04-29
updated: 2026-05-09
tags: [generative, machine-learning]
sources: 2
---

# GAN Training

## Definition
GAN (Generative Adversarial Network) training is a machine learning paradigm where two neural networks -- a generator and a discriminator -- compete against each other in a minimax game. The generator creates synthetic data to fool the discriminator, while the discriminator learns to distinguish real data from generated data, driving both toward improved performance through adversarial dynamics.

## Key Aspects
- The generator learns to map random noise to data samples that resemble the training distribution
- The discriminator outputs a probability that a given sample is real vs. generated
- Training alternates between updating the generator (maximizing discriminator error on fakes) and discriminator (minimizing classification error)
- Mode collapse: generator produces limited variety of outputs, failing to capture full data distribution
- Training instability: oscillating losses, vanishing gradients when discriminator becomes too strong
- Connections to online learning: the adversarial dynamic resembles online optimization against an adaptive opponent
- Regret minimization frameworks provide theoretical grounding for convergence properties of GAN training dynamics

## Related Concepts
- [[generalization]]
- [[fp8-training]]

## Sources
- [[online-learning]]
- [[regret-minimization]]
