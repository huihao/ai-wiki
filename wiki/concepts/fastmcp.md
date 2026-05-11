---
created: 2026-04-28
updated: 2026-04-28
tags: [framework, mcp]
sources: 1
---

# FastMCP

## Definition

A Python framework for building MCP (Model Context Protocol) servers. FastMCP 3.1 introduced server-side CodeMode, which transforms how clients interact with tools: instead of seeing individual tool schemas, the LLM writes a Python script that composes tools, executed in a sandbox with intermediate results staying outside the context window.

## Key Proponents / Critics

- **Creator**: [[jeremiah-lowin]]
- **Pattern origin**: [[cloudflare]] — introduced code mode
- **Pattern explorer**: [[anthropic]] — explored code execution with MCP
- **Sandbox**: [[building-cli-coding-agent-pydantic-ai|Pydantic]] — Monty project

## Related Concepts

- [[model-context-protocol|MCP]] — the protocol FastMCP implements
- CodeMode — server-side transform for script-based tool composition
- [[context-engineering|Context window bloat]] — problem CodeMode solves
- Monty — Python sandbox for LLM-generated code

## Sources

- [[stop-calling-tools-start-writing-code-mode|Stop Calling Tools, Start Writing Code (Mode)]] — FastMCP 3.1 announcement

## Evolution

- **2024**: FastMCP created as lightweight MCP server framework.
- **2025**: CodeMode pattern introduced by Cloudflare and Anthropic.
- **2026**: FastMCP 3.1 ships server-side CodeMode with configurable discovery.
