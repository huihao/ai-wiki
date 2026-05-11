---
created: 2026-04-29
updated: 2026-05-09
tags: [dimensionality-reduction, visualization]
sources: 1
---

# t-SNE Visualization

## Definition

t-Distributed Stochastic Neighbor Embedding (t-SNE) is a nonlinear dimensionality reduction technique designed for visualizing high-dimensional data in two or three dimensions. It maps similar data points to nearby locations and dissimilar points to distant locations in the embedding space, preserving local neighborhood structure. t-SNE has become the standard visualization tool for exploring clusters in embeddings, word vectors, image features, and single-cell genomics data.

## Key Aspects

- **Probability-based similarity**: t-SNE defines pairwise similarities in high-dimensional space using Gaussian kernels (conditional probabilities), then in low-dimensional space using Student's t-distribution (heavy tails), minimizing the Kullback-Leibler divergence between the two distributions.
- **Local structure preservation**: Unlike linear methods (PCA), t-SNE excels at preserving local neighborhood relationships, making clusters and manifolds visible even when the underlying structure is highly nonlinear.
- **Perplexity hyperparameter**: Controls the effective number of neighbors considered — low perplexity emphasizes local structure (tight clusters), high perplexity captures more global structure. Typical values range from 5 to 50.
- **Non-convex optimization**: t-SNE uses gradient descent to minimize KL divergence, meaning results depend on initialization (random seed). Multiple runs may produce different global configurations while preserving local structure.
- **Interpretation caveats**: Cluster distances in t-SNE plots are not meaningful — only relative proximity within neighborhoods. Cluster sizes are also not preserved. Distortion of global structure can be misleading.
- **Scalability**: Original t-SNE is O(n^2), but Barnes-Hut approximation reduces it to O(n log n), enabling visualization of datasets with hundreds of thousands of points. UMAP has emerged as a faster alternative with similar visual quality.

## Related Concepts

- [[dimensionality-reduction]]
- [[pca]]
- [[umap]]
- [[embedding-visualization]]

## Sources

- [[distill-pub]]
