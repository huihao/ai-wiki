---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Context Engineering for Coding Agents

## Definition

Context engineering is the practice of curating what an AI model sees in its context window to produce better results. As defined by Bharani Subramaniam: "Context engineering is curating what the model sees so that you get a better result." For coding agents, this involves structuring instructions, file references, and conversation history to maximize the agent's effectiveness.

## Key Aspects

- **Curation Over Creation**: The engineer's role is selecting and organizing information, not writing prompts from scratch
- **CLAUDE.md as Context**: Project-level instruction files that define conventions, commands, and architectural decisions
- **Path-Scoped Rules**: Context that activates only when working with specific file patterns (e.g., API routes)
- **Context Window Management**: Balancing information density against token limits — too much context reduces adherence
- **Rules Folder**: Modular, per-concern instruction files loaded automatically from `.claude/rules/`
- **Subagent Context Separation**: Each subagent maintains its own context window, preventing pollution across tasks
- **Dynamic Context Assembly**: Pulling relevant files, tests, and documentation based on the current task

## Related Concepts

- [[claude-md]]
- [[commands]]
- [[context-firewalling]]
- [[subagents]]

## Sources

- [[bharani-subramaniam]]
