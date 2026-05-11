---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Iterative Retrieval

## Definition

Iterative retrieval is a retrieval strategy in which a system refines and expands its search queries over multiple rounds, using reflection on intermediate results to progressively narrow toward the most relevant information, rather than executing a single retrieval pass.

## Key Aspects

- Static RAG systems hit walls when queries require multi-hop reasoning, ambiguous information needs, or adaptive problem-solving
- Iterative retrieval with reflection allows the system to evaluate its own intermediate answers and decide whether more information is needed
- Part of the "Reasoning-First" architectural pattern where planning precedes retrieval execution
- Frameworks like LangChain and LlamaIndex support iterative retrieval workflows
- Enterprise use cases show dramatic improvements: financial risk analysis time reduced from 4 hours to 12 minutes
- Five signals indicate the need for iterative/agentic retrieval: multi-hop reasoning, dynamic knowledge bases, tool orchestration, reasoning gaps, and failure handling
- Common pitfalls include token explosion, hallucination amplification, and latency degradation

## Related Concepts

- [[agentic-rag]] -- RAG systems with autonomous reasoning and decision-making
- [[multi-hop-reasoning]] -- Queries requiring synthesis across multiple retrieval steps
- [[the-agentic-reasoning-layer]] -- Architectural patterns for adding reasoning to static RAG

## Sources

- [[agentic-rag]]
- [[multi-hop-reasoning]]
- [[the-agentic-reasoning-layer]]
