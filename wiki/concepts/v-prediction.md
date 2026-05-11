---
created: 2026-04-29
updated: 2026-04-29
tags: [diffusion, generative, parameterization]
sources: 1
---
# V-Prediction

## Definition

V-prediction is a reparameterization of diffusion model training where the neural network predicts the velocity vector v = alpha_t * epsilon - sigma_t * x_0 rather than predicting the noise epsilon or the clean data x_0 directly. It was introduced to improve training stability and generation quality.

## Key Concepts

- v-prediction defines v = alpha_t * noise - sigma_t * data, providing a balanced parameterization
- The v-prediction parameterization is numerically more stable than both epsilon-prediction and x_0-prediction
- It naturally interpolates between noise prediction (at high noise) and data prediction (at low noise)
- V-prediction does not require special handling for guidance scale (no guidance clamping needed)
- The parameterization provides more uniform gradients across timesteps during training
- Stable Diffusion 3 and other recent models use v-prediction as the default parameterization
- At sigma=0, v reduces to data; at sigma=infinity, v reduces to noise
- The velocity field interpretation connects v-prediction directly to flow matching formulations
- V-prediction simplifies classifier-free guidance computation compared to epsilon-prediction

## Related Concepts

- [[ddim]]
- [[score-function]]
- [[noise-schedule]]
- [[sde-ode]]

## Sources

- [[diffusion-meets-flow-matching]]
