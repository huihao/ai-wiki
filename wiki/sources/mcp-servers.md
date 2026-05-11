---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# MCP Servers

## Metadata

- **Author**: mcp.so (aggregator)
- **Date**: 2025-04-07
- **URL**: https://mcp.so/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/MCP Servers.md`

## Summary

mcp.so is a third-party marketplace/catalog for Model Context Protocol (MCP) servers and clients. As of the page date, it indexes over 20,000 MCP servers, including official, community, and hosted offerings.

## Key Takeaways

- MCP (Model Context Protocol) is an open-source protocol developed by Anthropic for connecting AI systems to external data sources.
- MCP servers expose resources (files, docs, data), tools (API integrations), and prompts via a standardized client-server architecture.
- Popular official servers include Filesystem, PostgreSQL, Redis, GitLab, Sentry, Puppeteer, and Firecrawl.
- Featured clients include Cursor, VS Code, Cline, Cherry Studio, Windsurf, and HyperChat.
- Security is built-in: servers control their own resources and authentication; no API keys shared with LLM providers.

## Entities Mentioned

- [[anthropic]] — creator of MCP
- [[cursor]] — AI code editor supporting MCP
- [[phi-4-microsoft-collection|Microsoft]] — VS Code and Playwright MCP servers
- [[minimax]] — MCP server for TTS/image/video generation
- [[answer-ai-source|Jina AI]] — MCP tools for search APIs

## Concepts Mentioned

- [[model-context-protocol]] — open protocol for AI tool/resource integration
- [[damn-vulnerable-mcp-server|MCP server]] — server exposing tools/resources to AI clients
- [[mcp-servers|MCP client]] — application consuming MCP servers
- [[claude-code|Tool use]] — allowing LLMs to invoke external functions

## Questions / Follow-ups

- How does MCP compare to OpenAI's function calling and LangChain tool abstractions?
- Invariant Labs has reported security vulnerabilities in MCP implementations.
