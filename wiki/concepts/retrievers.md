---
created: 2026-04-29
updated: 2026-05-09
tags: [rag, search]
sources: 2
---

# Retrievers

## Definition

Retrievers are components in RAG systems that search document stores to find the most relevant information for a given query, serving as the critical link between user questions and the knowledge base. They come in multiple flavors -- from fast exact-word matching (BM25) to semantic similarity search (embedding-based) -- each with distinct trade-offs in speed, accuracy, and robustness to query variation.

## Key Aspects

- BM25 retrieval uses term frequency-inverse document frequency for fast exact word matching but does not handle synonyms or spelling mistakes
- Embedding-based retrieval uses dense vector similarity to capture semantic meaning, handling paraphrases and related concepts
- In-memory retrievers (InMemoryBM25Retriever, InMemoryEmbeddingRetriever) are suitable for prototyping and small datasets
- Production retrievers (ElasticsearchBM25Retriever) provide scalable backend with identical API interfaces
- The top_k parameter controls how many documents are retrieved, balancing context richness against token budget
- Metadata filtering enables retrieval to be scoped by document properties (date, category, source)
- Hybrid retrieval combines sparse and dense methods for better coverage
- Retrieval quality directly determines RAG answer quality -- garbage in, garbage out

## Related Concepts

- [[rag-architecture]]
- [[prompt-builder]]
- [[bm25]]
- [[vector-search]]
- [[elasticsearch]]

## Sources

- [[rag-pipelines-from-scratch]]
- [[sara-zan]]
