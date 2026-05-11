---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Durable Learnings

## Definition

Durable learnings are long-lasting, git-backed knowledge entries extracted from an AI coding agent's completed tasks, capturing mistakes made and fixes applied so that lessons persist across sessions. Systems like pi-self-learning implement this by maintaining a hierarchical memory structure that agents can consult to avoid repeating the same errors.

## Key Aspects

- Coding agents suffer from zero memory: every session starts fresh, and the same errors are repeated across different files and sessions
- After each task, the system automatically extracts what went wrong and how it was fixed, appending entries to daily markdown files
- A ranked core file (CORE.md) distills the most important learnings, injected into the agent's context at the start of each session
- Memory hierarchy: daily files (YYYY-MM-DD.md), monthly summaries (YYYY-MM.md), long-term memory (long-term-memory.md), and core learnings (CORE.md)
- Git-backed storage ensures learnings are version-controlled, searchable, and recoverable
- Configuration options include instruction modes (strict, advisory, off) that control whether the agent must check its memory logs before acting
- Commands like /learning-now, /learning-month, and /learning-toggle provide manual control over the learning process
- Addresses the fundamental gap between an agent's in-session intelligence and its lack of cross-session knowledge accumulation

## Related Concepts

- [[agent-memory]]
- [[self-learning]]
- [[git-backed-memory]]
- [[reflection]]
- [[memory-hierarchy]]

## Sources

- [[self-learning-coding-agent]]
