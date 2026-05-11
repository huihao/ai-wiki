---
created: 2026-04-28
updated: 2026-05-09
tags: [embedding, information-retrieval, search]
sources: 1
---

# Semantic Search

## Definition

Semantic search is a search technique that understands the meaning and intent behind queries, rather than relying solely on keyword matching. It uses dense vector embeddings to represent the semantic content of documents and queries in a high-dimensional space, enabling retrieval based on conceptual similarity rather than lexical overlap. When a user searches, both the query and documents are encoded into embeddings, and results are returned based on cosine similarity or other distance metrics in the embedding space. This allows semantic search to find relevant results even when they use different words to express the same concept.

## Key Proponents / Critics

- The approach is broadly adopted across the search and AI community
- Pinecone, Weaviate, ChromaDB, and other vector database companies have popularized semantic search in production systems

## Related Concepts

- [[vector-embeddings]] — Semantic search relies on vector embeddings to represent document and query meaning
- [[information-retrieval]] — Semantic search is a modern evolution of traditional information retrieval
- [[embedding-models]] — The models that generate the dense vectors used for semantic search
- [[vector-search]] — The underlying similarity search algorithms that power semantic retrieval
- [[retrieval-augmented-generation]] — RAG systems use semantic search to retrieve relevant context for LLMs
- [[approximate-nearest-neighbor]] — ANN algorithms enable efficient similarity search at scale
- [[hnsw]] — HNSW is one of the most popular ANN indexing algorithms for semantic search

## Related Entities

- [[pinecone]] — Vector database company specializing in semantic search infrastructure
- [[chromadb]] — Open-source vector database for semantic search applications
- [[huggingface]] — Hosts embedding models used for semantic search

## Sources

- [[rag-pipelines-from-scratch]] — Covers building semantic search components as part of RAG pipelines

## Evolution

- **2013-2017**: Word2Vec, GloVe, and FastText demonstrate that word embeddings capture semantic relationships
- **2018-2019**: BERT and sentence-transformers enable document-level semantic embeddings
- **2020-2021**: Vector databases (Pinecone, Milvus, Weaviate) emerge to support semantic search at scale
- **2022-2023**: Semantic search becomes a core component of RAG systems for LLMs
- **2024-2025**: Hybrid search (combining semantic and keyword methods), late-interaction models (ColBERT, ColPali), and multimodal semantic search expand the capability
