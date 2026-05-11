---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 2
---

# Agent Architecture

## Definition
Agent architecture refers to the structural design of AI agent systems, encompassing the boundaries between agents, their secrets, the code they generate, and the environment they operate in. Proper agent architecture defines security boundaries, isolation levels, and access controls to prevent prompt injection, credential exfiltration, and other adversarial attacks.

## Key Aspects
- Four key actors in agentic systems: the agent itself, agent secrets (credentials), generated code execution, and the filesystem/environment
- Security evolves through levels: zero boundaries (maximum risk) to separate agent/sandbox compute with secret injection (recommended for production)
- The core challenge is that most agents run with zero isolation between the agent and the code it generates
- Generated code is the most unpredictable actor and should never have direct access to agent secrets
- Design principle: harness never exposes credentials to agent directly; agents access capabilities through scoped tool invocations only

## Related Concepts
- [[agent-permissions]]
- [[agent-persona]]

## Sources
- [[agent-security]]
- [[security-boundaries-agentic-architectures]]
