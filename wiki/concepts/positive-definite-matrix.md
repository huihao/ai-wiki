---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Positive Definite Matrix

## Definition

A positive definite matrix is a symmetric matrix where all eigenvalues are strictly positive, meaning the quadratic form x^T A x > 0 for all non-zero vectors x. This property ensures the matrix represents a convex surface and plays a fundamental role in optimization, statistics, and numerical linear algebra.

## Key Aspects

- A symmetric matrix A is positive definite if and only if all its eigenvalues are positive (lambda_i > 0 for all i)
- The quadratic form x^T A x > 0 for all x != 0 defines positive definiteness and ensures the function has a unique global minimum at x = 0
- Positive definite matrices are symmetric and admit unitary eigendecomposition: A = U Lambda U^T, where U is orthogonal and Lambda contains eigenvalues
- The convexity of positive definite matrices has profound impact on optimization: gradient descent converges to a unique global minimum for quadratic objectives with positive definite Hessian
- Covariance matrices in statistics are always positive semi-definite; they are positive definite when data points span all dimensions
- The Cholesky decomposition A = LL^T is an efficient factorization specific to positive definite matrices, used in sampling from multivariate Gaussian distributions
- In machine learning, the kernel matrix (Gram matrix) must be positive semi-definite to be a valid kernel, connecting to Mercer's theorem

## Related Concepts

- [[partial-derivative]]

## Sources

- [[eigendecomposition]]
- [[linear-algebra-crash-course-cs236605]]
