---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Stop Calling Tools, Start Writing Code (Mode)

## Metadata

- **Author**: Jeremiah Lowin
- **Date**: 2026-03-03
- **URL**: https://www.jlowin.dev/blog/fastmcp-3-1-code-mode
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Stop Calling Tools, Start Writing Code (Mode).md`

## Summary

FastMCP 3.1 introduces server-side CodeMode, addressing MCP's scaling problem: too many tools bloat context windows, and sequential tool calls waste tokens. CodeMode lets the LLM write a Python script that composes tools, executing them in a sandbox with intermediate results staying outside the context window.

## Key Takeaways

- MCP servers with 200+ tools dump tens of thousands of tokens into context before the LLM reads the user request.
- CodeMode pattern (introduced by Cloudflare, explored by Anthropic): LLM writes a script composing tools, executes in sandbox.
- FastMCP CodeMode is a server-side transform; clients need no changes.
- Default three-stage flow: Search (lightweight names+descriptions) → GetSchemas (parameter details) → Execute (Python script in sandbox).
- Discovery is fully configurable: four tools (Search, GetSchemas, ListTools, GetTags) with tunable detail levels (brief/detailed/full).
- Sandbox via Pydantic's Monty: no filesystem/network access, just `call_tool` and standard Python.
- Real-world token savings: Amazon Ads MCP dropped from 34K upfront to ~600 tokens per workflow.

## Entities Mentioned

- [[jeremiah-lowin]] — author, creator of FastMCP
- [[cloudflare]] — introduced code mode pattern
- [[anthropic]] — explored code execution with MCP
- [[building-cli-coding-agent-pydantic-ai|Pydantic]] — Monty sandbox project
- Prefect — Horizon platform adding CodeMode

## Concepts Mentioned

- CodeMode — server-side MCP transform for script-based tool composition
- [[fastmcp]] — Python MCP server framework
- [[model-context-protocol|MCP]] — tool integration standard
- Monty — Python sandbox for LLM-generated code
- [[agent-tools-guide-rejecting-complexity-fragmentation-black-box|Discovery tools]] — configurable search/schema retrieval
- [[context-engineering|Context window bloat]] — problem CodeMode solves

## Questions / Follow-ups

- How do error rates compare between direct tool calling and CodeMode script execution?
- What security implications arise when LLMs write arbitrary Python, even in a sandbox?
