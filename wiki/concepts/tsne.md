---
created: 2026-04-28
updated: 2026-04-28
tags: [dimensionality-reduction, manifold-learning, visualization]
sources: 1
---

# t-SNE (t-Distributed Stochastic Neighbor Embedding)

## Definition

t-SNE is a non-linear dimensionality reduction technique for visualizing high-dimensional data by projecting it into 2D or 3D space. It preserves local structure by converting pairwise distances in high-dimensional space into probabilities, then minimizing the KL divergence between these distributions in high-D and low-D. Unlike linear methods like PCA, t-SNE can reveal complex manifolds and clusters that PCA would flatten.

## Algorithm

1. **Convert distances to probabilities**: For each point, compute similarity to neighbors via Gaussian kernel: P(j|i) ~ exp(-||x_i - x_j||² / 2σ²)
2. **Initialize low-D points**: Random 2D/3D positions
3. **Define target probabilities**: Use Student t-distribution in low-D: Q(j|i) ~ (1 + ||y_i - y_j||²)^{-1}
4. **Minimize KL divergence**: Gradient descent to minimize KL(P||Q) = Σ_i Σ_j P(j|i) log(P(j|i)/Q(j|i))

## Key Proponents / Critics

- **Inventors**: Laurens van der Maaten & Geoffrey Hinton (2008)
- **Criticism**: Wattenberg et al. (2016) "How to Use t-SNE Effectively" — user guide addressing misconceptions
- **Limitations**:
  - Stochastic: different runs give different results
  - Distances between clusters are not meaningful
  - Hyperparameter σ (perplexity) significantly affects results
  - Cannot preserve global structure well
  - Computational cost: O(n²) → requires sampling for large datasets

## Related Concepts

- [[pca]] — linear alternative, faster and deterministic
- [[umap]] — faster non-linear method, preserves global structure better
- [[dimensionality-reduction]] — broader category
- [[manifold-learning]] — non-linear dimensionality reduction family
- [[kl-divergence]] — optimization objective in t-SNE
- [[visualization]] — primary application

## When to Use

- **Good for**: Exploratory cluster visualization, revealing hidden patterns in moderate-sized datasets (n < 10,000)
- **Poor for**: Preserving global geometry, comparing datasets, large-scale data (requires sampling), reproducible results

## Sources

- [[embedding-projector-visualization]] — TensorFlow tool implementing t-SNE with sampling for large datasets
- [[essential-ml-equations]] — mathematical foundations including KL divergence