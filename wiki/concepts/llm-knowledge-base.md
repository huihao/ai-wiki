---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# LLM Knowledge Base

## Definition

An LLM Knowledge Base, as conceptualized by Andrej Karpathy, is an AI-maintained wiki built from evolving Markdown files that serves as structured, persistent knowledge storage for LLM-assisted work. Rather than relying on vector databases and RAG pipelines, this approach uses LLMs to "compile" raw research materials into interconnected Markdown articles, creating a curated library that addresses the stateless nature of AI conversations.

## Key Aspects

- **Three-Stage Pipeline**: Data Ingest (raw materials into raw/ directory) -> Compilation (LLM generates structured wiki articles with backlinks) -> Active Maintenance/Linting (health checks scan for inconsistencies)
- **Beyond RAG**: Rejects vector database complexity for mid-sized datasets; relies on LLM reasoning over structured text instead of embedding similarity search
- **Markdown as Source of Truth**: Every claim traceable to specific .md file; if the tool disappears, files remain readable in any text editor
- **File-Over-App Philosophy**: User owns data; AI merely visits files to perform work; direct challenge to SaaS models (Notion, Google Docs)
- **Self-Healing**: Linting process identifies missing data, new connections, and inconsistencies; the knowledge base actively maintains itself
- **Current Scale**: ~100 articles, ~400,000 words; LLM navigation via summaries and index files sufficient without fancy RAG
- **Synthetic Data Generation**: Clean, linted wiki becomes ideal training data for fine-tuning a personal model that internalizes the researcher's knowledge
- **Multi-Agent Integration**: OpenClaw 10-agent system with Quality Gate validates drafts before promoting to live wiki using Hermes model
- **Enterprise Implication**: "Every business has a raw/ directory. Nobody's ever compiled it. That's the product."

## Related Concepts

- [[hallucination]]
- [[llm-embeddings]]
- [[kl-divergence]]

## Sources

- [[index]]
- [[llm-knowledge-base-karpathy]]
