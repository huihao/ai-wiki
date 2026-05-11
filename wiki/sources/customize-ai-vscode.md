---
created: 2026-04-27
updated: 2026-04-27
tags: [source, documentation, vscode, ai-coding, mcp]
sources: 1
---

# Customize AI in Visual Studio Code

## Metadata

- **Author**: Microsoft / VS Code team
- **Date**: 2021-11-03
- **URL**: https://code.visualstudio.com/docs/copilot/copilot-customization
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Customize AI in Visual Studio Code.md`

## Summary

Official VS Code documentation for customizing GitHub Copilot AI assistance. Covers seven customization layers: custom instructions, prompt files, custom agents, agent skills, MCP servers, hooks, and agent plugins.

## Key Takeaways

- **Custom instructions**: Project-wide rules (.github/copilot-instructions.md) and file-based rules (*.instructions.md)
- **Prompt files**: Reusable templates for common tasks, generated with `/create-prompt`
- **Custom agents**: Specialized personas (security reviewer, DB admin) with their own tools and models
- **MCP servers**: Connect AI to external services via Model Context Protocol
- **Hooks**: Shell commands at lifecycle points (format on save, security checks)
- **Agent plugins**: Pre-packaged bundles from marketplaces
- **Monorepo support**: Discover customizations from parent repositories via `chat.useCustomizationsInParentRepositories`
- Supports `AGENTS.md` and `CLAUDE.md` alongside `copilot-instructions.md`

## Entities Mentioned

- [[claude-code-source-leak-harness|VS Code]] — the IDE
- [[github-nousresearch-hermes-agent|GitHub Copilot]] — AI coding assistant

## Concepts Mentioned

- [[ai-ide-customization]] — umbrella concept
- [[model-context-protocol|MCP]] — Model Context Protocol
- [[llm-agents]] — custom agent creation

## Raw Notes

- The `/create-*` commands (create-prompt, create-instruction, create-skill, create-agent, create-hook) lower the barrier to customization
- AGENTS.md support validates the wiki's use of AGENTS.md as a project metadata standard
