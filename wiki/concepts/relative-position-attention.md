---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Relative Position Attention

## Definition

Ability of transformer models to attend based on relative positions between tokens, enabled by sinusoidal positional encoding where PE(pos+k) can be represented as a linear function of PE(pos) for any fixed offset k.

## Mathematical Property

For each sine-cosine pair at frequency ω_k, there exists a linear transformation M (rotation-like matrix) such that:

M · [sin(ω_k·t), cos(ω_k·t)] = [sin(ω_k·(t+φ)), cos(ω_k·(t+φ))]

This transformation is independent of t, allowing the model to learn relative position patterns easily.

## Key Implications

- Model can learn "attend to token k positions away" patterns
- Enables capturing structural relationships (e.g., "word at distance 2")
- More flexible than absolute position attention for many tasks

## Related Concepts

- [[positional-encoding]] — encoding mechanism that enables this
- [[sinusoidal-functions]] — sine/cosine pairs
- [[rotation-matrix]] — similarity to transformation matrix
- [[attention-mechanisms]] — general attention framework

## Sources

- [[transformer-architecture-the-positional-encoding|Transformer Architecture: The Positional Encoding]]

## Evolution

Alternative positional encoding schemes (RoPE, ALiBi) also incorporate relative position information with different mathematical approaches.