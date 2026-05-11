---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Discovery Tools

## Definition

Discovery tools are lightweight mechanisms within MCP (Model Context Protocol) server architectures that allow an LLM to find relevant tools from a large catalog without loading every tool's full schema into the context window. They implement progressive disclosure — providing brief summaries first, then detailed schemas on demand — to reduce context bloat and token consumption when working with servers that expose many tools.

## Key Aspects

- **Context bloat problem**: An MCP server with 200 tools would dump 200 complete JSON schemas into the context before the LLM processes the user's request — consuming tens of thousands of tokens regardless of relevance.
- **Progressive disclosure pattern**: Discovery tools provide information at tunable detail levels: "brief" (tool names and one-line descriptions), "detailed" (compact markdown with parameters), and "full" (complete JSON Schema).
- **Search tool**: A natural-language query tool with BM25 ranking that returns the most relevant tools based on the user's intent, acting as the primary entry point for tool discovery.
- **GetSchemas tool**: Allows the LLM to request detailed parameter information for specific tools it has identified as relevant, avoiding the cost of loading all schemas upfront.
- **CodeMode integration**: In FastMCP 3.1's CodeMode, discovery tools are the first stage — the LLM searches for relevant tools, retrieves their schemas, then writes a Python script that composes them in a sandboxed execution environment.
- **Token efficiency**: Amazon Ads MCP reduced context consumption from 34K tokens (all schemas) to ~600 tokens per workflow using the discovery-plus-CodeMode approach.

## Related Concepts

- [[code-mode]]
- [[context-window]]

## Sources

- [[code-mode]]
- [[index]]
- [[stop-calling-tools-code-mode]]
