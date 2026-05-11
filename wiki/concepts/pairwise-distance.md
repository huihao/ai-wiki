---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Pairwise Distance

## Definition

Pairwise distance is the computation of similarity or dissimilarity measures between all pairs of vectors in a dataset, used in machine learning to identify nearest neighbors, cluster similar items, and evaluate embedding quality.

## Key Aspects

- **Embedding Evaluation**: After training word embedding models like CBOW, pairwise distance matrices reveal whether similar words have learned similar vector representations -- a key quality indicator
- **Distance Metrics**: Common measures include Euclidean distance (straight-line), cosine similarity (angle between vectors), and Manhattan distance, each suited to different data characteristics
- **Nearest Neighbor Search**: Pairwise distances enable finding the k-nearest neighbors of any vector, revealing semantic relationships (e.g., god-heaven, gospel-church, moses-pharaoh) that emerge from context-based training alone
- **Computational Cost**: Naive pairwise distance computation is O(N^2) for N vectors, making it expensive for large vocabularies; approximate nearest neighbor methods (LSH, FAISS) trade accuracy for speed
- **Semantic Relationship Discovery**: In word embedding contexts, low pairwise distances between semantically related words validate that the model has captured meaningful linguistic relationships without explicit semantic labeling

## Related Concepts

- [[word-embeddings]] -- Dense vector representations whose quality pairwise distance measures
- [[cbow]] -- Continuous Bag of Words model whose embeddings are evaluated via pairwise distance
- [[nearest-neighbors]] -- The downstream task that pairwise distances enable
- [[embedding-layers]] -- Neural network components that produce vectors for distance computation

## Sources

- [[implementing-cbow-text-features]]
