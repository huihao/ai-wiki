---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, software-tool]
sources: 1
---

# Gemini-CLI

## Summary

Gemini-CLI is Google's AI coding assistant tool, providing intelligent software development capabilities through the terminal. While not open-source, its implementation demonstrates key patterns in AI coding agent design including prompt preprocessing, tool registration, SubAgent isolation, and ReAct framework architecture.

## Key Attributes

- **Type**: AI coding assistant, terminal-based
- **Creator**: [[google|Google]]
- **Status**: Not open-source (code analyzed for educational purposes)
- **Architecture**: ReAct framework, SubAgent isolation, MCP support
- **Key Components**:
  - Prompt preprocessing (commands, @file inclusion, MCP prompts)
  - Tool registry (core tools, SubAgent, MCP tools, custom tools)
  - Intent recognition via prompt engineering
  - Memory compression (20% threshold trigger)
  - Extension system via extensions market

## Architecture Highlights

### Prompt Preprocessing Flow
- Slash commands → built-in, MCP, extension, or custom
- `@` character → file/directory context loading
- MCP server prompts → extension commands with `[MCP]` identifier

### Tool System
- Core tools: Read, Write, Edit, Shell, Glob, Grep, etc.
- SubAgent: CodebaseInvestigatorAgent with isolated context
- MCP tools: via stdio/SSE/streamable HTTP protocols
- Custom tools: via `discoveryCommand` configuration

### ReAct Framework
- Main flow: while loop with Reasoning-Acting-Observing-Updating
- SubAgent: isolated ReAct loop with read-only tools
- Memory compression: preserve recent 30%, summarize earlier history

## Related Entities

- [[claude-code|Claude Code]] — Comparable Anthropic AI coding tool
- [[google|Google]] — Creator organization

## Related Concepts

- [[ai-coding-agent|AI Coding Agent]] — Tool category
- [[model-context-protocol|Model Context Protocol]] — Tool integration standard
- [[subagent|SubAgent]] — Isolated specialized agent
- [[react-framework|ReAct Framework]] — Core architecture pattern
- [[prompt-preprocessing|Prompt Preprocessing]] — Input transformation
- [[memory-compression|Memory Compression]] — Context management

## Sources

- [[ai-coding-agent-design|AI Coding 智能体设计]] — Comprehensive technical analysis

## Contradictions / Open Questions

- How does Gemini-CLI performance compare to Claude Code in practice?
- What is the roadmap for Gemini-CLI extensibility features?
- Why is Gemini-CLI not open-source when Claude Code has partial openness?