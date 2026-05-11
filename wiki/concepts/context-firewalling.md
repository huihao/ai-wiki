---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Context Firewalling

## Definition

Context firewalling is the architectural pattern of isolating subagent context windows to prevent information pollution between specialized AI assistants. Each subagent maintains its own context for its specific task (debugging, reviewing, testing), preventing the accumulation of irrelevant information that degrades performance in the main agent's context.

## Key Aspects

- **Context Pollution Prevention**: Each subagent works with only the information relevant to its specific role
- **Separate Context Windows**: Subagents in `.claude/agents/` each have their own isolated context
- **Principle of Least Privilege**: Subagents receive only the tools and information they need for their task
- **Blast Radius Reduction**: If a subagent makes an error, it does not corrupt the main agent's reasoning
- **Project-Level Configuration**: Stored in `.claude/agents/` and committed to version control
- **Description-Driven Delegation**: The `description` field tells the main agent when to invoke each specialist
- **Common Pitfall**: Over-specialization creates coordination overhead; balance specialization with speed

## Related Concepts

- [[subagents]]
- [[context-engineering-for-coding-agents]]
- [[constraints-layer]]

## Sources

- [[subagents]]
