---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Reranking

## Definition

Reranking is a second-stage ranking technique in information retrieval and RAG systems where a heavier, more computationally expensive model re-scores an initial set of retrieved documents to improve relevance ordering. It follows a fast but approximate first-stage retrieval (like vector similarity search) and produces a more accurate final ranking.

## Key Aspects

- Addresses limitations of naive RAG where initial retrieval may not surface the most relevant documents
- Uses larger, more sophisticated models than the initial embedding-based retrieval to assess document-query relevance
- Typically applied to a candidate set of documents already retrieved by faster methods (ANN search, BM25)
- Key technique in Advanced RAG architectures, alongside query alteration, query expansion, and embedding model fine-tuning
- Can incorporate cross-encoder models that jointly process query-document pairs for richer relevance signals
- Trade-off: higher computational cost per query but significantly improved result quality
- In Agentic RAG workflows, reranking is part of the retrieve-and-rerank step before answer composition
- Often combined with Contextual Retrieval techniques where chunks are enriched with document-level context before reranking

## Related Concepts

- [[retrieval-augmented-generation]] -- Retrieval Augmented Generation where reranking is a key component
- [[contextual-retrieval]] -- Enriching chunks with document context before reranking
- [[cross-encoder]] -- Model architecture commonly used for reranking
- [[query-alteration]] -- Complementary technique for improving retrieval quality

## Sources

- [[evolution-modern-rag-architectures]]
