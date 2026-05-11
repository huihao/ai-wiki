---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Quadratic Form

## Definition
A quadratic form is a scalar-valued function of the form x^T * A * x, where x is a vector and A is a square matrix. It maps a vector to a single real number through a bilinear operation and is fundamental to optimization, statistics, and machine learning, particularly in understanding convexity, positive definiteness, and kernel methods.

## Key Aspects
- The expression x^T * A * x produces a scalar from a vector x and square matrix A
- A symmetric matrix A defines a quadratic form uniquely; the symmetric part of any matrix determines its quadratic form
- Positive definite matrices produce quadratic forms where x^T * A * x > 0 for all non-zero x, indicating a convex surface
- Positive semi-definite matrices allow x^T * A * x >= 0 (can be zero for some non-zero x)
- The eigenvalues of A determine the shape of the quadratic surface: positive eigenvalues indicate curvature in those directions
- Quadratic forms appear in loss functions (e.g., least squares), covariance matrices, and Hessian matrices in optimization
- The Cauchy-Schwarz inequality bounds inner products and is proved using properties of quadratic forms
- Convexity of positive definite quadratic forms has profound impact on optimization: they guarantee unique global minima

## Related Concepts
- [[positive-definite-matrix]]
- [[eigendecomposition]]
- [[linear-algebra]]
- [[optimization]]

## Sources
- [[linear-algebra-crash-course-cs236605]]
