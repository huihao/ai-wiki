---
created: 2026-04-29
updated: 2026-05-09
tags: [evaluation, machine-learning]
sources: 2
---

# Eval-Driven Development

## Definition
Eval-driven development (EDD) is a methodology for building and iterating on LLM-powered applications where systematic evaluation (evals) drives the development process. Rather than writing code to pass unit tests, developers define evaluation criteria, run models against benchmarks, and iterate based on measurable outcomes.

## Key Aspects
- Shifts development focus from "does the code run?" to "does the model produce the right outputs?"
- Evaluation metrics, datasets, and methodology form the core artifacts, not just code
- Eugene Yan's writing demonstrates a consistent shift toward eval-driven approaches in LLM applications (2023-2025)
- Requires defining clear success criteria before implementing solutions
- Enables rapid iteration by providing immediate feedback on model behavior changes
- Complements traditional ML evaluation by incorporating human judgment and task-specific metrics
- Production ML systems benefit from continuous eval pipelines that catch regressions

## Related Concepts
- [[generalization]]
- [[feature-engineering]]

## Sources
- [[eugene-yan]]
- [[writing-eugene-yan]]
