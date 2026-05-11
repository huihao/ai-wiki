---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# transcript-tasks

## Definition

Transcript tasks are benchmark evaluation examples derived directly from real conversation transcripts between a developer and an LLM coding assistant, capturing the full context, prompt, rules, and expected behavior of an actual interaction. Unlike traditional benchmarks based on contest programming problems or bug-fix datasets, transcript tasks preserve the specific context engineering (system prompts, rules, file context) that shaped the model's behavior, making them uniquely useful for evaluating whether changes to prompts, rules, or models improve performance on problems the developer actually encounters. Edward Z. Yang (ezyang) advocates for building personal transcript-task benchmarks incrementally from failed LLM interactions.

## Key Aspects

- **Three Benchmark Types**: One-shot tasks (isolated problems), codebase tasks (git commit snapshots with full project context), and transcript tasks (complete conversation histories including system prompts and rules)
- **Context Engineering Evaluation**: Transcript tasks are uniquely suited for testing whether changes to prompts, rules, or context improve model performance -- something standard benchmarks cannot measure
- **Incremental Construction**: The strategy is to "vibe code normally" and, whenever a state-of-the-art LLM fails a task you expected it to pass, add that interaction as a benchmark case
- **Real-World Grounding**: Unlike LiveCodeBench (contest programming) or SWE-bench (bug fixes), transcript tasks capture problems specific to your actual codebase, tools, and workflow
- **Nicholas Carlini's Example**: The "Yet Another Applied LLM Benchmark" demonstrates this approach with nearly 100 tests drawn directly from conversation history
- **Transparency Requirement**: Transcript tasks require AI coding systems that do not obscure how they assemble prompts, which rules out most closed-source editors that hide the full context
- **Community Opportunity**: The vision of a "Wikipedia of Coding Benchmarks" where developers publish personal benchmarks, creating a diverse evaluation ecosystem for open-source models
- **Short and Long-Term Benefits**: Short-term: test whether a prompt change improves performance. Long-term: evaluate whether new models handle your actual problems better

## Related Concepts

- [[personal-benchmark]] -- Custom benchmark based on real problems you encounter
- [[llm-evaluation]] -- Evaluating models on tasks relevant to your actual use
- [[context-engineering]] -- Managing prompts, rules, and context that transcript tasks preserve
- [[vibe-coding]] -- Normal coding workflow with LLM assistance where benchmarks are gathered

## Sources

- [[ezyang]] -- Author advocating for personal LLM coding benchmarks
- [[personal-benchmark]] -- Concept of building custom benchmarks from real problems
- [[personal-llm-benchmark]] -- Detailed methodology for transcript-task construction
