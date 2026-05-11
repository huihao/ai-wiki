---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# DiskANN

## Definition

DiskANN is a disk-based graph algorithm improving upon HNSW to enable vector search from disk storage instead of expensive RAM. Reduces costs 40x while maintaining high recall, enabling billion-scale vector queries on commodity machines.

## Key Proponents / Critics

- Microsoft researchers (original DiskANN paper)
- [[wilson-lin|Wilson Lin]] — Covered in series, built CoreNN on DiskANN principles

## Related Concepts

- [[hnsw|HNSW]] — Algorithm DiskANN improves
- [[vector-search|Vector Search]] — Application domain
- [[vector-database|Vector Databases]] — Systems using DiskANN
- [[ann-indexing|ANN Indexing]] — Algorithm category

## Sources

- [[from-kevin-bacon-to-hnsw-vector-search-intuition|From Kevin Bacon to HNSW Vector Search Intuition]]

## Evolution

DiskANN addresses HNSW's limitation requiring RAM for performance, enabling disk-based deployment. Graph algorithms work effectively from disk with 40x cost reduction vs RAM. Allows querying billions of vectors (e.g., 1B Reddit embeddings in 4.8TB index) on commodity machines. Wilson Lin's series covers DiskANN limitations of HNSW and deep dive into DiskANN approach. CoreNN builds on DiskANN principles for practical billion-scale deployment. Enables vector search systems that don't require expensive RAM infrastructure.