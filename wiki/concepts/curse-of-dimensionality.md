---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Curse of Dimensionality

## Definition

The curse of dimensionality refers to the phenomenon where distances become uniformly far and less discriminating in high-dimensional spaces, causing traditional partition-based algorithms (k-d trees, LSH) to degrade to O(n) performance.

## Key Proponents / Critics

- Statistical learning theorists
- [[wilson-lin|Wilson Lin]] — Intuitive explanation
- Database researchers analyzing high-dimensional indexing

## Related Concepts

- [[hnsw|HNSW]] — Algorithm that overcomes curse of dimensionality
- [[vector-search|Vector Search]] — Domain where curse manifests
- [[ann-indexing|ANN Indexing]] — Methods addressing curse

## Sources

- [[from-kevin-bacon-to-hnsw-vector-search-intuition|From Kevin Bacon to HNSW Vector Search Intuition]]

## Evolution

Curse of dimensionality discovered in statistical learning and nearest neighbor search. Wilson Lin provides intuitions: most points lie "near the edge" in high dimensions (unlikely for all elements to be near mean), expansive volume means most points uniformly far from each other. Analogy: humans modeled as trait vectors unlikely to be "perfectly normal" (all dimensions average), everyone "near boundary" in high-dimensional trait space. Impact: k-d trees, LSH rely on distance discrimination to prune search space, but fail when distances uniform. Graphs solve curse by adapting to data distribution with flexible edges, enabling sublinear search regardless of dimensionality. Key insight: graphs don't need ideal partition or hash function—just connect close nodes.