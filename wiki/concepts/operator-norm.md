---
created: 2026-04-29
updated: 2026-04-29
tags: [functional-analysis, linear-algebra, matrix-norms]
sources: 1
---
# Operator Norm

## Definition

The operator norm (or induced norm) of a matrix measures the maximum factor by which the matrix stretches any vector, defined as the maximum of ||Ax|| / ||x|| over all non-zero vectors x. It characterizes the "worst-case" amplification of the linear transformation.

## Key Concepts

- For the L2 operator norm (spectral norm): ||A||_2 = sigma_max(A), the largest singular value
- The operator norm depends on the choice of vector norms (L1, L2, L-infinity, etc.)
- The L2 operator norm equals the square root of the largest eigenvalue of A^T A
- The spectral norm is crucial in deep learning: it controls the Lipschitz constant of linear layers
- Spectral normalization constrains the spectral norm of weight matrices to stabilize GAN training
- The operator norm is sub-multiplicative: ||AB|| <= ||A|| * ||B||
- The operator norm and Frobenius norm are related: ||A||_2 <= ||A||_F <= sqrt(rank(A)) * ||A||_2
- Power iteration is an efficient method to estimate the largest singular value (operator norm)
- In muP, understanding the spectral norm of weight matrices is key to ensuring maximal feature learning

## Related Concepts

- [[frobenius-norm]]
- [[matrix-operations]]
- [[trace]]
- [[vector-norms]]

## Sources

- [[linear-algebra-crash-course]]
