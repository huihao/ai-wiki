---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 2
---

# Agent Permissions

## Definition
Agent permissions refer to the authorization and access control mechanisms that govern what actions an AI agent can perform, what resources it can access, and what operations require human approval. Effective permission systems implement delegated authority models with least-privilege principles to balance agent autonomy with safety.

## Key Aspects
- Delegated authority defines what an agent can do on behalf of a human user, with scopes ranging from read-only to full execution rights
- Human-in-the-loop mechanisms require user confirmation for critical or irreversible actions (file deletion, credential access, deployments)
- Stutter-step patterns introduce checkpoints where agents must pause and justify their intended actions before proceeding
- Permissions should follow the principle of least privilege — agents get only the minimum access needed for their current task
- Enterprise systems implement delegation chains for identity verification and audit trails across multi-agent workflows

## Related Concepts
- [[agent-architecture]]
- [[circuit-breakers]]

## Sources
- [[delegated-authority]]
- [[stutter-step-agents]]
