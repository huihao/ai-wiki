---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Agents Config

## Definition

Agents configuration is the system of files, settings, and rules that define how an AI coding agent behaves within a project. For Claude Code, this centers on the `.claude/` directory structure, which separates team-shared configuration from personal preferences and provides modular, path-scoped instruction delivery.

## Key Aspects

- Two-folder structure: project-level `.claude/` (team config, committed to git) and global `~/.claude/` (personal preferences)
- CLAUDE.md serves as the instruction manual — keep under 200 lines to avoid context bloat and instruction adherence drops
- Rules folder provides modular, path-scoped instructions that activate only when working with matching files
- Commands folder turns markdown files into custom slash commands for repetitive workflows
- Skills are agent-loadable capabilities that extend behavior beyond built-in tools
- CLAUDE.local.md holds personal overrides (gitignored) for individual developer preferences
- Configuration hierarchy: global settings < project settings < local overrides

## Related Concepts

- [[agents-config]]
- [[agent-experience]]
- [[agent-guardrails]]

## Sources

- [[anatomy-claude-folder]]
