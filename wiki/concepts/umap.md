---
created: 2026-04-28
updated: 2026-04-28
tags: [dimensionality-reduction, manifold-learning, visualization]
sources: 1
---

# UMAP (Uniform Manifold Approximation and Projection)

## Definition

UMAP is a non-linear dimensionality reduction technique based on Riemannian geometry and algebraic topology. It constructs a topological representation of high-dimensional data (fuzzy simplicial set) then optimizes a low-dimensional layout to match this topology. UMAP is faster than t-SNE and preserves both local and global structure better, making it suitable for visualizing embeddings and large datasets.

## Algorithm

1. **Construct fuzzy simplicial set**: Approximate local neighborhoods via metric learning, building a weighted graph
2. **Initialize low-D embedding**: Spectral embedding or random initialization
3. **Optimize**: Stochastic gradient descent to minimize cross-entropy between high-D and low-D fuzzy sets

## Key Proponents / Critics

- **Inventors**: Leland McInnes, John Healy, James Melville (2018)
- **Advantages over t-SNE**:
  - Faster: scales to millions of points vs. t-SNE's O(n²)
  - Preserves global structure: distances between clusters meaningful
  - More stable: less hyperparameter sensitivity
  - Deterministic option: fixed initialization + same parameters → reproducible
- **Criticism**: Still non-linear transformation; distances not directly interpretable as original distances

## Related Concepts

- [[tsne]] — slower non-linear alternative with weaker global structure
- [[pca]] — linear alternative, fastest but flattens manifolds
- [[dimensionality-reduction]] — broader category
- [[manifold-learning]] — non-linear family
- [[topological-data-analysis]] — underlying mathematical framework
- [[visualization]] — primary application

## When to Use

- **Good for**: Large datasets (n > 10,000), preserving global structure, faster exploration, reproducible visualizations
- **Better than t-SNE when**: Dataset is large, need to compare embeddings, want meaningful inter-cluster distances
- **Trade-off vs. PCA**: PCA is faster and preserves variance optimally (linear), but UMAP reveals non-linear structure

## Sources

- [[embedding-projector-visualization]] — TensorFlow tool implementing UMAP with sampling for speed