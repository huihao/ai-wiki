---
created: 2026-04-28
updated: 2026-04-28
tags: [evaluation, methodology]
sources: 1
---

# Personal Benchmark

## Definition

A custom evaluation benchmark built from real problems you encounter when using LLMs. Unlike public benchmarks (SWE-bench, LiveCodeBench) that measure contest programming or bug fixes, personal benchmarks test tasks relevant to your actual use cases.

## Key Characteristics

- Based on tasks where SOTA LLMs failed but you expected them to pass
- Provides both short-term (test prompt changes) and long-term (evaluate new models) benefits
- Can be built incrementally during normal vibe coding workflow
- Ensures appropriate difficulty: hard enough to fail SOTA, easy enough to be achievable

## Types

- **One-shot tasks**: Single prompt generates self-contained program (existing tooling)
- **Codebase tasks**: Git commit snapshots of project state + runtime environment
- **Transcript tasks**: Conversation history for testing prompt/rule changes (static analysis on output)

## Benefits

- Short-term: Test if prompt changes or new configurations help
- Long-term: Evaluate new models before switching daily driver
- Social: Post concrete results instead of vagueposting about model quality
- Community: High-quality benchmark data for open-source model training

## Related Concepts

- [[llm-evaluation]] — methodology for evaluating models
- [[vibe-coding]] — workflow that generates benchmark candidates
- [[transcript-tasks]] — type of personal benchmark using conversation history

## Sources

- [[personal-llm-benchmark]] — ezyang's advocacy and methodology

## Implementation

- Nicholas Carlini's Yet Another Applied LLM Benchmark: existence proof
- ezyang's ezbench: adaptation for codebase and transcript tasks
- Writing tests: vibe code the evaluation from failing implementation + manual correctness check