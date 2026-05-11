---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# GELU Activation

## Definition

GELU (Gaussian Error Linear Unit) is a nonlinear activation function used in transformer feed-forward networks. It provides smoother gradients than ReLU by weighting inputs by their magnitude relative to a Gaussian distribution, enabling better training dynamics in deep architectures.

## Key Proponents / Critics

- Hendrycks and Gimpel (original GELU paper)
- [[avichala|Avichala]] — Production systems using GELU in transformers
- BERT and GPT model developers (adopted GELU over ReLU)

## Related Concepts

- [[feed-forward-networks|Feed-Forward Networks]] — Where GELU is applied
- [[transformers|Transformers]] — Architecture standardizing GELU usage
- [[layer-normalization|Layer Normalization]] — Complementary stability mechanism

## Sources

- [[explain-feed-forward-network-transformer-block|Explain the Feed-Forward Network in a Transformer Block]]

## Evolution

GELU replaced ReLU in transformer architectures due to smoother nonlinearity at boundary points, preventing hard cutoffs that can destabilize gradients in deep stacks. Production systems favor GELU for numerical stability under mixed-precision training. Newer variants like SwiGLU combine GELU with gating mechanisms for improved performance.