---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Diffusion Model Theory

## Definition

Diffusion model theory examines the mechanisms that prevent memorization of training data and enable generalization in diffusion generative models. Identifies implicit dynamical regularization in training dynamics as key to avoiding memorization.

## Key Concepts

- **Two timescales**: Early generalization phase vs later memorization phase
- **Implicit regularization**: Training dynamics naturally prevent memorization
- **Dataset-size dependency**: Memorization time (τ_m) scales linearly with dataset size N
- **Generalization window**: Growing window of training times where models generalize effectively

## Findings

- **τ_g (generalization time)**: Dataset-independent, remains constant
- **τ_m (memorization time)**: Increases linearly with training set size N
- **Window expansion**: As N increases, window of effective generalization expands
- **Infinite training**: Overfitting disappears only when τ_m exceeds model-dependent threshold

## Mechanisms

- Models generate high-quality samples at early time τ_g
- Memorization emerges only beyond τ_m
- Highly overparameterized settings still avoid memorization due to dynamical properties
- Spectral properties of random features model explain dynamics (random matrix theory)

## Implications

- Explains practical success of diffusion models despite overparameterization
- Provides fundamental insight into generalization in generative AI
- Offers actionable guidance for training time selection
- Sets standard for analytical depth in studying generalization

## Related Concepts

- [[diffusion-models]] — Model architecture class
- [[generalization]] — Core phenomenon studied
- [[memorization]] — Problem avoided
- [[implicit-regularization]] — Mechanism identified

## Sources

- [[neurips-2025-best-paper-awards|Announcing the NeurIPS 2025 Best Paper Awards]]