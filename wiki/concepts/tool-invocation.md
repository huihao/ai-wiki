---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 2
---

# Tool Invocation

## Definition

Tool invocation is the mechanism by which LLMs request execution of external actions (file operations, API calls, code execution) during a conversation, enabling the transition from pure text generation to agentic behavior. The LLM never directly executes tools; it emits structured requests that the host application processes and returns results to the model.

## Key Aspects

- Coding agents are fundamentally LLM conversations with toolboxes: the core loop is LLM generates tool request, code executes it, results flow back to LLM
- Three fundamental tools suffice for a minimal coding agent: read_file, list_files, edit_file; production systems add grep, bash, web search, and others
- Tool definitions use function signatures and docstrings that the LLM processes as context for deciding when and how to invoke each tool
- Simple text parsing (lines starting with "tool:") can implement tool invocation; production systems use structured JSON function calling
- The agent loop continues until the LLM responds without requesting additional tools, allowing multi-step tool chaining (read, then edit, then confirm)
- Tool invocation is the mechanism that transforms an LLM from a question-answering system into an autonomous agent capable of affecting the real world
- Production systems implement safety checks, confirmation dialogs, and scope restrictions around tool invocations to prevent unintended side effects
- The architecture demystifies coding assistants: sophisticated behavior emerges from simple patterns of clear tool definitions, structured responses, and iterative loops

## Related Concepts

- [[coding-agent]]
- [[agent-loop]]
- [[tool-discovery]]

## Sources

- [[the-emperor-has-no-clothes-claude-code]]
- [[coding-agent]]
