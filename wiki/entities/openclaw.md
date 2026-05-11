---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, product, agent]
sources: 3
---

# OpenClaw

## Summary

OpenClaw is an agent platform built on top of Pi (Mario Zechner's minimal coding agent). It connects agents to messaging channels of choice and runs code automatically. Its primary innovation is standardizing agent architecture so users can focus on tasks rather than infrastructure setup.

## Key Attributes

- **Creator**: Peter Steinberger
- **Built on**: [[pi-agent|Pi]] by Mario Zechner
- **Deployment**: Cloud VM or self-hosted (Mac Mini recommended)
- **Multi-agent**: Supports sessions_send and sessions_spawn for agent communication
- **Skills**: Progressive disclosure via ClawHub marketplace
- **Configuration**: AGENTS.md, SOUL.md, TOOLS.md, IDENTITY.md, USER.md, HEARTBEAT.md, BOOTSTRAP.md, MEMORY.md

## Related Entities

- [[pi-agent|Pi]] — underlying minimal coding agent
- [[mario-zechner]] — creator of Pi
- [[peter-steinberger]] — creator of OpenClaw
- ClawHub — skills marketplace for OpenClaw
- [[tencent|Tencent Cloud]] — official cloud deployment partner

## Related Concepts

- [[8-factor-agent-breakdown|Agent workspace]] — configuration files defining agent identity
- [[agent-skills|Skills]] — progressively disclosed capabilities
- [[agent-builder-memory-system|Multi-agent system]] — sessions_send and sessions_spawn
- [[chrome-devtools-mcp-debug-browser-session|Session compaction]] — summarizing old messages

## Sources

- [[openclaw|Pi: The Minimal Agent Within OpenClaw]] — relationship between Pi and OpenClaw
- [[openclaw|OpenClaw Core Architecture Deployment Guide]] — Chinese deployment guide
- [[karpathy-shares-llm-knowledge-base-architecture]] — OpenClaw used in multi-agent swarm

## Contradictions / Open Questions

- How does OpenClaw's security model (treat as "data fully open") affect enterprise adoption?
- What is the practical limit on agent count before IM rate limits become prohibitive?
