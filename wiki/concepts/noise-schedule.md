---
created: 2026-04-29
updated: 2026-04-29
tags: [diffusion, generative, hyperparameters]
sources: 1
---
# Noise Schedule

## Definition

A noise schedule defines how the signal-to-noise ratio changes over time during the forward diffusion process, controlling how much noise is added at each timestep. The choice of noise schedule significantly impacts generation quality, training stability, and sampling speed.

## Key Concepts

- The noise schedule determines the rate at which data is transformed into noise during the forward process
- Linear schedules (DDPM) increase noise linearly from t=0 to t=T
- Cosine schedules (Improved DDPM) provide smoother transitions, avoiding information loss at t=0
- Sigmoid schedules provide fine-grained control over the noise addition rate
- The signal-to-noise ratio (SNR) at each timestep affects which features are preserved or destroyed
- Small noise steps preserve fine details but slow training; large steps speed training but lose detail
- The noise schedule is related to the learning rate schedule in importance for model performance
- Adaptive noise schedules can be learned during training for better performance
- In flow matching, the noise schedule determines the interpolation path between noise and data

## Related Concepts

- [[ddim]]
- [[score-function]]
- [[sde-ode]]
- [[v-prediction]]

## Sources

- [[diffusion-meets-flow-matching]]
