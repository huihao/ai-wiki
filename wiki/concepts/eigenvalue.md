---
name: "Eigenvalue"
category: "mathematics"
---

# Eigenvalue

A scalar (λ) associated with a square matrix that represents how the matrix scales or stretches space along certain directions. Eigenvalues are fundamental to dimensionality reduction and matrix analysis.

## Mathematical Definition

For a square matrix A, an eigenvalue λ satisfies:

```
A × v = λ × v
```

where v is the corresponding eigenvector.

## Properties

- Eigenvalues can be positive, negative, or complex
- Number of eigenvalues equals matrix dimension (for square matrices)
- Eigenvalues reveal matrix characteristics:
  - Positive: Matrix stretches space
  - Negative: Matrix flips direction
  - Zero: Matrix collapses space
  - Large magnitude: Strong transformation
  - Small magnitude: Weak transformation

## Applications

### Principal Component Analysis (PCA)

- Eigenvalues indicate variance captured by each principal component
- Larger eigenvalues → more important dimensions
- Eigenvalue magnitude determines component ranking
- Used to decide how many dimensions to retain

### Matrix Analysis

- Determine matrix stability
- Analyze matrix properties (invertibility, definiteness)
- Understand matrix behavior and transformations

### Linear Systems

- Solve systems of differential equations
- Analyze stability of dynamical systems
- Determine convergence of iterative methods

### Machine Learning

- [[pca|PCA]] for dimensionality reduction
- Spectral clustering
- Kernel methods
- Understanding model behavior

## Calculation

Eigenvalues are found by solving the characteristic equation:

```
det(A - λI) = 0
```

where:
- det = determinant
- I = identity matrix
- λ = eigenvalue (unknown)

## Related Concepts

- [[eigenvectors|Eigenvector]]: Non-zero vector corresponding to eigenvalue
- [[pca|PCA]]: Uses eigenvalues for variance analysis
- [[linear-algebra|Linear Algebra]]: Mathematical foundation
- [[dimensionality-reduction|Dimensionality Reduction]]: Application domain

## References

- [[linear-algebra-machine-learning|Linear Algebra that every Machine Learning Engineer should know]]
- [[mathematics-for-machine-learning|Mathematics for Machine Learning]]