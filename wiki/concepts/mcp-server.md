---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, mcp]
sources: 1
---

# MCP Server

## Definition

An MCP (Model Context Protocol) server is a standardized interface that exposes tools, resources, and capabilities to AI models through Anthropic's Model Context Protocol. MCP acts like "USB-C for AI," providing a universal connection standard that allows AI coding agents to interact with external services such as sandboxed code execution, library documentation, internet search, and cloud platform APIs.

## Key Aspects

- MCP provides a standardized protocol for connecting AI models to external tools, analogous to USB-C providing universal device connectivity
- Pydantic-AI framework uses MCP servers as a core building block for constructing custom CLI coding agents
- Example MCP integrations: Deno-based sandboxed Python execution, Context7 for up-to-date library docs, DuckDuckGo for internet search, AWS for cloud services
- CLI coding agents built on MCP are fundamentally different from chatbots: they can read code, run tests, and modify codebases
- Custom instructions via MCP prevent bad agent behaviors (e.g., modifying tests instead of implementation)
- Gemini CLI uses MCP servers for extensibility, with the `/compress` command for memory compression and checkpoint system for project snapshots
- MCP server schemas are injected into the model's context, which can consume tokens; some designs prefer CLI tools with on-demand README reading over full MCP schema disclosure

## Related Concepts

- [[llm-sdk]]
- [[llm]]
- [[live-streaming-ecommerce]]

## Sources

- [[064_build-own-cli-coding-agent-pydantic-ai]]
