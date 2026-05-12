---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms]
sources: 3
---

# Hybrid Search

## Definition

Hybrid search is a retrieval strategy that combines multiple search methods -- typically vector (semantic) search, full-text (keyword) search, and graph-based RAG -- to leverage the strengths of each approach and deliver more accurate and comprehensive results than any single method alone.

## Key Aspects

- Combines vector embeddings for semantic similarity, full-text for exact keyword matching, and knowledge graph traversal for relational queries
- Used in production-ready RAG systems to handle diverse query types: factual lookup, conceptual similarity, and multi-hop reasoning
- Graph-based RAG (GraphRAG) adds a structural layer by traversing entity-relationship graphs extracted from source documents
- Platforms like R2R implement hybrid search with PostgreSQL as a unified backend for vector search and graph queries
- Web content can be converted into graph knowledge bases using crawling tools (Crawl4AI) and LLM-based entity/relationship extraction
- Hybrid approaches outperform vector-only RAG for queries requiring relational reasoning across multiple documents

## Related Concepts

- [[knowledge-graph]] -- Knowledge representation using entities and relationships
- [[agentic-rag]] -- RAG systems with autonomous reasoning capabilities
- [[multi-hop-reasoning]] -- Queries requiring synthesis across multiple retrieval steps

## Sources

- [[knowledge-graph]]
- [[r2r]]
- [[turn-website-into-graph-knowledge-base]]
