---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, pattern, software-architecture, agents]
sources: 1
---

# Master-Servant Pattern

## Summary
The Master-Servant pattern (also known as Master-Worker or Orchestrator-Worker) is an architectural pattern in which a central coordinator (master) distributes tasks to subordinate workers (servants) and collects their results. In AI agent systems, this pattern manifests as a central agent that delegates subtasks to specialized agents, manages coordination, and aggregates outcomes. It is closely related to hierarchical agent architectures, where a supervisor agent orchestrates the behavior of multiple subordinate agents.

## Key Attributes
- **Type**: architectural pattern
- **Notable for**: Enables scalable task decomposition and parallel execution in distributed and agent systems
- **Variants**: Master-Worker, Orchestrator-Worker, Supervisor-Agent

## Related Concepts
- [[agent-architecture]] — structural design of autonomous AI agents
- [[multi-agent-orchestration]] — mechanisms for managing interactions between agents
- [[agent-orchestration]] — high-level coordination of agent workflows
- [[agentic-systems]] — multi-agent systems employing delegation patterns

## Sources
- [[goedel-code-prover-hierarchical-proof-search]] — references hierarchical proof search architectures

## Contradictions / Open Questions
- How to handle servant failures gracefully without blocking the master.
- Whether the master-servant pattern scales effectively beyond a small number of subordinate agents.
- Tension between centralized control (master) and autonomous agent behavior.
