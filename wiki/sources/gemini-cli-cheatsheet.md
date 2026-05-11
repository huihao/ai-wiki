---
created: 2026-04-28
updated: 2026-04-28
tags: [source, gemini, cli, google, cheatsheet]
sources: 1
---

# Google Gemini CLI Cheatsheet

## Metadata

- **Author**: Philipp Schmid
- **Date**: 2025-07-24
- **URL**: https://www.philschmid.de/gemini-cli-cheatsheet
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Google Gemini CLI Cheatsheet.md`

## Summary

A comprehensive cheatsheet for Google's Gemini CLI — an open-source AI agent that brings Gemini's capabilities to the terminal. Covers installation, authentication, configuration via `settings.json` and `GEMINI.md`, built-in tools, MCP server integration, slash commands, and IDE integration.

## Key Takeaways

- Install via `npm install -g @google/gemini-cli`; authenticate with `GEMINI_API_KEY`.
- `GEMINI.md` files provide hierarchical project context (global → project → subdirectory).
- Built-in tools: filesystem, shell, web search, memory. Extensible via MCP servers.
- Slash commands: `/compress`, `/mcp`, `/memory show`, `/chat save`, `/restore`, etc.
- IDE integration with VS Code for native diffing and workspace context.
- Checkpointing: save/restore project snapshots before file modifications.

## Entities Mentioned

- [[google]] — creator of Gemini CLI
- Philipp Schmid — author of the cheatsheet

## Concepts Mentioned

- [[gemini-cli-cheatsheet|Gemini CLI]] — terminal-based AI agent from Google
- [[model-context-protocol|MCP]] — Model Context Protocol for tool extension
- [[modernizing-project-files-with-ai-dotnet|Context files]] — `GEMINI.md` for project-specific instructions
- Checkpointing — project state snapshots for safe experimentation

## Raw Notes

See raw file for full command reference and configuration examples.

## Questions / Follow-ups

- How does Gemini CLI compare to Claude Code and Codex CLI?
