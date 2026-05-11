---
created: 2026-04-29
updated: 2026-05-09
tags: [tool]
sources: 2
---

# Tessl

## Definition

Tessl is an advanced spec-driven development (SDD) framework that establishes a 1:1 mapping between specification files and generated code files, representing the most mature and opinionated approach to the spec-as-source paradigm where specifications serve as the primary development artifact.

## Key Aspects

- Implements spec-anchored and explores spec-as-source: the spec is the authoritative source, and code is generated from it with `// GENERATED FROM SPEC - DO NOT EDIT` markers
- Tags like @generate and @test within spec files control which code segments are generated and tested
- CLI doubles as an MCP server, enabling integration with AI coding assistants and automated workflows
- Compares to Kiro (simplest, spec-first only) and spec-kit (GitHub's approach with many checklists), representing the most architecturally ambitious SDD tool
- Raises questions about long-term maintenance: spec-as-source parallels Model-Driven Development from the early 2000s, which had both successes and significant inflexibility problems
- Currently in private beta, indicating early-stage but actively developed tooling
- Spec-as-source introduces non-determinism concerns: LLM-generated code from specs may differ across runs, challenging traditional reproducibility expectations

## Related Concepts

- [[spec-driven-development]]
- [[spec-first]]
- [[spec-as-source]]

## Sources

- [[spec-driven-development-tools]]
