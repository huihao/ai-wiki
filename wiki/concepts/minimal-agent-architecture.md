---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 3
---

# Minimal Agent Architecture

## Definition

Minimal agent architecture is the principle that the core of an AI coding agent can be implemented in roughly 200 lines of straightforward code, consisting of a simple loop: an LLM conversation with tool invocation capabilities, where the model requests actions, code executes them, and results flow back.

## Key Aspects

- The core loop requires only three fundamental tools: `read_file`, `list_files`, and `edit_file` -- everything else is additive
- Tool definitions use function signatures and docstrings so the LLM understands when and how to invoke them
- Simple text parsing (e.g., lines starting with "tool:") handles tool invocations without complex infrastructure
- The inner loop continues until the LLM responds without requesting any tools, allowing multi-step reasoning chains
- Production systems (Claude Code, Cursor, Warp) add more tools (grep, bash, web search) but the core architecture remains the same
- The LLM never directly touches the filesystem -- it only requests actions via structured tool calls
- Sophisticated behavior emerges from simple patterns: clear tool definitions, structured responses, and iterative execution

## Related Concepts

- [[coding-agent]] -- AI assistants that read, edit, and create code
- [[tool-invocation]] -- Mechanism for LLMs to request actions on external systems
- [[agent-loop]] -- Conversation cycle with tool execution

## Sources

- [[coding-agent]]
- [[mihail-eric]]
- [[the-emperor-has-no-clothes-claude-code]]
