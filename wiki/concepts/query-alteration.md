---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Query Alteration

## Definition
Query alteration is an advanced RAG technique that rewrites, expands, or reformulates a user's retrieval query before it is executed against a vector database or search index, in order to improve the quality and relevance of retrieved documents. It addresses the gap between how users express queries and how information is encoded in the knowledge base.

## Key Aspects
- Query rewriting fixes grammar, simplifies phrasing, and clarifies ambiguous queries to improve retrieval precision
- Query expansion creates multiple variations of the original query to retrieve a broader set of relevant documents
- Reranking uses heavier models to re-score retrieved documents for relevance after initial retrieval
- Part of the Advanced RAG pipeline, which improves upon Naive RAG's simple chunking-and-retrieval approach
- Works alongside other advanced techniques: Contextual Retrieval (embedding chunks with document context), hybrid search (combining ANN + TF-IDF), and reranking
- Critical for bridging the semantic gap between user intent and document content
- In Agentic RAG, the agent can autonomously decide to alter queries and retry retrieval when initial results are insufficient
- Can be implemented using LLMs themselves to paraphrase or decompose complex questions

## Related Concepts
- [[retrieval-augmented-generation]]
- [[naive-rag]]
- [[agentic-rag]]
- [[reranking]]

## Sources
- [[evolution-modern-rag-architectures]]
