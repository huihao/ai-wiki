---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# ANN (Approximate Nearest Neighbor) Indexing

## Definition

ANN (Approximate Nearest Neighbor) indexing refers to algorithms that build indices for searching vectors in sublinear O(log n) time rather than brute-force O(n), trading exact accuracy for speed. Includes graph-based methods (HNSW), tree-based methods, and locality-sensitive hashing.

## Key Proponents / Critics

- Malkov and Yashunin (HNSW)
- [[wilson-lin|Wilson Lin]] — Explained ANN intuition
- Microsoft researchers (DiskANN)
- Vector database developers

## Related Concepts

- [[hnsw|HNSW]] — Leading graph-based ANN method
- [[diskann|DiskANN]] — Disk-based ANN improvement
- [[vector-search|Vector Search]] — Problem ANN solves
- [[vector-database|Vector Databases]] — Systems implementing ANN
- [[curse-of-dimensionality|Curse of Dimensionality]] — Challenge for non-graph ANN methods

## Sources

- [[from-kevin-bacon-to-hnsw-vector-search-intuition|From Kevin Bacon to HNSW Vector Search Intuition]]

## Evolution

ANN addresses scalability limitation of exact nearest neighbor search. Traditional methods (k-d trees, LSH) work in low dimensions but degrade to O(n) in high-dimensional spaces where distances become uniformly far. Graph-based methods emerged as ideal: flexible edges adapt to data distribution, enable greedy traversal stopping at local minima. HNSW uses hierarchical levels with long/short edges for sublinear navigation. DiskANN enables disk-based graph indices for commodity deployment. Key metrics: recall (fraction of true nearest neighbors found) vs latency. Production systems tune parameters for trade-off between accuracy and speed at target scale.