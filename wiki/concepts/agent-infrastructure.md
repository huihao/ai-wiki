---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, infrastructure]
sources: 1
---

# Agent Infrastructure

## Definition

Agent infrastructure encompasses the runtime environments, APIs, deployment platforms, and supporting systems required to run AI agents reliably in production. It provides the foundational layers — durable execution, state management, tool integration, and monitoring — that agent frameworks and applications build upon.

## Key Aspects

- Two main API surfaces exist: Messages API (direct model access, manual state management) and Agents API (fully managed agent infrastructure with persistent sessions)
- Runtimes like LangGraph provide durable execution, streaming support, and human-in-the-loop capabilities
- Infrastructure must handle thread-level persistence (within conversation) and cross-thread persistence (across conversations)
- Production agent infrastructure requires sandboxing, policy gateways, and observability
- Key components include tool registries, MCP server integrations, and permission management
- Infrastructure design must address the state separation principle: treat LLMs as stateless, keep all state in external persistence

## Related Concepts

- [[abstractions]]
- [[agent-guardrails]]
- [[agents-config]]

## Sources

- [[agents-api]]
