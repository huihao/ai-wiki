---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Karpathy's LLM Knowledge Base Architecture

## Metadata

- **Author**: Carl Franzen
- **Date**: 2026-04-03
- **URL**: https://venturebeat.com/data/karpathy-shares-llm-knowledge-base-architecture-that-bypasses-rag-with-an
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/Karpathy shares 'LLM Knowledge Base' architecture that bypasses RAG with an evolving markdown librar.md

## Summary

Andrej Karpathy's approach to building LLM Knowledge Bases using evolving Markdown files maintained by AI, bypassing traditional RAG complexity for mid-sized datasets.

## Key Takeaways

### Core Problem

Stateless AI development: Hitting usage limit or ending session feels like lobotomy. Context reset requires reconstructing context, hoping AI "remembers" architectural nuances.

### LLM Knowledge Base Architecture

**Three Stages**:

**1. Data Ingest**:
- Raw materials dumped into raw/ directory
- Research papers, GitHub repos, datasets, web articles
- Obsidian Web Clipper converts web content to Markdown
- Images stored locally for vision capability reference

**2. Compilation Step**:
- LLM "compiles" raw data into structured wiki
- Generates summaries, identifies concepts
- Creates encyclopedia-style articles
- **Crucially**: Creates backlinks between related ideas

**3. Active Maintenance (Linting)**:
- Health checks scan wiki for inconsistencies
- Missing data, new connections identified
- Self-healing knowledge base
- Acts as living AI knowledge base

### Beyond RAG

**Traditional RAG**:
- Documents chopped into chunks
- Converted to vectors (embeddings)
- Stored in vector database
- Similarity search on query
- Feed relevant chunks to LLM

**Karpathy's Approach**:
- Rejects vector database complexity for mid-sized datasets
- Relies on LLM's increasing reasoning over structured text
- Markdown as "source of truth"
- Every claim traceable to specific .md file

### Scaling

**Current Scale**: ~100 articles, ~400,000 words
- LLM navigation via summaries and index files sufficient
- For departmental wiki or personal research, fancy RAG introduces more latency and retrieval noise than it solves

**Lex Fridman's Extension**:
- Generate dynamic HTML with JS for sorting/filtering
- Interactive tinkering with visualizations
- Temporary focused mini-knowledge-base for voice-mode interaction on runs

### Enterprise Implications

**The Product**: "Every business has a raw/ directory. Nobody's ever compiled it. That's the product."

**Company Bible**: Actively authored, real-time updating synthesis of Slack logs, internal wikis, PDF reports

**Multi-Agent Swarm**: OpenClaw 10-agent system with Quality Gate
- Hermes model validates drafts before promoting to live wiki
- Compound Loop: raw outputs → compiler → Hermes validation → verified briefings fed back to agents

### File-Over-App Philosophy

**Markdown**: Future-proof, not locked into vendor
- If Obsidian disappears, files remain readable
- Any text editor works

**Obsidian**: Local-first, EULA allows free personal use
- Commercial use requires license
- Data sovereignty preserved

**Custom Tools**: Python scripts bridge LLM to local filesystem

**Challenge**: Direct challenge to SaaS-heavy models (Notion, Google Docs)
- User owns data
- AI merely visits files to perform work

### Librarian vs Search Engine

**Vector DB**: Massive unorganized warehouse with fast forklift
- Find anything, don't know why it's there or how relates

**Markdown Wiki**: Curated library with head librarian
- Constantly writing new books to explain old ones
- Active maintenance and connection building

### Next Phase

**Synthetic Data Generation**: Wiki becomes perfect training set
- Data becomes "pure" through continuous linting
- Fine-tune smaller model on wiki
- Model "knows" researcher's knowledge base in weights
- Personal research becomes custom, private intelligence

## Entities Mentioned

- [[andrej-karpathy|Andrej Karpathy]] — Originator of approach
- [[carl-franzen|Carl Franzen]] — Article author
- [[venturebeat|VentureBeat]] — Publication
- [[lex-fridman|Lex Fridman]] — Extension implementation
- [[obsidian|Obsidian]] — Note-taking app used
- [[hermes-model|Hermes Model]] — Nous Research validation model
- [[nous-research|Nous Research]] — Hermes model creator
- [[openclaw|OpenClaw]] — Multi-agent platform
- [[secondmate|Secondmate]] — Agent creation platform

## Concepts Mentioned

- [[llm-knowledge-base|LLM Knowledge Base]] — Markdown-based AI-maintained wiki
- [[rag|RAG]] — Retrieval-Augmented Generation
- [[vector-database|Vector Database]] — Embedding storage for RAG
- [[backlinks|Backlinks]] — Connections between related ideas
- [[linting|Linting]] — Active maintenance of knowledge
- [[self-healing|Self-Healing]] — Automatic consistency checking
- [[compilation-step|Compilation Step]] — Processing raw to structured
- [[quality-gate|Quality Gate]] — Validation before promotion
- [[compound-loop|Compound Loop]] — Cycle of improvement
- [[file-over-app|File-Over-App]] — Philosophy of data ownership
- [[synthetic-data-generation|Synthetic Data Generation]] — Training from clean wiki

## Raw Notes

Karpathy: "You rarely ever write or edit the wiki manually; it's the domain of the LLM."

Key shift: From "chatting" with AI to spawning agent teams that build custom research environments for tasks, then dissolve.

## Questions / Follow-ups

- How well does this scale beyond 100 articles?
- What validation issues does Hermes catch?
- How do you handle contradictory sources?
- What's the cost of continuous linting?
