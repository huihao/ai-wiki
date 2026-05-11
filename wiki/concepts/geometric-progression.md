---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Geometric Progression

## Definition

A geometric progression is a sequence of numbers where each term after the first is found by multiplying the previous term by a constant called the common ratio. In transformer positional encoding, the wavelengths of the sinusoidal functions form a geometric progression from 2pi to 10000 times 2pi, ensuring the model can distinguish positions at both fine and coarse granularity.

## Key Aspects

- **Wavelength Distribution**: The frequencies used in sinusoidal positional encoding follow a geometric progression: lambda_i = 2pi * 10000^(2i/d), where i ranges from 0 to d/2 - 1
- **Analogy to Binary Representation**: Different sinusoidal components alternate at different rates, analogous to how different bits in a binary number toggle at different frequencies (1, 2, 4, 8, ...)
- **Relative Position Learning**: The geometric progression ensures that PE(pos + k) can be expressed as a linear transformation of PE(pos), enabling the model to learn relative position relationships
- **Rotation Matrix Connection**: The transformation matrix M that maps PE(pos) to PE(pos+k) resembles a rotation matrix in the frequency space defined by the geometric progression
- **Full Coverage**: The progression spans from very high frequency (fine-grained position) to very low frequency (coarse-grained position), covering all necessary scales

## Related Concepts
- [[transformer-architecture-the-positional-encoding]]

## Sources
- [[transformer-architecture-the-positional-encoding]]
