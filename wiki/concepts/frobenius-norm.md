---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, linear-algebra, matrix-norms]
sources: 1
---
# Frobenius Norm

## Definition

The Frobenius norm of a matrix is the square root of the sum of the absolute squares of its elements, equivalent to treating the matrix as a long vector and computing its L2 norm. It measures the "size" of a matrix and is widely used in optimization and regularization.

## Key Concepts

- Definition: ||A||_F = sqrt(sum_i sum_j |a_ij|^2) = sqrt(tr(A^T A))
- The Frobenius norm is equivalent to the L2 norm when the matrix is flattened to a vector
- It is sub-multiplicative: ||AB||_F <= ||A||_F * ||B||_F
- The Frobenius norm is differentiable everywhere (unlike the L1 norm), making it useful for gradient-based optimization
- Weight decay (L2 regularization) penalizes the Frobenius norm of weight matrices
- The nuclear norm (sum of singular values) is the tightest convex lower bound on rank, while Frobenius is a different measure
- In deep learning, Frobenius norm of weight matrices correlates with generalization
- The Frobenius inner product <A,B>_F = tr(A^T B) generalizes the dot product to matrices
- Computing the Frobenius norm requires O(mn) operations for an m-by-n matrix

## Related Concepts

- [[matrix-operations]]
- [[vector-norms]]
- [[operator-norm]]
- [[trace]]

## Sources

- [[linear-algebra-crash-course]]
- [[intro-linear-algebra-for-applied-ml]]
