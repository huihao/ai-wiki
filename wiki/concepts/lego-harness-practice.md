---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Lego Harness Practice

## Definition

Lego harness practice is an engineering approach to building agent harnesses by composing small, well-defined, reusable components -- analogous to snapping Lego bricks together -- rather than constructing monolithic, tightly-coupled control systems. Each component handles a single concern (memory, tool execution, guardrails, observability) and can be independently tested, swapped, or extended.

## Key Aspects

- Treats each harness component (sandbox, policy gateway, memory tier, feedback loop) as an independent, swappable module
- Contrasts with monolithic harness designs where changing one behavior requires modifying the entire system
- Aligns with the R.E.S.T. model principles: modularity supports Reliability (easier to test and recover), Efficiency (optimize components independently), Security (apply least-privilege at component boundaries), and Traceability (log at component interfaces)
- The PPAF loop (Perception-Planning-Action-Feedback) is implemented as a pipeline of composable components, each handling one phase
- Sandboxing levels (L1 process through L4 full VM) can be selected and composed per-component based on the risk profile of each action
- Enables incremental adoption: teams can start with a minimal harness and add components as their needs evolve, rather than requiring a complete platform upfront

## Related Concepts

- [[harness-engineering]]
- [[agent-architecture]]
- [[modular-design]]

## Sources

- [[harness-engineering]]
