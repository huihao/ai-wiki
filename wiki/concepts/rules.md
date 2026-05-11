---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Rules

## Definition

Rules are modular instruction files in the `.claude/rules/` directory that automatically load when Claude Code processes matching files. They provide path-scoped, focused configuration for different parts of a codebase, enabling fine-grained control over AI assistant behavior without bloating the main CLAUDE.md file.

## Key Aspects

- Every markdown file in `.claude/rules/` loads automatically into Claude's context
- Path-scoped rules activate only when working with files matching specified glob patterns (e.g., `src/api/**/*.ts`)
- Enables splitting instructions by concern: API rules, test rules, database rules, etc.
- Each file should be focused and easy to update independently
- Support YAML frontmatter with `paths` field for conditional activation
- Preferable to long monolithic CLAUDE.md files: instructions under 200 lines maintain higher adherence
- Can encode naming conventions, import patterns, error handling standards, and architectural decisions
- Complement other configuration mechanisms: CLAUDE.md (global), CLAUDE.local.md (personal), commands/ (slash commands), skills/ (auto-invoked workflows)

## Related Concepts

- [[claude-md]] -- Project-level instruction file that rules complement
- [[path-scoped-rules]] -- Rules that activate conditionally based on file paths
- [[skills]] -- Auto-invoked workflows that differ from static rules
- [[permissions]] -- Allow/deny rules for tool access control

## Sources

- [[anatomy-claude-folder]]
