---
created: 2026-04-29
updated: 2026-05-09
tags: [linear-algebra, mathematics]
sources: 1
---

# Eigenvectors

## Definition

Eigenvectors are the set of all nonzero vectors that satisfy Av = λv for a given square matrix A, each paired with its corresponding eigenvalue. The full set of eigenvectors (when the matrix is diagonalizable) forms a basis that reveals the matrix's fundamental geometric structure — the axes along which the transformation acts as pure scaling.

## Key Aspects

- Eigenvectors of a symmetric (Hermitian) matrix are always orthogonal, providing an natural coordinate system aligned with the data's variance structure
- In Principal Component Analysis (PCA), eigenvectors of the covariance matrix define the principal components — the orthogonal directions of maximum variance in the data
- The first principal component (largest eigenvalue) captures the most variance; subsequent components capture progressively less
- Dimensionality reduction is achieved by projecting data onto the top-k eigenvectors, retaining most information while discarding noise
- Eigen-decomposition A = QΛQ^T (for symmetric A) factorizes a matrix into its eigenvectors (columns of Q) and eigenvalues (diagonal of Λ)
- In deep learning, eigenvectors of the Hessian matrix indicate directions of maximum and minimum curvature of the loss surface, guiding optimization analysis
- Spectral clustering uses eigenvectors of graph Laplacian matrices to find natural cluster boundaries in data

## Related Concepts

- [[eigenvector]]
- [[pca]]
- [[dimensionality-reduction]]

## Sources

- [[matrix-calculus-deep-learning]]
