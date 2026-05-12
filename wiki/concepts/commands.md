---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Commands

## Definition

Commands in Claude Code are custom slash commands defined as markdown files in the `.claude/commands/` folder. Each markdown file becomes a slash command that can be invoked during a session, allowing teams to encode reusable workflows, project-specific procedures, and domain-specific prompts that any team member can trigger.

## Key Aspects

- **Markdown-as-Command**: Every `.md` file in `.claude/commands/` becomes a slash command automatically
- **Project-Level Commands**: Stored in `.claude/commands/` and committed to version control for team use
- **User-Level Commands**: Stored in `~/.claude/commands/` for personal, machine-local commands
- **Parameterized**: Commands can accept arguments using `$ARGUMENTS` placeholder in the markdown
- **Reusable Workflows**: Encode repetitive tasks like deployment, testing, or review procedures
- **Discoverable**: Invoked via `/command-name` syntax during Claude Code sessions
- **Documentation as Code**: Command files serve as both executable procedures and living documentation

## Related Concepts

- [[anatomy-claude-folder]]
- [[claude-md]]
- [[context-engineering]]

## Sources

- [[anatomy-claude-folder]]
