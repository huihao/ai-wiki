---
created: 2026-04-29
updated: 2026-05-09
tags: [coding-agent]
sources: 1
---

# Structured Tool Results

## Definition

Structured tool results is a design pattern for coding agents where the output from tool execution is split into two distinct parts: content for the LLM (which may include raw data, error messages, or intermediate state needed for reasoning) and content for the UI display (which is formatted for human readability). This separation ensures that models receive the information they need without polluting their context with irrelevant display formatting, while users see clean, informative output.

## Key Aspects

- **Dual-channel output**: Tool execution returns both LLM-facing content and UI-facing content as separate fields, preventing display artifacts (ANSI codes, progress bars, verbose logging) from consuming model context window.
- **Schema validation**: Using runtime type validation (e.g., TypeBox with AJV) ensures tool results conform to expected structures, reducing hallucination and improving reliability of agent-tool interactions.
- **Context efficiency**: By filtering out display-only content before sending results to the LLM, structured results preserve context window capacity for reasoning-critical information.
- **Implementation pattern**: Each tool returns a structured object with typed fields rather than a raw string, enabling consistent post-processing and routing of output to the appropriate consumer.
- **Partial results support**: Structured results integrate with abort handling, returning whatever partial content was produced before interruption, which is critical for long-running tool executions.
- **Minimal toolset philosophy**: This pattern aligns with keeping tool interfaces simple — a small number of well-structured tools (read, write, edit, bash) with clean output contracts can outperform many loosely structured tools.

## Related Concepts

- [[coding-agent]]
- [[tool-use]]
- [[context-engineering]]

## Sources

- [[what-i-learned-building-minimal-coding-agent]]
