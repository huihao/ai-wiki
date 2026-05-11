---
created: 2026-04-29
updated: 2026-05-09
tags: [embedding, machine-learning, nlp]
sources: 1
---

# Embedding Models

## Definition

Embedding models are machine learning models that transform text (or other data) into dense numerical vectors that capture semantic meaning, enabling similarity search, clustering, and retrieval. In modern RAG (Retrieval Augmented Generation) architectures, embedding models are the bridge between raw text and vector databases, encoding document chunks and queries into a shared vector space where semantic similarity corresponds to geometric proximity.

## Key Aspects

- Embedding models are central to Naive RAG: documents are chunked, passed through an embedding model, and stored as vectors in a vector database for later retrieval via approximate nearest neighbor (ANN) search
- The progression from static embeddings (Word2Vec, GloVe) to contextual embeddings (BERT, Sentence-BERT) dramatically improved the quality of semantic representations
- Domain-specific fine-tuning of embedding models (e.g., for medical or legal text) can significantly improve retrieval quality over general-purpose embeddings
- In Contextual Retrieval (proposed by Anthropic), chunks are embedded together with document-level context before vectorization, combining contextual embeddings with TF-IDF for hybrid search
- Embedding model quality directly impacts RAG system accuracy: better embeddings mean more relevant chunks are retrieved, leading to better LLM responses
- Cache Augmented Generation (CAG) bypasses embedding-based retrieval entirely by pre-computing context into the KV cache, trading flexibility for speed on static knowledge bases
- The cost-accuracy tradeoff in embedding model selection is significant: larger models produce better embeddings but increase storage, indexing, and query latency costs

## Related Concepts

- [[retrieval-augmented-generation]]
- [[vector-database]]
- [[contextual-retrieval]]

## Sources

- [[evolution-modern-rag-architectures]]
