---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Manifold Learning

## Definition

Manifold learning is a class of dimensionality reduction techniques that assumes high-dimensional data lies on or near a lower-dimensional manifold embedded in the high-dimensional space, and aims to discover that latent low-dimensional structure for visualization, noise reduction, or downstream tasks.

## Key Aspects

- t-SNE (t-distributed Stochastic Neighbor Embedding) preserves local neighborhood structure, making it excellent for visualizing clusters in 2D/3D but sensitive to perplexity settings and not preserving global distances
- UMAP (Uniform Manifold Approximation and Projection) offers faster computation and better preservation of global structure compared to t-SNE, with stronger theoretical grounding in Riemannian geometry
- Both t-SNE and UMAP are primarily used for visualization and exploration rather than as preprocessing for downstream ML tasks
- The "curse of dimensionality" motivates manifold learning: high-dimensional data requires exponentially more samples, but intrinsic dimensionality is often much lower
- Linear methods (PCA) assume flat subspaces, while manifold learning methods capture nonlinear structure
- Applications include single-cell genomics, natural language processing (embedding visualization), and anomaly detection

## Related Concepts

- [[dimensionality-reduction]] -- Broader category of techniques for reducing feature space
- [[tsne]] -- t-distributed Stochastic Neighbor Embedding
- [[umap]] -- Uniform Manifold Approximation and Projection

## Sources

- [[dimensionality-reduction]]
- [[tsne]]
- [[umap]]
