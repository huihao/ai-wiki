---
tags: [concept]
sources: [[best-practices-claude-code]]
related_concepts: [[context-engineering]], [[skills]], [[agent-rules]]
---

# CLAUDE.md

A special file that Claude Code reads at the start of every conversation, providing persistent project-level context that shapes model behavior throughout the session.

## Overview

CLAUDE.md acts as a persistent system prompt layer that survives across sessions. It contains information that Claude cannot infer from the codebase alone -- build commands, code style conventions, architectural decisions, workflow preferences, and project-specific rules. Because it is loaded before the conversation begins, it establishes a consistent baseline of understanding.

## Load Locations

CLAUDE.md files are loaded from multiple locations, in a hierarchical order:

| Location | Scope | Typical Use |
|---|---|---|
| `~/.claude/CLAUDE.md` | Global | Personal preferences that apply to all projects. |
| `./CLAUDE.md` (project root) | Project-wide | Shared team conventions, checked into version control. |
| `./CLAUDE.local.md` | Local overrides | Personal overrides not committed to the repository. |
| Parent/child directories | Monorepo | Shared conventions inherited by nested packages. |

All locations are loaded and their contents are concatenated. More specific files (local, child directories) can refine or override general instructions.

## Import Syntax

CLAUDE.md supports referencing other files using the `@path/to/import` syntax:

```markdown
See @docs/architecture.md for the system design overview.
Follow the conventions in @.cursor/rules/python.md.
```

This keeps CLAUDE.md concise while still providing access to detailed reference material.

## What to Include

- Build and test commands (e.g., `npm run build`, `pytest`).
- Code style rules and linting configuration.
- Architectural decisions and module boundaries.
- Deployment procedures and environment variables.
- Workflow conventions (commit message format, branching strategy).
- Known gotchas and non-obvious behaviors.

## What to Exclude

- Detailed code documentation (put that in code comments or docs/).
- Large files that change frequently (use @imports instead).
- Secrets, credentials, or API keys.
- Information that Claude can infer from the codebase.

## Troubleshooting

If Claude appears to ignore CLAUDE.md instructions, the file is likely too long. Claude allocates limited attention to CLAUDE.md content; overly verbose files cause important instructions to be drowned out. Keep it concise, prioritize the most impactful rules, and use @imports for supplementary detail.

## Relationship to Agent Rules and Skills

CLAUDE.md is one layer of the broader [[context-engineering]] system. [[agent-rules]] and [[skills]] provide additional mechanisms for extending Claude's behavior, while CLAUDE.md serves as the foundational project-level context. Together they form a layered system: rules for guardrails, skills for capabilities, CLAUDE.md for project knowledge.
