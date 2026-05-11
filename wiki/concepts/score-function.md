---
created: 2026-04-29
updated: 2026-04-29
tags: [diffusion, generative, statistics]
sources: 1
---
# Score Function

## Definition

The score function is the gradient of the log probability density with respect to the data, nabla_x log p(x). In diffusion models, the neural network learns to estimate the score function at various noise levels, which guides the denoising process by pointing toward regions of higher data probability.

## Key Concepts

- Score matching trains the model to estimate the score function without requiring the intractable normalizing constant
- The score function points in the direction of highest increase in log probability density
- In diffusion models, the model learns the score of the noised distribution: nabla_x log p_t(x)
- The score function at high noise levels captures global structure; at low noise levels captures fine details
- Denoising Score Matching (DSM) shows that predicting the noise is equivalent to estimating the score
- Score-based generative models (Song & Ermon) use Langevin dynamics for sampling
- The connection between score functions and diffusion processes enables both SDE and ODE formulations
- Classifier-free guidance modifies the score function to increase conditional generation quality
- Score-based models and diffusion models are now understood as two perspectives on the same framework

## Related Concepts

- [[ddim]]
- [[sde-ode]]
- [[noise-schedule]]
- [[v-prediction]]

## Sources

- [[diffusion-meets-flow-matching]]
