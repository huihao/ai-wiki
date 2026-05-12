---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Model Evaluation

## Definition

Model evaluation is the systematic process of assessing machine learning model performance against defined criteria, encompassing both automated benchmarks and human preference assessments. Personal and community benchmarks complement standardized suites by testing models on real-world tasks that matter to actual users, providing more actionable intelligence than contest-style evaluations.

## Key Aspects

- **Personal benchmarks** provide more relevant evaluation than generic suites (LiveCodeBench, SWE-bench) by testing on actual user problems
- **Three benchmark types**: One-shot tasks (existing problems), codebase tasks (git commit snapshots), and transcript tasks (conversation history for prompt evaluation)
- **Evaluation-driven development**: Building evaluation frameworks incrementally by capturing failed LLM interactions as benchmark cases
- **Long-term and short-term value**: Personal benchmarks enable testing prompt changes (short-term) and evaluating new models (long-term)
- **Vibe coding workflow**: Normal coding with LLM assistance, with failed tasks flagged and added to personal benchmarks
- **Nicholas Carlini's approach**: Yet Another Applied LLM Benchmark demonstrates nearly 100 tests built from actual conversation history
- **Community opportunity**: A "Wikipedia of Coding Benchmarks" where developers publish and share personal benchmarks for mutual benefit
- **Benchmark design**: Tests should capture real use cases rather than academic-style tasks; transcript tasks best evaluate prompt/rule changes

## Related Concepts

- [[llm-evaluation]]
- [[llm-benchmarks]]
- [[personal-benchmark]]
- [[eval-driven-development]]

## Sources

- [[personal-llm-benchmark]]
