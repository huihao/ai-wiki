---
created: 2026-04-29
updated: 2026-04-29
tags: [diffusion, generative, sampling]
sources: 1
---
# DDIM

## Definition

Denoising Diffusion Implicit Models (DDIM) is a non-Markovian sampling method for diffusion models that enables faster generation by skipping timesteps while maintaining the ability to map noise to data. It reinterprets the diffusion process as an ordinary differential equation (ODE) rather than a stochastic differential equation.

## Key Concepts

- DDIM accelerates sampling by allowing arbitrary subsets of timesteps during generation
- The original DDPM process is a Markov chain requiring all T timesteps (typically T=1000)
- DDIM constructs a non-Markovian process that has the same marginal distributions but is deterministic
- When eta=0, DDIM becomes fully deterministic: the same noise always produces the same image
- When eta=1, DDIM reduces to the original DDPM sampling process
- DDIM enables meaningful latent space interpolation due to its deterministic mapping
- The deterministic mapping allows semantic editing by manipulating the noise vector
- Fewer timesteps (e.g., 50-100) can be used with minimal quality loss compared to DDPM
- DDIM is foundational to many subsequent improvements in diffusion model sampling

## Related Concepts

- [[score-function]]
- [[sde-ode]]
- [[noise-schedule]]
- [[v-prediction]]

## Sources

- [[diffusion-meets-flow-matching]]
