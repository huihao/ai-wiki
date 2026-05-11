---
created: 2026-05-11
updated: 2026-05-11
tags: [agent, safety, governance]
sources: 0
---

# Approval Flows

## Definition

Human-in-the-loop permission systems for AI coding agents that require explicit approval before the agent modifies files, runs commands, or executes other potentially destructive actions. Codex uses approval modes to control the level of autonomy — from requiring approval for every change to auto-accepting edits.

## Key Aspects

- Configurable permission levels per action type
- Default mode requires approval before file modifications
- Can be relaxed for trusted, bounded tasks
- Enterprise RBAC controls admin vs user access

## Related Concepts

- [[agent-permissions]] — permission models for AI agents
- [[rbac]] — role-based access control

## Sources

- [[codex-handbook-practical-guide]] — Codex approval modes and enterprise setup
