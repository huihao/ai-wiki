---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Entity Extraction

## Definition

Entity extraction (also called named entity recognition or NER) is the process of automatically identifying and classifying named entities -- such as people, organizations, locations, dates, and domain-specific terms -- from unstructured text. In the context of modern AI pipelines, entity extraction is a core step in constructing graph knowledge bases, where extracted entities and their relationships form the nodes and edges of a knowledge graph used for retrieval-augmented generation.

## Key Aspects

- Traditional NER relies on statistical models or fine-tuned transformers trained on labeled datasets (e.g., CoNLL, OntoNotes) to tag tokens as entity types
- LLM-based extraction replaces hand-labeled training with prompt-driven structured output, using models like GPT or DeepSeek to extract entities conforming to Pydantic-defined schemas
- Entity extraction is a critical step in GraphRAG pipelines: Crawl4AI scrapes web content, an LLM extracts structured entities and relationships, and platforms like R2R (Reason-to-Retrieve) ingest the results into a graph-backed knowledge base
- Relationship extraction complements entity extraction by identifying how entities connect, enabling multi-hop reasoning over the resulting knowledge graph
- Hybrid search over extracted entities combines vector similarity, full-text search, and graph traversal for robust retrieval across different query types
- Graph knowledge bases built from entity extraction support production co-pilot interfaces, allowing users to query structured knowledge with conversational AI while grounding answers in sourced facts

## Related Concepts

- [[knowledge-graph]]
- [[graphrag]]
- [[named-entity-recognition]]
- [[relationship-extraction]]
- [[retrieval-augmented-generation]]
- [[retrieval-augmented-generation]]
- [[llm-extraction]]

## Sources

- [[graph-knowledge-base-website-copilot]]
- [[llm-extraction]]
- [[r2r]]
- [[turn-website-into-graph-knowledge-base]]
