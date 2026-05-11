---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Harness Engineering

## Definition

Harness engineering is the systematic discipline of building reliable AI agent systems by wrapping non-deterministic LLM "brains" in bounded control infrastructure, managing the full lifecycle from perception and planning through action and feedback, analogous to putting a harness on a wild horse to make it a reliable steed.

## Key Aspects

- **R.E.S.T. Framework**: Four pillars of agent reliability -- Reliability (recoverable, idempotent, consistent), Efficiency (token budget, latency, throughput), Security (least privilege, sandbox, I/O filtering), Traceability (full-chain tracking, explainable decisions, auditable state)
- **PPAF Cognitive Loop**: Perception-Planning-Action-Feedback forms the core agent interaction cycle, with harness engineering coupling infrastructure concerns to each stage
- **State Separation Principle**: Treat the LLM as a stateless CPU; all cross-turn state lives in external Harness-managed persistence, enabling reproducibility and debugging
- **Six Design Principles**: Design for Failure, Contract-First, Secure by Default, Decision/Execution Separation, Everything Measurable, Data-driven Evolution
- **Sandbox Levels**: Progressive isolation from L1 (process) through L2 (Docker container) to L3 (micro-VM/Firecracker) and L4 (full VM/KVM) for varying security requirements
- **Policy Gateway**: RBAC/ABAC permission checking, PII/secret filtering, prompt injection defense, and audit logging before any external action is executed

## Related Concepts

- [[openai-harness-engineering-article]] -- OpenAI's reporting on the harness engineering paradigm
- [[agent-builder-memory-system]] -- Tiered memory systems managed within harness infrastructure
- [[workflow-automation]] -- Simpler automation patterns that harness engineering extends
- [[permissions]] -- Access control mechanisms integrated into policy gateways

## Sources

- [[harness-engineering]]
