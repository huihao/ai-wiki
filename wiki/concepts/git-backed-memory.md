---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Git-Backed Memory

## Definition

Git-backed memory is a persistence mechanism for AI coding agents that uses a dedicated Git repository to store and version agent learning experiences, mistakes, and fixes. After completing each task, the agent extracts lessons learned, writes them to markdown files organized in a temporal hierarchy, and commits them to Git, creating an auditable and durable knowledge base.

## Key Aspects

- **Automatic Extraction**: After each task, the agent automatically extracts what went wrong and how it was fixed, appending entries to dated markdown files
- **Memory Hierarchy**: A structured folder layout organizes memories at multiple time scales — daily (YYYY-MM-DD.md), monthly (YYYY-MM.md), long-term (long-term-memory.md), and core (CORE.md) with top-ranked durable learnings
- **Git Versioning**: All memory writes are committed to a dedicated Git repository, providing full history, rollback capability, and branch isolation
- **Session Injection**: Memory is loaded at session start via configuration flags (includeCore, includeLatestMonthly) and injected into each turn's context
- **Instruction Modes**: strict (enforces checking memory logs), advisory (suggests checking), or off — controlling how strongly the agent consults its memory
- **Commands**: `/learning-now` generates reflections, `/learning-month` creates monthly summaries, `/learning-toggle` enables/disables per branch

## Related Concepts
- [[self-learning-coding-agent]]
- [[agent-memory]]

## Sources
- [[self-learning-coding-agent]]
