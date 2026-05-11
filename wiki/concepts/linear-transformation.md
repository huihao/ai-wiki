---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Linear Transformation

## Definition

A linear transformation is a function between vector spaces that preserves vector addition and scalar multiplication: T(a*u + b*v) = a*T(u) + b*T(v). In the context of the Transformer architecture's positional encoding, the sinusoidal encoding satisfies a linear transformation property: for any fixed offset k, the positional encoding at position pos+k can be expressed as a linear function (matrix multiplication) of the encoding at position pos.

## Key Aspects

- The Transformer's sinusoidal positional encoding uses pairs of sine and cosine functions at geometrically spaced frequencies: sin(pos/f_m) and cos(pos/f_m)
- For any fixed offset k, a block-diagonal transformation matrix T^(k) exists such that T^(k) * PE(pos) = PE(pos+k)
- Each 2x2 block on the diagonal of T^(k) is a rotation matrix by angle lambda_m * k, where lambda_m = 1/f_m
- The proof uses trigonometric addition theorems: sin(a+b) = sin(a)cos(b) + cos(a)sin(b), which directly yields the matrix form
- This linear relationship allows the model to learn relative positional relationships through learned weight matrices acting on the encoding
- The property does not hold exactly for learned positional embeddings (like BERT), which is why the sinusoidal formulation was specifically chosen in "Attention Is All You Need"

## Related Concepts

- [[projective-ray-positional-encoding]]
- [[transformers]]
- [[attention-mechanisms]]

## Sources

- [[linear-relationships-positional-encoding]]
