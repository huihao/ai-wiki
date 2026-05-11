---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Shared Context

## Definition

Shared context in agentic orchestration refers to the common state, information, and memory that multiple AI agents share and coordinate around when collaborating on complex tasks. It serves as the communication backbone that enables agents to maintain consistency, avoid redundant work, and build on each other's findings.

## Key Aspects

- Enables multiple agents to work toward a common goal without duplicating effort or producing contradictory results
- Can be implemented as shared memory stores, message passing systems, or distributed state management
- In agent orchestration frameworks, shared context includes conversation history, intermediate results, tool outputs, and task state
- Must balance completeness (providing enough context for effective collaboration) with efficiency (avoiding context bloat that wastes tokens)
- Challenges include concurrent access management, context versioning, and conflict resolution when agents produce contradictory information
- Quality gates and validation steps ensure shared context remains accurate and consistent across agents
- In LLM knowledge base architectures, shared context manifests as interlinked markdown files with backlinks connecting related ideas
- Essential for multi-agent systems where specialized agents (researcher, coder, reviewer) need to see each other's work

## Related Concepts

- [[agentic-orchestration]] -- The coordination framework that manages shared context
- [[multi-agent-systems]] -- Systems requiring shared context for coordination
- [[agent-memory]] -- Persistent memory that contributes to shared context
- [[backlinks]] -- Connections between related knowledge items in wikis

## Sources

- [[agentic-orchestration]]
