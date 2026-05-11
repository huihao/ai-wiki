---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Reflection

## Definition

Reflection is the process by which an AI coding agent analyzes its own completed work to extract lessons learned, identify mistakes, and record fixes for future reference. It enables agents to build durable memory systems that prevent repeated errors and improve performance over time, addressing the fundamental problem that most coding agents have zero persistent memory between sessions.

## Key Aspects

- Solves the core problem that coding agents have no memory: every session is a fresh start, and the same errors are repeated across files
- Implemented in systems like pi-self-learning, which automatically extracts what went wrong and how it was fixed after each task
- Produces structured memory files: daily logs (YYYY-MM-DD.md), monthly summaries, long-term memory, and a ranked core knowledge file (CORE.md)
- Memory is git-backed, providing version-controlled, durable persistence of learned knowledge
- Memory loading configuration includes options for core injection, monthly summaries, and instruction modes (strict/adisory/off) that enforce checking memory logs
- Reflection frequency and recency determine ranking of durable learnings, ensuring most relevant knowledge surfaces first
- Commands like `/learning-now` and `/learning-month` allow manual triggering of reflection processes
- Key insight: "Memory is the missing piece for long-term agent usefulness. Without it, even the smartest agent just makes the same mistakes repeatedly."

## Related Concepts

- [[self-learning]] -- Agent memory and learning from mistakes
- [[git-backed-memory]] -- Using Git for memory persistence
- [[durable-learnings]] -- Long-lasting knowledge extraction
- [[memory-hierarchy]] -- Daily, monthly, long-term, core structure

## Sources

- [[self-learning-coding-agent]]
