---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Document Stores

## Definition

Document stores are storage backends designed for managing and retrieving unstructured or semi-structured documents (text, JSON, etc.) in search and retrieval pipelines. In RAG systems, they provide the infrastructure for indexing, storing, and querying document chunks that are retrieved to augment LLM generation.

## Key Aspects

- InMemoryBM25Retriever provides fast exact word matching for small document collections
- InMemoryEmbeddingRetriever enables semantic similarity search using vector embeddings
- ElasticsearchBM25Retriever offers production-ready, scalable document storage and search
- All retriever types in frameworks like Haystack share a common interface, enabling easy swapping between in-memory and production backends
- BM25 retrieval is fast but does not handle synonyms or spelling mistakes; embedding retrieval captures semantic similarity
- Document stores support metadata filtering with top_k parameters for precise retrieval control
- Production scaling requires upgrading from in-memory stores to backends like Elasticsearch, with minimal code changes
- Document stores are the bridge between data ingestion pipelines and retrieval-augmented generation

## Related Concepts

- [[retrieval-augmented-generation]]
- [[rag-pipelines]]
- [[retrievers]]
- [[elasticsearch]]
- [[bm25]]
- [[embedding-retrieval]]

## Sources

- [[rag-pipelines-from-scratch]]
