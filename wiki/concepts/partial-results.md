---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Partial Results

## Definition

Partial results is a design pattern in agent and coding tool systems where operations can be safely interrupted (aborted) mid-execution and return whatever progress has been made, rather than failing completely, ensuring responsiveness and preventing wasted compute.

## Key Aspects

- **Abort Support Throughout**: In minimal coding agents like pi, abort signals are checked at every step of tool execution, and partial content is returned to the user rather than discarding the incomplete output
- **Production Necessity**: Partial results are critical for production systems where long-running operations (code generation, file writes, complex tool calls) must be interruptible without data loss
- **Structured Tool Results**: The pi agent separates LLM content from UI display content in tool results, enabling partial results to be presented cleanly even when the operation was interrupted
- **User Control**: When users cancel a generation or tool call, receiving partial output allows them to evaluate what was produced and decide whether to continue, modify, or discard
- **Minimal Agent Philosophy**: The pi coding agent's design demonstrates that supporting partial results requires minimal infrastructure -- just cooperative abort checking at each operation boundary

## Related Concepts

- [[partial-dependence]] -- Different concept (ML interpretability) sharing the "partial" terminology
- [[structured-tool-results]] -- Separation of concerns that enables clean partial result presentation
- [[observability]] -- Transparency of agent operations that complements partial result handling
- [[ai-coding-loop]] -- The workflow context in which partial results provide value

## Sources

- [[what-i-learned-building-minimal-coding-agent]]
