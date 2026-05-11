---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, learning]
sources: 2
---

# Self-Learning

## Definition

Self-learning in the context of AI coding agents is a pattern where agents accumulate durable knowledge from completed tasks, extracting lessons about mistakes and fixes and persisting them for future reference. Unlike standard agent sessions that start fresh every time, self-learning agents build an evolving memory that prevents repeated errors and improves performance over time.

## Key Aspects

- Standard coding agents have zero memory across sessions -- every session starts from scratch
- Self-learning systems extract what went wrong and how it was fixed after each task
- Knowledge is persisted in a hierarchical memory structure: daily logs, monthly summaries, long-term memory, and core learnings
- Git-backed memory repositories provide version control and transparency for accumulated knowledge
- Memory is injected into agent context at each turn, providing durable learning across sessions
- Instruction modes (strict/advisory/off) control how forcefully the agent checks past learnings
- Reflection processes analyze patterns across accumulated experience to extract generalizable principles
- Ranking by frequency and recency ensures the most relevant learnings surface first
- The approach treats agent memory as a first-class engineering concern rather than an afterthought

## Related Concepts

- [[agent-memory]]
- [[agent-learning]]
- [[git-backed-memory]]
- [[reflection]]
- [[durable-execution]]

## Sources

- [[index]]
- [[self-learning-coding-agent]]
