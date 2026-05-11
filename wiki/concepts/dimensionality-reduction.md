---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, preprocessing, visualization]
sources: 1
---

# Dimensionality Reduction

## Definition

Dimensionality reduction transforms high-dimensional data into lower-dimensional representations while preserving important structure. It addresses the curse of dimensionality: high-dimensional spaces have exponentially more volume, making data sparse and distances less meaningful. Reduction enables visualization (2D/3D), compression, noise removal, and computational efficiency.

## Techniques

### Linear Methods
- **[[pca]]**: Maximize variance, fastest, deterministic, but flattens non-linear manifolds
- **[[svd]]**: Truncated SVD for sparse data (matrix factorization)
- **Linear Discriminant Analysis (LDA)**: Maximize class separability (supervised)

### Non-linear Methods (Manifold Learning)
- **[[tsne]]**: Preserve local structure, stochastic, O(n²), good for cluster visualization
- **[[umap]]**: Preserve local + global, faster than t-SNE, scales to millions
- **Isomap**: Geodesic distances on manifold
- **Locally Linear Embedding (LLE)**: Preserve local linear relationships

### Neural Methods
- **Autoencoders**: Learn low-dimensional encoding via neural networks
- **Variational Autoencoders (VAE)**: Probabilistic latent space
- **[[sparse-autoencoders]]**: Sparse representations for interpretability

## Trade-offs

- **Linear vs. non-linear**: Linear is fast, interpretable, deterministic; non-linear reveals complex structure but slower, stochastic
- **Local vs. global structure**: t-SNE preserves local clusters; UMAP preserves global geometry; PCA preserves variance (linear)
- **Reproducibility**: PCA/UMAP can be deterministic; t-SNE is stochastic (different runs = different results)

## Applications

- **Visualization**: Project to 2D/3D for human exploration (embedding projector, TensorBoard)
- **Compression**: Reduce memory/storage while preserving information
- **Noise reduction**: Discard low-variance dimensions (assumed noise)
- **Preprocessing**: Before clustering/classification to reduce overfitting
- **Feature extraction**: Discover latent factors (e.g., PCA components = underlying factors)

## Related Concepts

- [[embeddings]] — high-dimensional representations that are often visualized via reduction
- [[curse-of-dimensionality]] — motivation for reduction
- [[manifold-learning]] — non-linear family assuming data lies on manifold
- [[visualization]] — primary use case

## Sources

- [[embedding-projector-visualization]] — tool comparing PCA, t-SNE, UMAP
- [[essential-ml-equations]] — eigenvalue decomposition and SVD foundations