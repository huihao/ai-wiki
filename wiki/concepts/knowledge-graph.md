---
created: 2026-04-29
updated: 2026-05-12
tags: [algorithms]
sources: 2
---

# Knowledge Graph

## Definition

A knowledge graph is a structured representation of information consisting of entities (nodes) and the relationships between them (edges), forming a graph structure that can be queried, reasoned over, and used to power intelligent applications. In AI systems, knowledge graphs enable retrieval-augmented generation (RAG) by providing structured context that supports multi-hop reasoning beyond simple vector similarity search.

## Key Aspects

- Entities represent real-world objects, concepts, or events; edges encode typed relationships between them (e.g., "authored_by", "located_in")
- **GraphRAG** automatically extracts entities and relationships from unstructured text, constructing the graph without manual curation
- Enables multi-hop reasoning: answering questions that require traversing multiple relationship hops across the graph
- Combines with vector search in hybrid retrieval systems, where both semantic similarity and graph structure contribute to result ranking
- Can be built from any website using tools like Crawl4AI (scraping and LLM-based extraction) and R2R (graph construction and querying)
- Production implementations often use Postgres or Neo4j as the backing store, supporting both graph traversal and vector search queries
- Entities as nodes with properties and descriptions; relationships as edges with semantic meaning
- Better for questions requiring understanding of connections between concepts

## Related Concepts

- [[retrieval-augmented-generation]]
- [[information-retrieval]]
- [[entity-extraction]]
- [[relationship-extraction]]
- [[hybrid-search]]

## Sources

- [[turn-website-into-graph-knowledge-base]] — Graph construction from web content

## Evolution

- Traditional entity-relationship models
- Modern systems combining semantic embeddings, automatic extraction, and multi-hop reasoning
- GraphRAG integrates graphs with vector search for hybrid retrieval strategies
