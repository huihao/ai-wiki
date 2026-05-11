---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Anatomy of the .claude/ Folder

## Metadata

- **Author**: Avi Chawla
- **Date**: 2026-03-23
- **URL**: https://blog.dailydoseofds.com/p/anatomy-of-the-claude-folder
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Anatomy of the .claude_ Folder.md`

## Summary

A comprehensive guide to the `.claude/` folder structure in Claude Code, explaining how project-level and global-level configuration files control agent behavior. The folder acts as a control center for instructions, custom commands, permission rules, and session memory.

## Key Takeaways

- There are two `.claude` directories: project-level (committed, team config) and global `~/.claude/` (personal preferences, machine-local state).
- `CLAUDE.md` is the most important file — loaded into the system prompt on every session. Keep it under 200 lines.
- `CLAUDE.local.md` provides personal overrides and is auto-gitignored.
- `.claude/rules/` enables modular, path-scoped instructions via YAML frontmatter.
- `.claude/commands/` creates custom slash commands; `.claude/skills/` defines auto-invoked workflows.
- `.claude/agents/` defines subagent personas with dedicated system prompts, tool access, and model preferences.
- `settings.json` controls permissions with allow/deny lists and supports `.local.json` overrides.

## Entities Mentioned

- [[anthropic]] — creator of Claude Code
- Avi Chawla — author
- Postman — mentioned in sponsor section

## Concepts Mentioned

- [[claude-code-source-leak-harness|Claude Code]] — the agentic coding tool
- CLAUDE.md — project instruction file
- [[huggingface-skills|Claude Code Skills]] — auto-invoked workflows
- [[subagents|Subagent]] — specialized agent personas
- Custom commands — user-defined slash commands
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Path-scoped rules]] — modular instruction files with YAML frontmatter

## Questions / Follow-ups

- How do skills differ from commands in real-world usage patterns?
- What is the optimal granularity for splitting rules into separate files?
