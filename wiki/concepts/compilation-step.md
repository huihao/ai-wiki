---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Compilation Step

## Definition

The compilation step in Karpathy's LLM Knowledge Base architecture is the phase where an LLM processes raw, unstructured data (research papers, web articles, datasets) and transforms it into structured, encyclopedia-style wiki articles. The LLM acts as a compiler, generating summaries, identifying concepts, and creating backlinks between related ideas.

## Key Aspects

- **Three-Stage Pipeline**: Data Ingest (raw/ directory) → Compilation Step (LLM structuring) → Active Maintenance (linting)
- **LLM as Compiler**: The model reads raw materials and produces structured markdown articles with summaries
- **Backlink Creation**: Automatically identifies and links related concepts across articles
- **Concept Identification**: Extracts key ideas from raw sources and creates dedicated concept pages
- **Traceability**: Every claim in the compiled wiki is traceable to a specific raw source file
- **Quality Through Structure**: Structured markdown is more navigable and useful than raw document dumps
- **Scalable**: Works for ~100 articles and ~400,000 words before requiring RAG-style retrieval

## Related Concepts

- [[llm-knowledge-base-karpathy]]
- [[compound-loop]]
- [[retrieval-augmented-generation]]

## Sources

- [[llm-knowledge-base-karpathy]]
