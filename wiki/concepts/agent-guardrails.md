---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, security]
sources: 1
---

# Agent Guardrails

## Definition

Agent guardrails are the safety boundaries, permission systems, and behavioral constraints placed on AI agents to prevent harmful actions, limit blast radius, and ensure agents operate within acceptable parameters. They are the practical implementation of the principle that agents should be trusted but verified.

## Key Aspects

- Most agents currently run with zero isolation between the agent and the code it generates — a critical security gap
- Security architecture evolves through stages: zero boundaries, secret injection, shared sandbox, per-actor sandbox
- Four actors in agentic systems need separation: the agent, its secrets, generated code execution, and the filesystem/environment
- Bounded contexts from Domain-Driven Design map naturally to agent capability boundaries
- Prompt injection in external data (log files, user inputs) can trick agents into exfiltrating secrets
- The three-tier boundary model (Always / Ask first / Never) provides practical behavioral guardrails
- Effective guardrails balance autonomy with safety — too restrictive eliminates agent utility

## Related Concepts

- [[ai-agent-security]]
- [[agent-error-handling]]
- [[agent-experience]]

## Sources

- [[three-tier-boundaries]]
