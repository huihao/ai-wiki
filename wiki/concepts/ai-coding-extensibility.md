---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# AI Coding Extensibility

## Definition

AI coding extensibility is the capacity of AI coding agents to be extended with new tools, commands, and capabilities beyond their built-in functionality. It encompasses how agents discover, register, and invoke external tools through protocols like MCP, and how their behavior can be customized through configuration and plugin systems.

## Key Aspects

- Three command sources in modern coding agents: built-in commands, MCP server commands, and extension-provided commands
- Tool registration hierarchy: core tools, subagents (wrapped as tools), user custom tools, MCP-discovered tools
- MCP servers can broadcast hundreds of tools, creating token explosion problems that consume excessive context
- Claude Code's Skills and encoded MCP calls are responses to the tool broadcasting challenge
- The ReAct framework (Reasoning, Acting, Observing, Updating) enables flexible tool orchestration
- Spec-driven development serves as a best practice for extending agent behavior predictably
- Gemini-CLI demonstrates extensibility through `*.toml` configuration files at user, project, and extension levels

## Related Concepts

- [[ai-agents]]
- [[agent-capabilities]]
- [[agents-config]]

## Sources

- [[ai-coding-agent-design]]
