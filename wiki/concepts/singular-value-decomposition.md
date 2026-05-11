---
created: 2026-04-29
updated: 2026-05-09
tags: [linear-algebra, mathematics]
sources: 2
---

# Singular Value Decomposition

## Definition

Singular Value Decomposition (SVD) is a fundamental matrix factorization technique that decomposes any matrix A into three matrices: A = U * Sigma * V^T, where U and V are orthogonal matrices and Sigma is a diagonal matrix of singular values. It generalizes eigendecomposition to non-square matrices and serves as the mathematical foundation for PCA, dimensionality reduction, noise filtering, and latent semantic analysis.

## Key Aspects

- SVD decomposes any m x n matrix into U (m x m orthogonal), Sigma (m x n diagonal), and V^T (n x n orthogonal)
- Singular values in Sigma are arranged in descending order, capturing the "importance" of each dimension
- Truncated SVD (keeping only top k singular values) provides optimal low-rank approximation in the least-squares sense
- PCA is equivalent to SVD applied to centered data, making SVD the computational workhorse behind PCA
- Eigendecomposition of A^T * A yields the same singular values squared, connecting SVD to eigenvalue problems
- In NLP, truncated SVD on term-document matrices performs latent semantic analysis
- In recommendation systems, SVD decomposes the user-item matrix to discover latent factors
- Numerically stable algorithms (Golub-Reinsch) make SVD practical for large-scale computation

## Related Concepts

- [[pca]]
- [[eigendecomposition]]
- [[dimensionality-reduction]]
- [[matrix-factorization]]
- [[latent-semantic-analysis]]

## Sources

- [[eigendecomposition]]
- [[pca]]
