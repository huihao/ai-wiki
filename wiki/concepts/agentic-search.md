---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, architecture]
sources: 2
---

# Agentic Search

## Definition

A context management strategy where agents maintain lightweight indexes and retrieve knowledge dynamically at runtime rather than pre-loading all knowledge into the context window. Coined by Anthropic in their context engineering guidance, it has been independently validated by OpenAI Codex, Cursor, and production teams.

## Key Proponents / Critics

- **Originator**: [[anthropic]] — "Building Effective AI Agents" guidance
- **Validators**: [[openai|OpenAI Codex team]] — "progressive disclosure" at million-line scale
- **Validators**: [[cursor]] — dynamic context discovery reducing token consumption 46.9%
- **Practitioners**: [[rickyshou]] — full-lifecycle engineering system

## Related Concepts

- [[progressive-disclosure]] — pull-based context loading
- [[context-engineering]] — managing what the agent sees
- [[agent-builder-memory-system|Memory bank]] — persistent knowledge storage
- [[context-rot]] — degradation from overloaded context

## Sources

- [[agentic-engineering-engineering-revolution]] — five independent practices converging
- [[trace-declarative-modeling-for-the-ai-age|Trace: Declarative Modeling for the AI Age]] — INDEX.md as lightweight retrieval index

## Evolution

- **2024**: Anthropic proposes Agentic Search as alternative to pre-loading.
- **2025**: Cursor implements dynamic context discovery with measured token savings.
- **2026**: OpenAI Codex team validates at million-line codebase scale.
- **Consensus**: "Lightweight index +按需深入" is now considered optimal practice.
