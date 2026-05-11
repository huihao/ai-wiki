---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Naive RAG

## Definition

Naive RAG is the simplest form of Retrieval Augmented Generation, implementing a straightforward pipeline of chunking documents into segments, embedding them as vectors, storing them in a vector database, and retrieving relevant chunks at query time to augment LLM generation. It represents the starting point for RAG architectures before more advanced techniques address its inherent limitations.

## Key Aspects

- **Core pipeline**: Split corpus into chunks -> embed with embedding model -> store in vector DB -> embed query -> ANN search -> map vectors to text -> pass to LLM with prompt
- **Chunking strategy**: Documents are divided into fixed-size or semantic segments, with the chunking approach significantly affecting retrieval quality
- **Vector similarity search**: Approximate Nearest Neighbor (ANN) search in embedding space identifies chunks semantically similar to the query
- **LLM generation**: Retrieved chunks are concatenated with the query into a prompt, enabling the LLM to ground its response in retrieved context
- **Limitations driving evolution**: Insufficient for real business problems due to retrieval inaccuracies, context fragmentation, and lack of document-level understanding
- **Contextual Retrieval improvement**: Anthropic's enhancement situates chunks within whole document context before embedding, combining contextual and TF-IDF approaches
- **Reranking addition**: Advanced techniques add a second-stage ranking with heavier models to improve retrieval precision
- **Baseline for comparison**: Naive RAG serves as the comparison baseline against which Advanced RAG, Contextual RAG, and Agentic RAG are measured

## Related Concepts

- [[retrieval-augmented-generation]]
- [[contextual-retrieval]]
- [[agentic-rag]]
- [[vector-database]]

## Sources

- [[evolution-modern-rag-architectures]]
