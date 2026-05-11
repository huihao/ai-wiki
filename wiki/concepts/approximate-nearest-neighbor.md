---
created: 2026-04-28
updated: 2026-05-09
tags: [algorithms, information-retrieval, search, vector-search]
sources: 2
---

# Approximate Nearest Neighbor

## Definition
Approximate Nearest Neighbor (ANN) search refers to algorithms that find vectors approximately closest to a query vector in a high-dimensional space, trading exactness for orders-of-magnitude improvements in speed and memory. Exact nearest neighbor search requires linear scans that are impractical at scale (the curse of dimensionality makes tree-based exact methods degrade). ANN algorithms achieve sub-linear query time by building specialized index structures — such as graphs (HNSW), quantization codes (product quantization), or trees — that enable fast navigation to likely nearest neighbors with tunable recall guarantees.

## Key Proponents / Critics
- Spotify — developed Annoy (Approximate Nearest Neighbors Oh Yeah), one of the first widely-used ANN libraries
- [[facebook]] — FAISS (Facebook AI Similarity Search) is the most comprehensive ANN library
- Yury Malkov — author of HNSW, the dominant graph-based ANN algorithm

## Related Concepts
- [[hnsw]] — the most popular graph-based ANN algorithm in production
- [[vector-database]] — ANN search is the core capability of vector databases
- [[vector-search]] — the application-level term for ANN search in information retrieval
- [[embedding-layers]] — ANN search operates on vectors produced by embedding models
- [[curse-of-dimensionality]] — explains why exact NN search becomes infeasible in high dimensions
- Product Quantization — a compression-based approach to ANN that reduces memory requirements
- [[b-tree-index]] — the traditional exact index structure that ANN replaces for high-dimensional data
- [[re-ranking]] — ANN provides initial candidates, which are then re-ranked for precision

## Related Entities
- [[faiss]] — Meta's comprehensive library for ANN search (IVF, HNSW, PQ indexes)
- [[elasticsearch]] — supports ANN search via HNSW vectors
- [[chroma]] — vector database built on HNSW for ANN search

## Sources
- [[from-kevin-bacon-to-hnsw-vector-search-intuition]] — explains ANN search through the HNSW algorithm
- [[5-python-libraries-build-optimized-rag-system]] — covers ANN libraries used in RAG pipelines

## Evolution
- **2006**: Locality-sensitive hashing (LSH) establishes sublinear ANN search via hash-based indexing
- **2011**: Facebook develops FAISS for billion-scale similarity search
- **2012**: Spotify releases Annoy for tree-based ANN search
- **2016**: HNSW (Malkov & Yashunin) achieves state-of-the-art recall/speed tradeoff via hierarchical graphs
- **2020-2024**: ANN becomes foundational infrastructure for RAG, recommendation systems, and semantic search
