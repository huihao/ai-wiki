---
created: 2026-04-29
updated: 2026-04-29
tags: [differential-equations, diffusion, generative]
sources: 1
---
# SDE/ODE Formulation of Diffusion

## Definition

The SDE/ODE formulation provides a unified mathematical framework for understanding diffusion models, where the forward noising process is described by a Stochastic Differential Equation (SDE) and the reverse denoising process corresponds to either an SDE or a probability flow Ordinary Differential Equation (ODE).

## Key Concepts

- The forward process adds noise according to an SDE: dx = f(x,t)dt + g(t)dw
- The reverse process follows a time-reversed SDE with an additional score function term
- The probability flow ODE has the same marginal distributions as the forward SDE but is deterministic
- DDIM corresponds to solving the probability flow ODE with Euler discretization
- Flow matching models replace the Gaussian noise target with velocity field targets along straight paths
- The SDE framework unifies DDPM, DDIM, and score-based models under one mathematical umbrella
- Different SDE choices (VE-SDE, VP-SDE, sub-VP-SDE) correspond to different noise schedules
- Neural ODE solvers (Adaptive step-size methods) can be used for more efficient sampling
- The connection between diffusion and optimal transport enables flow matching with straight paths

## Related Concepts

- [[ddim]]
- [[score-function]]
- [[noise-schedule]]
- [[v-prediction]]

## Sources

- [[diffusion-meets-flow-matching]]
