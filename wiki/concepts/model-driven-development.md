---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Model-Driven Development

## Definition

Model-driven development (MDD) is a software development approach where models (specifications) serve as the primary artifacts from which code is generated, rather than being supplementary documentation. In the AI era, spec-as-source approaches in spec-driven development parallel the early 2000s MDD movement.

## Key Aspects

- The Tessl Framework explores spec-as-source as the most advanced level of spec-driven development, where the spec is the main artifact and humans never directly edit code
- Historical MDD from the early 2000s aimed to generate code from models but suffered from inflexibility -- modern AI-driven MDD faces the additional challenge of LLM non-determinism
- The parallel between MDD and spec-as-source raises concerns: AI-driven MDD may combine the downsides of both MDD (inflexibility) and LLMs (unpredictability)
- Spec-as-source implementations use markers like `// GENERATED FROM SPEC - DO NOT EDIT` to enforce the model-first paradigm
- The approach promises faster development but requires careful consideration of when code-level control is still needed
- Kiro and spec-kit represent simpler spec-first approaches, while Tessl pushes toward full model-driven generation

## Related Concepts

- [[mental-model]]
- [[memory-bank]]

## Sources

- [[spec-driven-development]]
- [[spec-driven-development-tools]]
