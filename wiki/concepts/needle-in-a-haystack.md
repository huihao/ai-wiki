---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Needle in a Haystack

## Definition

Needle in a Haystack (NIAH) is an evaluation benchmark that tests a language model's ability to find and retrieve a specific piece of information (the "needle") embedded within a large volume of unrelated text (the "haystack"). It has become a standard test for evaluating long-context capabilities, though research shows it significantly underestimates real-world performance degradation.

## Key Aspects

- **Core test design**: Insert a specific fact at various positions within a long document and test whether the model can retrieve it accurately
- **Extended evaluation variants**: Beyond lexical matching, semantic needle-question pairs test understanding with varying similarity levels between needle and question
- **Distractor effects**: Topically related but incorrect information (distractors) compound degradation — even a single distractor reduces performance significantly
- **Haystack structure matters**: Models perform worse when haystack preserves logical flow; shuffling sentences (removing local coherence) consistently improves performance
- **Lower similarity = faster degradation**: As semantic similarity between needle and question decreases, models degrade more quickly with increasing input length
- **Context rot phenomenon**: Performance degrades non-uniformly with input length — models do not process the 10,000th token as reliably as the 100th
- **Benchmark limitations**: NIAH underestimates real-world complexity; applications involving synthesis, multi-step reasoning, or complex workflows experience greater degradation
- **18-model evaluation**: Chroma's research found non-uniform degradation patterns across Claude, GPT, Gemini, and Qwen model families

## Related Concepts

- [[context-rot]]
- [[long-context-evaluation]]
- [[llm-benchmarks]]
- [[context-engineering]]

## Sources

- [[context-rot]]
