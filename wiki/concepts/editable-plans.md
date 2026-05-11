---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, planning]
sources: 1
---

# Editable Plans

## Definition

Editable plans are dynamic, user-modifiable task plans within AI agent systems that allow both the human operator and the agent to revise, restructure, and extend the plan as new information emerges or as the task evolves. Unlike fixed workflows, editable plans treat the plan as a living document that both human and agent can edit during execution.

## Key Aspects

- A core component of the IMPACT agent engineering framework's Planning element, sitting alongside Intent, Memory, Authority, Control flow, and Trust
- Enables multi-step planning where the agent decomposes a goal into sub-tasks and presents them as a structured, inspectable plan
- Humans can review, reorder, add, or remove steps before or during execution — providing oversight without micromanagement
- Pioneered in practical form by agent products like Devin and Manus, which expose the plan as an interactive artifact
- Distinguishes agent planning from deterministic workflows: the plan adapts dynamically based on intermediate results and feedback
- Connects to the broader shift from static prompt engineering to dynamic plan-driven agent orchestration

## Related Concepts

- [[agents]]
- [[task-decomposition]]
- [[multi-step-planning]]
- [[context-engineering]]

## Sources

- [[agent-engineering]]
