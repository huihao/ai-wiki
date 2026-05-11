---
created: 2026-05-11
updated: 2026-05-11
tags: [concept]
sources: 1
---

# Spec Coding

## Definition

An AI code generation paradigm where the AI strictly follows written, structured specifications (Specs) that define "What", "Why", and "How" for the software being built. Contrasted with [[vibe-coding|Vibe Coding]], which relies on developer intuition and pattern imitation. Spec Coding trades initial setup cost for dramatically lower maintenance cost — when requirements change, you only update the Spec and the AI adapts automatically.

## Key Proponents / Critics

- [[shopping-guide-detail-team]] — Alibaba team that formalized the Spec Coding concept and combined it with RAG

## Related Concepts

- [[spec-driven-development]] — The broader practice; Spec Coding is the AI-application variant
- [[vibe-coding]] — The unreliable counterpart: fast but prone to hallucinations and logic gaps
- [[retrieval-augmented-generation]] — Used alongside Spec Coding to provide "soft context" (documents, history, best practices) complementing the "hard rules" of Specs
- [[context-engineering]] — Spec + RAG is a practical implementation of context engineering principles
- [[harness-engineering]] — Spec Coding constrains AI generation through specification-based harnesses

## Evolution

| Dimension | Vibe Coding | Spec Coding |
|-----------|-------------|-------------|
| Basis | "Feels like it should work" | "Rules require this" |
| Reliability | Prone to hallucinations, edge case misses | Verifiable, auditable |
| Maintenance | Fast start, high long-term cost | Initial investment, low long-term cost |
| Best for | Prototypes, personal projects | Enterprise, compliance-critical systems |

## Sources

- [[spec-rag-against-pseudo-intelligence]]
