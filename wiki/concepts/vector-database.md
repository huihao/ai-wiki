---
created: 2026-04-28
updated: 2026-05-09
tags: [database, embedding, infrastructure, vector-search]
sources: 4
---

# Vector Database

## Definition
A vector database is a specialized database optimized for storing, indexing, and querying high-dimensional vector embeddings. Unlike traditional databases that excel at structured queries on scalar data, vector databases provide efficient approximate nearest neighbor (ANN) search, enabling semantic similarity lookups where two vectors that are "close" in embedding space represent semantically similar content. They typically support metadata filtering, CRUD operations, and hybrid search (combining vector similarity with keyword or structured queries), making them a core component of modern AI applications such as RAG pipelines, recommendation systems, and semantic search.

## Key Proponents / Critics
- Pinecone — one of the first managed vector databases, popularizing the category
- [[chroma]] — lightweight open-source vector database designed for AI application development
- Weaviate — open-source vector database with built-in vectorization modules
- Qdrant — high-performance open-source vector database written in Rust

## Related Concepts
- [[approximate-nearest-neighbor]] — the core search algorithm powering vector database queries
- [[hnsw]] — the dominant indexing algorithm used in most vector databases
- [[vector-search]] — the primary query paradigm for vector databases
- [[embedding-layers]] — vectors stored in vector databases are produced by embedding models
- [[embeddings]] — the data type that vector databases are designed to store and search
- [[bm25]] — traditional keyword search often combined with vector search for hybrid retrieval
- [[rag-architecture]] — vector databases are a key component in RAG system architectures
- [[retrieval-augmented-generation]] — the primary use case driving vector database adoption

## Related Entities
- [[pinecone]] — managed vector database service
- [[chroma]] — open-source vector database for AI applications
- [[faiss]] — Meta's vector search library, underlying many vector databases
- [[elasticsearch]] — adds vector search via HNSW-based dense vector fields

## Sources
- [[5-python-libraries-build-optimized-rag-system]] — covers vector databases as part of RAG infrastructure
- [[advanced-techniques-build-rag-system]] — discusses vector database selection for production RAG
- [[comprehensive-rag-ollama-langchain]] — demonstrates vector database usage in practice
- [[rag-pipelines-from-scratch]] — explains vector database integration in RAG pipelines

## Evolution
- **2017**: FAISS (Meta) provides efficient vector search primitives but not a full database
- **2019**: Pinecone launches as one of the first purpose-built managed vector databases
- **2021**: Weaviate and Milvus gain traction as open-source vector database options
- **2022**: Chroma launches, focusing on developer experience for AI applications
- **2023**: The vector database category explodes in popularity alongside LLM/RAG adoption; Qdrant, Pinecone, Weaviate, Chroma, Milvus all gain significant usage
- **2024**: Traditional databases (PostgreSQL via pgvector, Elasticsearch, Redis) add vector search capabilities, blurring category boundaries
