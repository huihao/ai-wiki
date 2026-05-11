---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Backlinks

## Definition
Backlinks are bidirectional references between related wiki articles that enable traversing a knowledge base by following associations rather than hierarchical navigation. In Karpathy's LLM Knowledge Base architecture, backlinks are explicitly created during the compilation step, connecting related ideas across structured Markdown files to form a navigable, interconnected knowledge graph.

## Key Aspects
- **Compilation-step creation**: Backlinks are generated when an LLM compiles raw data into structured wiki articles, identifying and linking related concepts across the knowledge base
- **Implicit navigation**: Unlike explicit search, backlinks allow "following your nose" through related ideas, discovering connections that keyword search might miss
- **Markdown-native**: In Obsidian and similar tools, `[[double-bracket]]` syntax creates backlinks automatically, with bidirectional link tracking built into the file system
- **Knowledge graph structure**: Backlinks transform a collection of flat articles into a connected graph, enabling path-based reasoning between concepts
- **Self-healing**: The active maintenance (linting) phase scans the wiki for broken or missing backlinks, identifying inconsistencies and new connections
- **Scale considerations**: At ~100 articles (~400K words), LLM navigation via summaries and backlinks is sufficient; larger knowledge bases may benefit from vector-based retrieval

## Related Concepts
- [[llm-knowledge-base-karpathy]] -- Karpathy's architecture where backlinks are a core design element
- [[retrieval-augmented-generation]] -- traditional retrieval-augmented generation as an alternative to backlink-based navigation
- [[knowledge-graph]] -- the graph structure backlinks create

## Sources
- [[llm-knowledge-base-karpathy]]
