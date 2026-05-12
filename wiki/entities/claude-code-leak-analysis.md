---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Claude Code Leak Analysis

## Summary

Analysis of the leaked Claude Code source code reveals the architecture of harness engineering — the control system that wraps a non-deterministic LLM to make it a reliable coding agent. The leak exposed how Anthropic manages reliability, security, sandboxing, and observability around their foundation model.

## Key Aspects

- **Harness = Control System**: The "horse and harness" metaphor — Claude Code (the LLM) is the horse; the harness manages perception, planning, action, and feedback
- **R.E.S.T. Model**: Reliability (recoverable, idempotent), Efficiency (token budget, latency), Security (least privilege, sandbox), Traceability (full-chain audit)
- **PPAF Loop**: Perception → Planning → Action → Feedback, with the harness coupling all four dimensions
- **Sandbox Levels**: L1 process isolation → L2 container (Docker) → L3 micro-VM (Firecracker) → L4 full VM (KVM)
- **Policy Gateway**: RBAC/ABAC permission checks, PII/secret filtering, prompt injection defense, audit logging
- **State Separation**: LLM treated as stateless CPU; all cross-turn state in external Harness-managed persistence
- **Six Design Principles**: Design for Failure, Contract-First, Secure by Default, Decision/Execution Separation, Everything Measurable, Data-driven Evolution

## Related Concepts

- [[harness-engineering-overview]]
- [[context-engineering]]
- [[container-security]]

## Sources

- [[harness-engineering-overview]]
