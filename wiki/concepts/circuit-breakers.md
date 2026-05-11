---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Circuit Breakers

## Definition
Circuit breakers in AI agent systems are safety mechanisms that monitor agent behavior in real-time and automatically halt execution when anomalous or dangerous patterns are detected. Inspired by electrical circuit breakers, they prevent cascading failures and protect against adversarial attacks, runaway processes, and unintended consequences.

## Key Aspects
- Monitor for patterns indicating prompt injection, credential exfiltration, or unauthorized resource access
- Automatically interrupt execution when safety thresholds are exceeded, preventing damage before it occurs
- Part of the constraints and validation layer that makes agents reliable beyond raw model intelligence
- In Claude Code's architecture, validation happens at multiple levels: permission checks, tool result validation, and behavioral monitoring
- Circuit breakers work alongside permission systems — permissions define what agents can do; circuit breakers catch when they shouldn't
- Must balance sensitivity (catching real threats) with specificity (avoiding false positives that break legitimate workflows)

## Related Concepts
- [[agent-permissions]]
- [[ablation-experiments]]

## Sources
- [[harness-engineering-claude-code]]
- [[index]]
