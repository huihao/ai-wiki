---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# CLAUDE.md

## Definition

CLAUDE.md is the primary instruction file for Claude Code, functioning as a project-level "instruction manual" that tells the AI how to behave within a codebase. It lives in the `.claude/` directory and provides build commands, architectural context, coding conventions, and non-obvious gotchas that guide Claude's behavior across sessions.

## Key Aspects

- **Project-Level Configuration**: Lives in `.claude/` (committed to git, shared with team)
- **Global Configuration**: `~/.claude/CLAUDE.md` for personal, machine-local preferences
- **Content Guidelines**: Build/test/lint commands, architectural decisions, import conventions, naming patterns, file structure
- **Length Limit**: Should stay under 200 lines — longer files consume context and reduce instruction adherence
- **What Belongs**: Non-obvious gotchas, project-specific conventions, key commands
- **What Doesn't Belong**: Linter config content, full documentation (link instead), long theory paragraphs
- **Local Override**: `CLAUDE.local.md` for personal overrides (gitignored)
- **Rules Folder**: `.claude/rules/` for modular, path-scoped instructions that activate only when working with matching files
- **Commands Folder**: `.claude/commands/` for custom slash commands as markdown files

## Related Concepts

- [[anatomy-claude-folder]]
- [[commands]]
- [[context-engineering-for-coding-agents]]

## Sources

- [[anatomy-claude-folder]]
