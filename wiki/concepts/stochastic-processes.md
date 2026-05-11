---
created: 2026-04-29
updated: 2026-05-09
tags: [mathematics]
sources: 2
---

# Stochastic Processes

## Definition

A stochastic process is a mathematical framework describing a system that evolves over time according to probabilistic rules, where the next state depends on (or is independent of) the current state. In the context of language models, stochastic processes underpin autoregressive generation, where each token is sampled from a conditional probability distribution.

## Key Aspects

- Markov processes form the foundation of autoregressive language models: each token depends only on the preceding tokens (or a limited context window)
- Autoregressive models generate text by iteratively sampling from conditional distributions P(x_t | x_1, ..., x_{t-1})
- Temperature and sampling strategies control the stochasticity of token selection, balancing creativity and coherence
- Random walks, Brownian motion, and Poisson processes are classical examples that inform diffusion model theory
- Stochastic gradient descent (SGD) introduces controlled randomness into training, helping escape local minima
- The variance and stationarity properties of stochastic processes determine long-term model behavior and stability
- Diffusion models explicitly use stochastic differential equations to model the noise addition and denoising process

## Related Concepts

- [[autoregressive-models]]
- [[temperature-parameter]]
- [[diffusion-models]]

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
