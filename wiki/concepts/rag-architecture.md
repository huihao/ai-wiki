---
created: 2026-04-29
updated: 2026-05-09
tags: [architecture, rag]
sources: 2
---

# RAG Architecture

## Definition

RAG (Retrieval-Augmented Generation) Architecture refers to the system design patterns for building applications that combine information retrieval with language model generation, grounding LLM outputs in external, up-to-date knowledge without requiring fine-tuning. It encompasses the full pipeline from document ingestion and indexing through retrieval, prompt construction, and generation, with specialized patterns for different use cases.

## Key Aspects

- RAG was first defined in a Meta 2020 paper to address LLM limitations: limited knowledge, hallucination, and inability to cite sources
- Core components: retriever (finds relevant snippets), prompt builder (constructs context), and generator (LLM produces answer)
- Retrieval strategies include BM25 (sparse/exact matching), embedding-based (dense/semantic), and hybrid approaches
- Specialized patterns exist for different domains: legal document RAG, audio retrieval, and multi-modal RAG
- Agentic RAG adds autonomous reasoning, planning, and adaptive retrieval strategies on top of static pipelines
- Production RAG requires scalable document stores (Elasticsearch, vector databases) and monitoring
- Activation quantization and embedding optimization affect RAG system performance at scale
- ANN (Approximate Nearest Neighbor) search algorithms determine retrieval speed and quality trade-offs
- The architecture must handle document updates, deduplication, and relevance decay over time

## Related Concepts

- [[retrievers]]
- [[prompt-builder]]
- [[agentic-rag]]
- [[vector-search]]
- [[embedding-optimization]]

## Sources

- [[ai-insights-blog-avichala]]
- [[avichala]]
