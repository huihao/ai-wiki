---
created: 2026-04-29
updated: 2026-05-09
tags: [mathematics, transformer]
sources: 2
---

# Rotation Matrix

## Definition

A rotation matrix is a linear transformation matrix that rotates vectors in a coordinate space by a specified angle while preserving lengths and angles. In transformer architectures, the positional encoding transformation matrix M_k (which maps PE(pos) to PE(pos+k)) closely resembles a rotation matrix, providing the mathematical foundation for how transformers learn relative position relationships between tokens.

## Key Aspects

- Sinusoidal positional encoding uses d-dimensional vectors with sine/cosine pairs at geometrically progressive frequencies
- The transformation PE(pos+k) = M_k * PE(pos) is a linear transformation, proving relative position is learnable
- The matrix M_k resembles a rotation matrix in structure, rotating the positional encoding vector
- Frequencies form geometric progression from 2pi to 10000*2pi, analogous to binary digit representation
- Different frequency bands capture different scales of positional information
- Residual connections help propagate positional information through network layers alongside semantic content
- This mathematical property is why transformers can generalize to sequence lengths unseen during training
- Rotary Position Embeddings (RoPE) formalize this rotation-based approach for modern transformer variants

## Related Concepts

- [[positional-encoding]]
- [[sinusoidal-functions]]
- [[relative-position-attention]]
- [[transformers]]
- [[rope-rotary-position-embeddings]]

## Sources

- [[relative-position-attention]]
- [[transformer-architecture-the-positional-encoding]]
