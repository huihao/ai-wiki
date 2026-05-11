---
created: 2026-04-29
updated: 2026-05-09
tags: [spec-driven-development]
sources: 2
---

# Spec-as-Source

## Definition

Spec-as-Source is the most advanced level of spec-driven development where the specification becomes the primary artifact of the software project, and human developers never directly edit the generated code. Instead, all changes flow through the spec, which is then used to regenerate the corresponding code. The spec is the source of truth; code is a derived artifact.

## Key Aspects

- Humans write and review specifications; AI agents generate and regenerate code from specs
- Code artifacts are marked with `// GENERATED FROM SPEC - DO NOT EDIT` to enforce the one-directional flow
- Parallels Model-Driven Development (MDD) from the early 2000s, sharing both its promise and potential downsides
- Combines the inflexibility risk of MDD with the non-determinism of LLMs
- Spec-as-source ensures intent is always documented and traceable through the specification
- The approach works best for well-defined, behavior-oriented functionality with clear acceptance criteria
- Raises questions about who the target user is: developers doing product analysis, product people, or both
- Open challenge: maintaining spec-code consistency when LLMs may generate different code from the same spec

## Related Concepts

- [[spec-first]]
- [[spec-anchored]]
- [[spec-driven-development]]
- [[model-driven-development]]
- [[spec-kit]]

## Sources

- [[spec-driven-development]]
- [[spec-driven-development-tools]]
