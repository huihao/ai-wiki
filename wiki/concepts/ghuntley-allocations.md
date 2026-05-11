---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Ghuntley Allocations

## Definition

Ghuntley Allocations refers to a context window management strategy in LLM-based coding agents, named after Geoffrey Huntley's contributions to the agent engineering discourse. It describes the deliberate allocation and partitioning of an LLM's limited context window across competing demands — instructions, memory, tool outputs, and working state — to prevent context rot and maintain task coherence over extended sessions.

## Key Aspects

- **Finite Resource Management**: The context window is treated as a scarce resource requiring explicit budget allocation across different information types
- **Priority Hierarchy**: Task-critical information (current instructions, active file contents) takes precedence over historical context (previous tool outputs, conversation history)
- **Context Rot Prevention**: As input tokens increase, LLM performance degrades non-uniformly; deliberate allocation mitigates this by controlling what enters the context
- **Memory Tiering**: Working memory (current task), short-term memory (recent history), and long-term memory (persistent files) each receive different context budgets
- **Trade-off Between Breadth and Depth**: Allocating more context to broader system understanding reduces room for deep task-specific reasoning, and vice versa

## Related Concepts
- [[context-rot]]
- [[ghuntley-gutter]]

## Sources
- [[context-rot]]
