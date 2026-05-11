---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Vector Search

## Definition

Vector search is the problem of finding the nearest candidate vector to a query vector in a metric space. Used for semantic search where embeddings represent documents, images, or other data, and closest vectors indicate best matching results.

## Key Proponents / Critics

- Vector database practitioners
- [[wilson-lin|Wilson Lin]] — Deep explanation of vector search intuition
- Semantic search researchers

## Related Concepts

- [[hnsw|HNSW]] — Popular algorithm for vector search
- [[diskann|DiskANN]] — Disk-based approach
- [[vector-database|Vector Databases]] — Systems enabling vector search
- [[semantic-search|Semantic Search]] — Primary application
- [[ann-indexing|ANN Indexing]] — Algorithmic approach
- [[curse-of-dimensionality|Curse of Dimensionality]] — Challenge in high dimensions

## Sources

- [[from-kevin-bacon-to-hnsw-vector-search-intuition|From Kevin Bacon to HNSW Vector Search Intuition]]

## Evolution

Vector search emerged from nearest neighbor search problem. Naive approach (brute force) is O(n), impractical at scale. Traditional methods (k-d trees, LSH) degrade to O(n) in high dimensions due to curse of dimensionality. Graph-based methods (HNSW, DiskANN) achieve sublinear O(log n) time. Modern vector databases implement ANN indices for billion-scale queries. Neural embeddings from transformers enable semantic search by representing meaning as vectors. Wilson Lin demonstrates 1B vectors in 15ms from 4.8TB disk index. Challenge: balancing recall (accuracy) vs latency at different scales and parameter settings.