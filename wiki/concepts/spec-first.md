---
created: 2026-04-29
updated: 2026-05-09
tags: [spec-driven-development]
sources: 2
---

# Spec-First

## Definition

Spec-First is the foundational level of spec-driven development where a structured specification is written before any code is created, defining what the software should do (functionality, acceptance criteria, user stories) before dictating how it should be implemented. The spec serves as a planning and coordination artifact during the development task but may be discarded or archived after completion.

## Key Aspects

- Write a structured, behavior-oriented specification in natural language before beginning implementation
- Specs express software functionality and serve as guidance to AI coding agents
- Kiro implements spec-first with a Requirements, Design, Tasks workflow
- Requirements use user stories with GIVEN/WHEN/THEN acceptance criteria
- Design specifies component architecture, data flow, and testing strategy
- Tasks provide an executable list with UI elements for step-by-step execution
- All SDD approaches are spec-first, but not all strive to be spec-anchored or spec-as-source
- Lightweight and suitable for task/story-sized problems, though may be over-engineered for small bugs
- A spec is distinct from a memory bank: specs are specific to particular functionality, memory banks provide general project context

## Related Concepts

- [[spec-anchored]]
- [[spec-as-source]]
- [[spec-driven-development]]
- [[kiro]]
- [[agent-planning]]

## Sources

- [[spec-driven-development]]
- [[spec-driven-development-tools]]
