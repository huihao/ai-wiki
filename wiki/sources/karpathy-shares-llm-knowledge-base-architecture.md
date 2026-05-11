---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Karpathy shares 'LLM Knowledge Base' architecture that bypasses RAG with an evolving markdown library maintained by AI

## Metadata

- **Author**: Carl Franzen
- **Date**: 2026-04-03
- **URL**: https://venturebeat.com/data/karpathy-shares-llm-knowledge-base-architecture-that-bypasses-rag-with-an
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Karpathy shares 'LLM Knowledge Base' architecture that bypasses RAG with an evolving markdown librar.md`

## Summary

Andrej Karpathy's "LLM Knowledge Bases" approach replaces vector-database RAG with a self-maintaining Markdown wiki. Raw materials are ingested, compiled by an LLM into structured interlinked articles, and actively linted for inconsistencies. The system scales to ~100 articles and ~400,000 words without vector search.

## Key Takeaways

- Three-stage architecture: Data Ingest (raw/ directory), Compilation (LLM writes structured wiki with backlinks), Active Maintenance (linting passes for inconsistencies).
- Rejects vector DB complexity for mid-sized datasets; relies on LLM reasoning over structured text.
- Markdown as source of truth: human-readable, directly traceable, auditable.
- Multi-agent evolution: Secondmate's "Swarm Knowledge Base" scales to 10 agents with Hermes model as Quality Gate.
- "Compound Loop": agents dump raw outputs → compiler organizes → Hermes validates → verified briefings fed back.
- Lex Fridman uses similar setup with dynamic HTML visualization and ephemeral mini-knowledge-bases for voice-mode runs.
- Future direction: synthetic data generation and fine-tuning on the curated wiki.

## Entities Mentioned

- [[andrej-karpathy]] — proposer of the architecture
- Carl Franzen — author
- [[lex-fridman]] — uses similar setup
- Steph Ango — co-creator of Obsidian, proposed "Contamination Mitigation"
- Vamshi Reddy — entrepreneur commenting on enterprise potential
- Eugen Alpeza — CEO of Edra, building enterprise version
- [[how-to-scale-your-model|Nous Research]] — used as quality gate in multi-agent setup
- [[openclaw]] — used in multi-agent swarm architecture

## Concepts Mentioned

- [[karpathy-shares-llm-knowledge-base-architecture|LLM Knowledge Base]] — LLM-maintained Markdown wiki replacing RAG
- [[retrieval-augmented-generation|RAG]] — Retrieval-Augmented Generation (contrasted approach)
- [[designing-agentic-ai-systems-web-dev|Obsidian Web Clipper]] — used for ingesting web content
- Markdown wiki — curated library with librarian model
- [[ai-data-engineer-return-to-basics|Synthetic data generation]] — future use of curated wiki
- [[supervised-fine-tuning|Fine-tuning]] — training smaller models on personal knowledge base
- [[data-contamination|Contamination Mitigation]] — keeping personal vault clean, agents in messy vault
- [[waytoagi-ai-knowledge-base|Swarm Knowledge Base]] — multi-agent wiki scaling

## Questions / Follow-ups

- At what document count does the non-vector approach break down and require hybrid search?
- How does Karpathy's system handle conflicting information from multiple sources?
