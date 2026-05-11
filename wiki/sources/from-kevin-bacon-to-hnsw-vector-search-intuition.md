---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# From Kevin Bacon to HNSW: The Intuition Behind Semantic Search and Vector Databases

## Metadata

- **Author**: Wilson Lin
- **Date**: 2025-08-10
- **URL**: https://blog.wilsonl.in/graph-vector-search/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/From Kevin Bacon to HNSW_ the intuition behind semantic search and vector databases.md

## Summary

A deep explanation of how modern fast and accurate vector searching works, using graph-based algorithms like HNSW. Explains the curse of dimensionality, why graphs work better than trees/hashes, the sociology intuition from "six degrees of separation," and the hierarchical navigable small world approach.

## Key Takeaways

- Curse of dimensionality: distances become uniformly far and less discriminating in high dimensions, degrading k-d trees and LSH to O(n)
- Graphs as ideal data structure: flexible edges can adapt to data distribution, no need for rigid partitions or hash functions
- Six degrees of Kevin Bacon insight: average path between any two points is logarithmic (sublinear) to population
- Long + short connections strategy: long edges for quick navigation to general area, short edges for accuracy in neighborhood
- HNSW innovation: hierarchical levels with uniform sampling, exponentially fewer nodes at higher levels, creating longer edges naturally
- Query mechanism: start at top level, find nearest node, drop down levels, repeat—exponential gap closure at each level
- DiskANN improvement: enables graph algorithms to work from disk instead of expensive RAM, reducing costs 40x

## Entities Mentioned

- [[wilson-lin|Wilson Lin]] — Author and CoreNN developer
- [[corenn|CoreNN]] — Open source vector DB for billion-vector queries

## Concepts Mentioned

- [[hnsw|HNSW (Hierarchical Navigable Small World)]] — Core algorithm explained
- [[vector-search|Vector Search]] — Primary problem domain
- [[semantic-search|Semantic Search]] — Application of vector search
- [[vector-databases|Vector Databases]] — Storage and query systems
- [[ann-indexing|ANN (Approximate Nearest Neighbor) Indexing]] — Algorithm category
- [[diskann|DiskANN]] — Disk-based graph algorithm improvement
- [[curse-of-dimensionality|Curse of Dimensionality]] — Challenge for traditional methods

## Raw Notes

Wilson Lin explains ANN indexing intuition from first principles. Curse of dimensionality causes distances to become uniform and far: most points lie "near the edge" in high dimensions, making partition-based methods ineffective. Graphs work because edges can connect any two nodes—flexibility allows adaptation to data distribution. Milgram's small-world experiment shows logarithmic paths between people. HNSW uses hierarchical levels: uniformly sampled fewer nodes at higher levels create longer edges naturally (still uniform sampling preserves data distribution). Query drops down levels exponentially closing gap. Each level has exponentially fewer nodes, achieving sublinear time. DiskANN addresses HNSW limitations for scale (disk vs RAM, 40x cost reduction). Series continues with posts on DiskANN and CoreNN (1 billion Reddit embeddings in 15ms from 4.8TB index).

## Questions / Follow-ups

- How does DiskANN specifically improve HNSW for disk-based storage?
- What are CoreNN's architectural innovations beyond DiskANN?
- How do newer variants like IVF-PQ compare to HNSW for billion-scale vectors?
- What are the trade-offs between recall and latency at different HNSW parameters?