---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, software-library]
sources: 1
---

# CoreNN

## Summary

CoreNN is an open source vector database developed by Wilson Lin for querying across billions of vectors on commodity machines. Demonstrates searching 1 billion Reddit comment embeddings in 15ms from a 4.8TB index on disk.

## Key Attributes

- **Type**: Open source vector database
- **Developer**: Wilson Lin (github.com/wilsonzlin/corenn)
- **Scale**: Billion-vector queries
- **Performance**: 15ms query time for 1B embeddings
- **Storage**: 4.8TB index on disk
- **Hardware**: Commodity machines (not expensive RAM)
- **Cost Reduction**: 40x cheaper than RAM-based HNSW
- **Architecture**: Builds on DiskANN principles
- **Use Case**: Semantic search across massive embedding datasets

## Related Entities

- [[wilson-lin|Wilson Lin]] — Developer

## Related Concepts

- [[vector-databases|Vector Databases]] — Category
- [[diskann|DiskANN]] — Algorithm foundation
- [[hnsw|HNSW]] — Algorithm predecessor
- [[vector-search|Vector Search]] — Core functionality
- [[semantic-search|Semantic Search]] — Application

## Sources

- [[from-kevin-bacon-to-hnsw-vector-search-intuition|From Kevin Bacon to HNSW Vector Search Intuition]]

## Contradictions / Open Questions

- What specific optimizations enable commodity machine deployment?
- How does CoreNN compare to other billion-scale vector databases like Milvus or Weaviate?
- What are the indexing and query latency trade-offs at different scales?