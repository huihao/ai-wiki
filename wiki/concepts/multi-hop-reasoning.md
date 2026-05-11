---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Multi-Hop Reasoning

## Definition

Multi-hop reasoning refers to queries that require synthesizing information across multiple logical steps, cross-referencing multiple sources, or validating findings against competing data. The system must execute retrievals sequentially where later steps depend on insights from earlier steps.

## Key Proponents / Critics

- [[david-richards|David Richards]] — Analysis of multi-hop reasoning requirements

## Related Concepts

- [[agentic-rag|Agentic RAG]] — Architecture enabling multi-hop reasoning
- [[iterative-retrieval|Iterative Retrieval]] — Implementation pattern

## Sources

- [[the-agentic-reasoning-layer|The Agentic Reasoning Layer]]

## Evolution

Static RAG cannot perform multi-hop reasoning because it retrieves based solely on initial query. Agentic systems retrieve, reason about findings, and decide what to retrieve next. Example: legal research "Find precedents for contract clause, compare to regulatory changes, identify conflicts" requires three sequential reasoning steps with dependencies.

## Practical Implications

Multi-hop reasoning is a key signal indicating need for agentic over static RAG. Requires agents to maintain reasoning context across steps. Example applications: financial analysis across regulatory/market/liquidity dimensions, healthcare diagnosis requiring patient history → guidelines → studies sequence. Failure handling critical: if intermediate retrieval fails, agent must adapt strategy rather than simply return insufficient results.