---
created: 2026-04-29
updated: 2026-04-29
tags: [source, generative-ai, diffusion, flow-matching, deep-learning]
sources: 1
url: "https://diffusionflow.github.io/"
title: "Diffusion Meets Flow Matching"
---

# Diffusion Meets Flow Matching

## Summary

A technical blog post from Google DeepMind demonstrating that diffusion models and Gaussian flow matching are mathematically equivalent frameworks for generative modeling. The article clarifies common misconceptions about their differences, showing that DDIM sampling is equivalent to the flow matching Euler sampler, and that the "straight paths" property of flow matching is a misnomer for realistic data distributions.

## Key Takeaways

- Diffusion models and Gaussian flow matching are equivalent -- they can be used interchangeably with appropriate parameter conversions
- DDIM sampler is equivalent to the flow matching Euler sampler and is invariant to linear scaling of the noise schedule
- The "straight paths" property of flow matching only holds for a model predicting a single point; for realistic distributions, other schedules can give straighter paths
- The flow matching weighting function coincides with commonly used diffusion training weightings (v-MSE loss + cosine noise schedule)
- The network output proposed by flow matching (u-prediction) nicely balances x-prediction and epsilon-prediction
- Stochastic sampling (like DDPM) can also be applied to flow matching models, contrary to the common belief that flow matching is always deterministic
- The renoising step in DDPM sampling reverses exactly half the progress made by DDIM, leaving the overall distribution unchanged

## Entities Mentioned

- [[google-deepmind]] -- research lab behind this work
- [[sander-dieleman]] -- acknowledged contributor
- [[ben-poole]] -- acknowledged contributor

## Concepts Mentioned

- [[diffusion-models]] -- generative models that gradually destroy and reconstruct data via noise processes
- [[flow-matching]] -- generative modeling framework using linear interpolation between data and noise
- [[ddim]] -- Denoising Diffusion Implicit Models, a deterministic sampling method
- [[score-function]] -- gradient of log probability used in diffusion model sampling
- [[sde-ode]] -- Stochastic/Ordinary Differential Equations describing forward and reverse processes
- [[noise-schedule]] -- functions controlling how noise is added over time (variance-preserving, etc.)
- [[v-prediction]] -- network output parameterization combining x and epsilon predictions

## Raw Notes

- Includes a Google Colab notebook for reproducing the plots and animations
- The mathematical equivalence is shown through reparameterization of the sampling ODE
- Discusses how the weighting function balances high and low frequency components in perceptual data
