---
created: 2026-04-29
updated: 2026-05-09
tags: [data-ownership, knowledge-management]
sources: 1
---

# File-Over-App

## Definition

File-over-app is a philosophy of data ownership and tool design that prioritizes plain files (particularly Markdown) as the primary data format over proprietary application-specific formats. Popularized by Andrej Karpathy's LLM Knowledge Base approach, it argues that working with open, portable file formats ensures data sovereignty, vendor independence, and seamless integration with AI tools — since any text-based model can read and process plain files directly.

## Key Aspects

- If the application (Obsidian, Notion, etc.) disappears, the files remain readable by any text editor — data survives the tool
- AI agents work most naturally with file systems: CLAUDE.md, AGENTS.md, memory files, and wiki articles are all plain Markdown that the model reads directly
- Karpathy's LLM Knowledge Base uses a three-stage process: (1) dump raw materials into a `raw/` directory, (2) have the LLM "compile" raw data into structured wiki articles with backlinks, (3) maintain via automated linting and consistency checks
- This approach bypasses RAG complexity for mid-sized datasets (~100 articles, ~400K words): the LLM's increasing context window and reasoning ability make vector databases unnecessary when the knowledge base is well-structured
- Contrast with vector DB approach: a vector database is a "massive unorganized warehouse with a fast forklift," while a Markdown wiki is a "curated library with a head librarian" that actively maintains connections between ideas
- Enterprise application: "Every business has a `raw/` directory. Nobody's ever compiled it. That's the product." — the synthesis of disorganized internal knowledge into structured, searchable, AI-maintainable documentation
- The approach extends to synthetic data generation: a well-maintained wiki becomes a perfect training set for fine-tuning smaller models that "know" a specific knowledge base

## Related Concepts

- [[llm-knowledge-base]]
- [[retrieval-augmented-generation]]
- [[vector-database]]

## Sources

- [[llm-knowledge-base-karpathy]]
