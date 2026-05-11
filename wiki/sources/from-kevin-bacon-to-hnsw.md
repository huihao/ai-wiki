---
created: 2026-04-28
updated: 2026-04-28
tags: [source, vector-search, hnsw, algorithms]
sources: 1
---

# From Kevin Bacon to HNSW: The Intuition Behind Semantic Search and Vector Databases

## Metadata

- **Author**: N/A
- **Date**: N/A
- **URL**: N/A
- **Fetched**: 2026-04-24
- **Raw file**: `raw/ai/From Kevin Bacon to HNSW_ the intuition behind semantic search and vector databases.md`

## Summary

An intuitive explainer connecting the "Six Degrees of Kevin Bacon" concept to approximate nearest neighbor (ANN) search, specifically Hierarchical Navigable Small World (HNSW) graphs. Shows how vector databases enable semantic search by mapping queries into embedding space and finding close neighbors efficiently.

## Key Takeaways

- Vector search maps documents/queries to dense embeddings and finds closest vectors.
- HNSW builds a multi-layer graph where upper layers provide long-range "highways" and lower layers provide fine-grained local search.
- The Kevin Bacon analogy illustrates how short paths exist in well-connected graphs.
- ANN algorithms trade exactness for massive speedups over brute-force search.

## Entities Mentioned

- N/A

## Concepts Mentioned

- [[vector-embeddings-mallya|Vector search]] — retrieval via embedding similarity
- [[from-kevin-bacon-to-hnsw|HNSW]] — Hierarchical Navigable Small World graph algorithm
- [[approximate-nearest-neighbor]] — fast similarity search with relaxed exactness
- [[goedel-code-prover-hierarchical-proof-search|Semantic search]] — meaning-based rather than keyword-based retrieval
- [[rotary-positional-embedding|Embedding]] — dense vector representation of data

## Raw Notes

See raw file for the full intuitive explanation.

## Questions / Follow-ups

- How does HNSW compare to DiskANN or ScaNN in practice?
