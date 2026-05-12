---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Coupling Complexity

## Definition

The level of interdependent states, rules, tests, feedback signals, and historical constraints that a coding agent must account for simultaneously when making an update to a [[heuristic-system]]. Cannot be measured by lines of code — a 500-line policy with clean module boundaries may have lower coupling complexity than an 80-line policy where every line affects every other.

## Related Concepts

- [[heuristic-system]] — the artifact whose coupling complexity determines maintenance feasibility
- [[heuristic-learning]] — coupling complexity bounds how far HL can scale
- [[modularity]] — modularity reduces coupling complexity by isolating concerns

## Sources

- [[learning-beyond-gradients]] — coupling complexity defined as a key constraint on HL

## Evolution

- **Software engineering**: Coupling and cohesion are classic design principles. Low coupling, high cohesion makes systems easier to modify
- **Coupling complexity in HL (2026, Weng)**: Extends coupling to the agent-environment system. On the code side: bounded by module boundaries, interface stability, test coverage, observability, rollback cost, and state reproducibility. On the agent side: bounded by model capability, context length, memory quality, tool quality, and iteration speed. Key hypotheses: clearer feedback increases maintainable coupling complexity; stronger models handle higher coupling; modularity moves coupling into the environment; memory and tools increase effective context. An HS that only grows without compression will exceed maintenance capacity
