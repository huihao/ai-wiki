---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Linting

## Definition

Linting, in the context of an LLM-maintained knowledge base, refers to automated health checks that scan the knowledge base for inconsistencies, broken links, missing data, and new connections that should be added. Inspired by code linting tools that enforce style and correctness rules, knowledge base linting ensures the wiki remains a coherent, self-consistent, living document.

## Key Aspects

- Part of Karpathy's three-stage LLM knowledge base workflow: Data Ingest, Compilation, and Active Maintenance (Linting)
- Linting scans detect missing backlinks, outdated information, newly relevant connections, and structural inconsistencies
- Acts as a self-healing mechanism: the LLM identifies problems and generates fixes automatically, keeping the knowledge base coherent without manual curation
- The compilation step (stage 2) creates the initial structured wiki with encyclopedia-style articles and backlinks between related concepts
- Linting (stage 3) maintains the wiki as a living document that evolves with new information rather than becoming stale
- Distinguishes this approach from traditional RAG systems: instead of chunking documents into vectors, the knowledge base is maintained as a curated, internally consistent graph of concepts

## Related Concepts

- [[llm-knowledge-base-karpathy]]
- [[knowledge-graph]]
- [[rag-vs-knowledge-base]]

## Sources

- [[llm-knowledge-base-karpathy]]
