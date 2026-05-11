---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, spec-driven-development]
sources: 2
---

# Constitution

## Definition
In spec-driven development, a constitution is an immutable, high-level principles document that serves as the foundational authority for all subsequent specifications and code generation. It establishes non-negotiable constraints and values that every spec must adhere to, analogous to a legal constitution governing legislation.

## Key Aspects
- The constitution defines immutable principles that override any individual spec or task
- In GitHub's spec-kit workflow, the constitution precedes all specification authoring (Constitution, then Specify, then Plan, then Tasks)
- Serves as a single source of truth for architectural and ethical guardrails
- Prevents drift in AI-generated code by anchoring all outputs to fixed principles
- Distinct from memory banks (general context) because it carries binding authority
- Parallels Model-Driven Development where models enforced invariant constraints on generated code

## Related Concepts
- [[spec-driven-development]]
- [[agent-guardrails]]

## Sources
- [[spec-driven-development]]
- [[spec-driven-development-tools]]
