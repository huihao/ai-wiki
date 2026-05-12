---
created: 2026-04-28
updated: 2026-05-09
tags: [algorithms, graph, search, vector-search]
sources: 2
---

# HNSW

## Definition
Hierarchical Navigable Small World (HNSW) is a graph-based approximate nearest neighbor (ANN) search algorithm that builds a multi-layer graph structure for efficient high-dimensional vector similarity search. At the bottom layer, each vector is connected to its nearest neighbors in a small-world graph. Higher layers contain progressively fewer nodes, forming a coarse-to-fine navigation hierarchy. Search proceeds from the top layer downward: the algorithm navigates the sparse upper layers to quickly reach the general neighborhood of the query, then refines through increasingly dense lower layers. HNSW achieves sub-linear search time (logarithmic in the number of vectors) with high recall, making it the dominant algorithm in production vector databases.

## Key Proponents / Critics
- Yury Malkov — lead author of the HNSW paper (Malkov & Yashunin, 2016)
- NMSLIB — the reference open-source implementation of HNSW (Non-Metric Space Library)
- [[elasticsearch]] — integrated HNSW as its primary vector search engine

## Related Concepts
- [[approximate-nearest-neighbor]] — HNSW is the most widely used ANN algorithm in practice
- [[vector-database]] — most vector databases use HNSW as their primary indexing algorithm
- [[vector-search]] — HNSW is the core algorithm powering vector similarity search
- [[nearest-neighbors]] — HNSW is an approximate solution to the exact nearest neighbor problem
- [[graph-theory]] — HNSW is built on small-world graph theory
- Hnswlib — the high-performance C++ library implementing HNSW
- [[b-tree]] — the equivalent hierarchical index structure for traditional databases

## Related Entities
- [[faiss]] — Facebook's library includes HNSW as one of its index types
- [[chroma]] — uses HNSW (via hnswlib) for vector similarity search
- [[pinecone]] — uses HNSW-based indexing for managed vector search

## Sources
- [[from-kevin-bacon-to-hnsw]] — explains HNSW through an intuitive small-world graph analogy
- [[from-kevin-bacon-to-hnsw-vector-search-intuition]] — provides visual intuition for HNSW graph navigation

## Evolution
- **2014**: Malkov proposes the NSW (Navigable Small World) graph for ANN search
- **2016**: Malkov & Yashunin publish HNSW, adding hierarchical layers to NSW for improved efficiency
- **2017**: hnswlib released as a high-performance C++/Python implementation
- **2020**: FAISS adds HNSW index support alongside IVF-based indexes
- **2021-2023**: HNSW becomes the default index in Elasticsearch, pgvector, Chroma, Weaviate, and Qdrant
- **2024**: Optimizations like ONHNW (ONNG) and GPU-accelerated HNSW variants emerge for billion-scale search
