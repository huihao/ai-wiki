---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Data Source Routing

## Definition

Data source routing is the process by which an AI agent dynamically selects which data sources to query based on the nature of a user's question, the type of information needed, and the characteristics of available sources. It is a core component of Agentic RAG systems that need to intelligently decide where to look for information rather than querying all sources indiscriminately.

## Key Aspects

- Agents analyze the incoming query to determine what type of data is needed: real-time user data, internal documentation, public web sources, or specialized databases
- Different sources have different characteristics: some provide real-time data, others contain historical knowledge, and others offer domain-specific expertise
- Routing decisions can be made by an LLM-based router that understands source capabilities and matches query intent to the appropriate source
- Enables efficient retrieval by avoiding unnecessary queries to irrelevant sources, reducing latency and cost
- In Agentic RAG workflows, routing is one step in a multi-stage pipeline: query analysis, source routing, retrieval, reranking, generation, and reflection
- Supports hybrid approaches where multiple sources are queried in parallel and results are merged
- Reflection loops can trigger re-routing if initial retrieval produces insufficient results

## Related Concepts

- [[agentic-rag]]
- [[contextual-retrieval]]
- [[retrieval-augmented-generation]]
- [[query-understanding]]
- [[retrieval-augmented-generation]]

## Sources

- [[evolution-modern-rag-architectures]]
