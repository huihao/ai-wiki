---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Path-Scoped Rules

## Definition

Path-scoped rules are context-dependent instruction files in Claude Code's `.claude/rules/` directory that activate only when the AI agent is working with files matching specified glob patterns, ensuring relevant guidelines are loaded without polluting context for unrelated tasks.

## Key Aspects

- **Conditional Activation**: Rules include a YAML frontmatter block with `paths` patterns (e.g., `src/api/**/*.ts`) that determine when the rule is injected into the agent's context, reducing irrelevant instruction noise
- **Modular Organization**: Instead of a monolithic CLAUDE.md file, path-scoped rules split instructions by concern (API design, testing, database access), each focused and independently updatable
- **Context Efficiency**: By loading only rules relevant to the current working context, path-scoped rules keep the total instruction count manageable and improve instruction adherence (which degrades with longer context)
- **Team Configuration**: Path-scoped rules live in the project-level `.claude/rules/` directory and are committed to git, ensuring consistent team standards across different parts of the codebase
- **Composability**: Multiple rules can match simultaneously for files in overlapping path patterns, enabling layered instructions (project-wide conventions plus directory-specific additions)

## Related Concepts

- [[permissions]] -- Allow/deny rules in settings.json that control tool access
- [[anatomy-claude-folder]] -- The broader Claude Code configuration system that path-scoped rules are part of
- [[claude-md]] -- The monolithic instruction file that path-scoped rules decompose
- [[commands]] -- Custom slash commands that share the `.claude/` directory structure

## Sources

- [[anatomy-claude-folder]]
