---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Learning Frequency

## Definition

Learning frequency is a ranking mechanism used in self-learning coding agent systems that prioritizes which lessons to inject into context based on how frequently and recently errors and fixes have occurred. More frequently occurring lessons are ranked higher and more reliably injected into the agent's working memory, while stale or rare lessons fade over time.

## Key Aspects

- Implemented in systems like pi-self-learning, where lessons are extracted from completed tasks and stored in daily, monthly, and core memory files
- Memory is hierarchical: daily files capture immediate context, monthly summaries capture patterns, and core/CORE.md holds the most important durable learnings
- The `instructionMode` setting (strict/advisory/off) determines whether the agent is required to check its memory logs at each turn or simply has them available
- Lessons are ranked by a combination of frequency (how often the same type of error recurs) and recency (how recently the lesson was last relevant)
- Git-backed memory repositories ensure durability: lessons persist across sessions and are version-controlled
- Addresses the fundamental problem that coding agents have zero memory -- every session starts fresh, and the same mistakes are repeated without a mechanism for accumulating experience

## Related Concepts

- [[self-learning-coding-agent]]
- [[git-backed-memory]]
- [[agent-memory]]

## Sources

- [[self-learning-coding-agent]]
