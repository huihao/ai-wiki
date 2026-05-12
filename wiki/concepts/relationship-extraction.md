---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Relationship Extraction

## Definition

Relationship extraction is the process of automatically identifying and classifying semantic connections between entities in unstructured text, producing structured triples (subject, predicate, object) or labeled edges in a knowledge graph. When performed by large language models, it replaces brittle rule-based parsers with flexible, schema-driven extraction capable of handling varied formats and implicit relational structure in prose, HTML, or documents.

## Key Aspects

- **LLM-based extraction over rule-based**: Modern relationship extraction uses large language models (via APIs or local inference) guided by structured schemas—typically Pydantic models—to produce validated JSON output. This approach handles diverse document formats without custom parsers, at the cost of higher computational expense.
- **Feeds knowledge graph construction**: Extracted relationships become edges in graph knowledge bases, where entities are nodes and relationships carry semantic labels. This structure enables multi-hop reasoning—traversing chains of relationships to answer questions that span multiple documents.
- **Part of a full pipeline**: A typical workflow (illustrated by tools like Crawl4AI and R2R) starts with web crawling and HTML-to-Markdown conversion, then runs entity and relationship extraction via an LLM, and finally stores results in a graph database (often backed by PostgreSQL) for hybrid retrieval combining vector search, full-text search, and graph traversal.
- **Enables GraphRAG**: Relationship extraction is the foundational step for GraphRAG, a retrieval-augmented generation strategy that augments vector-based retrieval with explicit relationship information, allowing models to reason over structured connections rather than relying solely on embedding similarity.
- **Trade-offs: flexibility vs. cost**: LLM-based extraction dramatically improves robustness over heuristic methods but introduces API costs, latency, and potential hallucination. Temperature tuning and schema constraints help maintain consistency; for very large corpora, smaller fine-tuned models or distilled extractors may be preferred.
- **Multimodal extension**: Modern pipelines extend relationship extraction beyond text to images, PDFs, audio, and structured data formats, using multimodal ingestion to build richer knowledge graphs that incorporate diverse content types.

## Related Concepts

- [[knowledge-graph]]
- [[llm-extraction]]
- [[entity-extraction]]
- [[graphrag]]
- [[hybrid-search]]

## Sources

- [[knowledge-graph]]
- [[llm-extraction]]
- [[r2r]]
- [[turn-website-into-graph-knowledge-base]]
