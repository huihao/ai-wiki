---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Context Handoff

## Definition

Context handoff is the technique of serializing and transferring an LLM conversation's internal state -- including reasoning traces, tool call history, and accumulated context -- from one model provider to another, enabling cross-provider session continuation without losing conversational state.

## Key Aspects

- Enables switching between LLM providers mid-conversation (e.g., Claude thinking blocks to GPT as XML tags)
- Requires serializing the full context into a portable format such as JSON
- Handles provider-specific fields like reasoning content, different max_tokens semantics, and tool result formatting
- Critical for multi-provider agent systems that switch models based on task type, cost, or availability
- Allows partial results to be preserved and resumed when aborting or switching providers
- Demonstrated in the pi coding agent's multi-provider API supporting OpenAI, Anthropic, and Google backends

## Related Concepts

- [[structured-tool-results]]
- [[partial-results]]
- [[type-safe-models]]
- [[agent-loop]]
- [[context-window]]

## Sources

- [[what-i-learned-building-minimal-coding-agent]]
