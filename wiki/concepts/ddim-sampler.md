---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# DDIM Sampler

## Definition

The DDIM (Denoising Diffusion Implicit Models) sampler is a deterministic sampling method for diffusion models that accelerates generation by taking fewer steps through the reverse diffusion process. It has been shown to be mathematically equivalent to the flow matching Euler sampler, establishing a deep connection between diffusion and flow matching frameworks.

## Key Aspects

- DDIM enables faster sampling than DDPM by using fewer denoising steps while maintaining generation quality
- Produces deterministic outputs for a given noise vector, unlike the stochastic DDPM sampler
- Mathematically equivalent to the Euler sampler used in flow matching, demonstrating that diffusion models and Gaussian flow matching are interchangeable frameworks
- Invariant to linear scaling of the noise schedule, meaning different schedule parameterizations produce equivalent results
- The equivalence extends to the weighting function: flow matching weighting coincides with commonly used diffusion training weightings (v-MSE loss with cosine noise schedule)
- Stochastic sampling (adding noise during the reverse process) can also be applied to DDIM, contrary to the common belief that it is always deterministic
- The renoising step in DDPM sampling reverses exactly half the progress made by DDIM, leaving the overall distribution unchanged

## Related Concepts

- [[diffusion-models]]
- [[flow-matching]]
- [[ddpm]]
- [[score-function]]
- [[noise-schedule]]
- [[generative-models]]

## Sources

- [[flow-matching]]
