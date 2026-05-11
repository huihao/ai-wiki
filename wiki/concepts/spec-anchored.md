---
created: 2026-04-29
updated: 2026-05-09
tags: [spec-driven-development]
sources: 2
---

# Spec-Anchored

## Definition

Spec-Anchored is a level of spec-driven development where the specification is not only written before coding (spec-first) but is retained after the task is complete as a living artifact that guides ongoing evolution and maintenance of the code. The spec serves as an anchor point that connects code changes back to intent, enabling agents and humans to understand why the code is structured as it is and how it should evolve.

## Key Aspects

- Goes beyond spec-first by preserving the spec as a persistent, evolving artifact tied to the code
- The spec documents not just what was built, but the reasoning and constraints that shaped implementation
- Enables agents to reference the spec when making future changes, maintaining consistency with original intent
- Tessl Framework implements spec-anchored approach with 1:1 mapping between spec and code files
- Generated code is marked with `// GENERATED FROM SPEC - DO NOT EDIT` to maintain the connection
- Tags like @generate and @test in specs control which code artifacts are derived from which spec sections
- Spec-anchored development bridges the gap between spec-first (temporary) and spec-as-source (permanent)
- The spec evolves alongside the code, with changes to either triggering reviews of the other

## Related Concepts

- [[spec-first]]
- [[spec-as-source]]
- [[spec-driven-development]]
- [[spec-kit]]
- [[tessl-framework]]

## Sources

- [[spec-driven-development]]
- [[spec-driven-development-tools]]
