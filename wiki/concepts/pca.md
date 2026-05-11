---
created: 2026-04-28
updated: 2026-04-28
tags: [dimensionality-reduction, linear-algebra, visualization]
sources: 1
---

# PCA (Principal Component Analysis)

## Definition

PCA is a linear dimensionality reduction technique that projects high-dimensional data onto orthogonal axes (principal components) maximizing variance. The first principal component captures the direction of maximum variance, each subsequent component captures the next most variance while being orthogonal to previous components. PCA is computed via eigenvalue decomposition of the covariance matrix or SVD of the data matrix.

## Algorithm

1. **Center data**: Subtract mean from each feature
2. **Compute covariance matrix**: C = X^T X / (n-1)
3. **Eigenvalue decomposition**: Find eigenvectors v_i and eigenvalues λ_i of C
4. **Select top k components**: Choose eigenvectors with largest eigenvalues
5. **Project**: Y = X V_k (data onto k principal components)

## Key Proponents / Critics

- **Origin**: Karl Pearson (1901), Harold Hotelling (1933)
- **Modern usage**: Standard preprocessing step in ML, exploratory data analysis
- **Criticism**:
  - "PCA is approximate" (TensorFlow Embedding Projector) — linear approximation may miss non-linear structure
  - Variance maximization ≠ information preservation (e.g., PCA may flatten important manifolds)
  - Sensitive to scaling: requires feature normalization

## Related Concepts

- [[eigenvectors]] — PCA directions are eigenvectors of covariance matrix
- [[singular-value-decomposition]] — alternative computation method
- [[dimensionality-reduction]] — broader category
- [[tsne]] — non-linear alternative preserves local structure better
- [[umap]] — non-linear alternative preserves global + local structure
- [[covariance-matrix]] — matrix decomposed for PCA

## When to Use

- **Good for**: Initial exploratory visualization, removing noise (discard low-variance components), compression, preprocessing for algorithms that struggle with high dimensionality, understanding dominant variance directions
- **Limitations**: Misses non-linear structure, assumes variance = importance, flattens manifolds and clusters that t-SNE/UMAP would reveal

## Applications

- **Visualization**: Project to 2D/3D for quick exploration
- **Compression**: Reduce dimensionality while preserving most variance
- **Noise reduction**: Discard low-variance components (assumed noise)
- **Preprocessing**: Before clustering or classification to reduce overfitting

## Sources

- [[embedding-projector-visualization]] — TensorFlow tool notes "PCA is approximate"
- [[essential-ml-equations]] — eigenvalue/eigenvector mathematics