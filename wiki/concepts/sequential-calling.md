---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, tool-use]
sources: 2
---

# Sequential Calling

## Definition

Sequential calling is the traditional pattern of invoking MCP (Model Context Protocol) tools one at a time, where each tool call requires a full round-trip through the LLM: the model calls a tool, the result passes through the context window, the model reasons about it, then calls the next tool. This pattern suffers from context bloat, execution overhead, and token waste, especially when composing multiple tool calls.

## Key Aspects

- Every tool call is a round-trip: LLM calls tool, result flows through context, LLM reasons, calls another tool
- Intermediate results burn tokens flowing through the model on every turn, even when they are only needed by subsequent tools
- With large tool catalogs (e.g., 200+ tools), dumping all schemas into context consumes tens of thousands of tokens
- CodeMode is the alternative: the LLM writes a script that composes tool calls in a sandboxed environment
- CodeMode reduces Amazon Ads MCP usage from 34K tokens to approximately 600 tokens per workflow
- Three round-trips (search, get schemas, execute) replace dozens of sequential individual calls
- Intermediate results stay inside the sandbox, keeping the context window clean
- Server-side code mode matters: the tool provider decides how discovery and composition work

## Related Concepts

- [[model-context-protocol]]
- [[agent-tools]]
- [[context-bloat]]
- [[code-mode]]
- [[tool-composition]]

## Sources

- [[code-mode]]
- [[stop-calling-tools-code-mode]]
