---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Memory Bank

## Definition

A memory bank is a collection of persistent, general-purpose context documents that provide background information to AI coding agents across all sessions. Unlike task-specific specs, memory banks maintain project-wide context including architecture decisions, coding conventions, and ongoing goals.

## Key Aspects

- Memory banks contain files like AGENTS.md, project.md, and architecture.md that persist across all agent sessions
- They differ from spec-driven development artifacts: memory banks provide general context, while specs target specific functionality (e.g., Story-324.md, product-search.md)
- Memory banks serve as a lightweight alternative to complex context engineering, giving agents consistent project understanding
- They are typically Git-versioned, transparent, and human-editable (e.g., CLAUDE.md files in Claude Code)
- The Tessl Framework distinguishes memory banks (general) from specs (feature-specific) as two complementary context management approaches
- Best kept concise -- large memory banks risk diluting focus and causing the "curse of instructions" problem

## Related Concepts

- [[model-driven-development]]
- [[modular-context-management]]
- [[mental-model]]

## Sources

- [[spec-driven-development]]
- [[spec-driven-development-tools]]
