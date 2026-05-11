---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, mcp]
sources: 2
---

# Detail Levels

## Definition
Detail levels refer to the tunable granularity of information provided when an LLM discovers and interacts with available tools, ranging from brief (tool names and one-line descriptions) to detailed (compact markdown with parameters) to full (complete JSON schemas). This progressive disclosure mechanism balances token efficiency against the model's need for schema information to make correct tool calls.

## Key Aspects
- Four discovery levels: brief (names + descriptions), detailed (markdown with params), full (JSON Schema), and tags
- A server with 200 tools dumps all 200 schemas into context by default, consuming tens of thousands of tokens
- CodeMode replaces sequential tool calling with code composition, reducing token consumption from 34K to ~600 per workflow
- Search uses BM25 ranking to find relevant tools by natural-language query
- GetSchemas returns parameter details for specific tools when needed
- The three-stage flow (search, get schemas, execute) keeps the context window clean
- Intermediate results stay inside the sandbox rather than flowing through the model context

## Related Concepts
- [[context-window-extension]]
- [[convolution]]

## Sources
- [[code-mode]]
- [[stop-calling-tools-code-mode]]
