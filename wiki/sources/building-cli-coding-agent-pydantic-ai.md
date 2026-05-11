---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agents, coding, pydantic-ai, mcp, tutorial]
sources: 1
---

# Building your own CLI Coding Agent with Pydantic-AI

## Metadata

- **Author**: Ben O'Mahony (via Martin Fowler's site)
- **Date**: 2025-08-27
- **URL**: https://martinfowler.com/articles/build-own-coding-agent.html
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Building your own CLI Coding Agent with Pydantic-AI.md`

## Summary

A detailed tutorial on building a custom CLI coding agent using Pydantic-AI and MCP servers. Demonstrates how to assemble open-source tools into an agent tailored to specific project standards, with capabilities for testing, documentation, sandboxed execution, and internet search.

## Key Takeaways

- **CLI coding agents are fundamentally different from chatbots**: They can read code, run tests, search docs, and make async codebase changes.
- **Architecture**: Claude (via AWS Bedrock) + Pydantic-AI framework + MCP servers + CLI interface.
- **MCP (Model Context Protocol)**: Standardized interface for tool use, making the agent highly extensible. Each MCP server is an independent process providing specialized capabilities.
- **Key capabilities built**:
  - **Testing**: `@agent.tool_plain()` wrapper around `pytest` — agent runs tests autonomously
  - **Instructions/Intent**: Custom system prompts for project-specific standards
  - **Sandboxed Python Execution**: Safe code execution environment
  - **Up-to-date Library Documentation**: Live docs via MCP
  - **AWS MCPs**: Cloud infrastructure integration
  - **Internet Search**: Current information retrieval
  - **Structured Problem Solving**: Multi-step reasoning patterns
  - **Desktop Commander**: Full shell access (with warnings about responsibility)
- **Why build vs. buy**: Commercial tools are built for general use cases; custom agents understand internal context, eccentricities, and specific project standards.
- **Learning analogy**: Like learning to cook — understanding how flavors combine lets you create exactly what you want.

## Entities Mentioned

- Ben O'Mahony — author
- [[james-h-martin|Martin Fowler]] — publisher
- [[anthropic]] — Claude model
- [[aws]] — Bedrock hosting
- [[building-cli-coding-agent-pydantic-ai|Pydantic-AI]] — agent framework
- [[claude-code-source-leak-harness|Claude Code]] — commercial reference
- [[claude-code-source-leak-harness|Gemini Code]] — commercial reference
- [[claude-code-source-leak-harness|Open Code]] — commercial reference
- [[simon-willison]] — LLM CLI tool

## Concepts Mentioned

- [[building-cli-coding-agent-pydantic-ai|CLI Coding Agent]] — command-line autonomous coding assistant
- [[model-context-protocol|MCP]] — standardized tool interface
- [[building-cli-coding-agent-pydantic-ai|Pydantic-AI]] — Python agent framework
- [[aws|AWS Bedrock]] — managed foundation model service
- [[8-factor-agent-breakdown|Agent Tool Use]] — LLM selecting and executing tools
- Sandboxed Execution — safe code running environment
- Structured Problem Solving — multi-step reasoning for agents

## Raw Notes

- Uses `uv` for Python project management.
- Pydantic-AI provides `Agent`, `MCPServerStdio`, and provider abstractions.
- Desktop Commander capability gives full shell access — significant security consideration.

## Questions / Follow-ups

- How does Pydantic-AI compare to other agent frameworks like LangChain, LlamaIndex, or smolagents?
- What are the security best practices for CLI agents with shell access?
