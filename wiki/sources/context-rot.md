---
url: "https://research.trychroma.com/context-rot"
title: "Context Rot: How Increasing Input Tokens Impacts LLM Performance"
date: "2025-07-14"
description: "Large Language Models (LLMs) are typically presumed to process context uniformly—that is, the model should handle the 10,000th token just as reliably as the 100th. However, in practice, this assumption does not hold."
source: "Chroma"
folder: "ai"
tags: [llm, context-window, evaluation, performance-degradation, long-context, needle-in-a-haystack]
---

# Context Rot: How Increasing Input Tokens Impacts LLM Performance

> Chroma research report evaluating 18 LLMs across extended Needle-in-a-Haystack variants, LongMemEval, and repeated-words tasks, demonstrating that model performance degrades non-uniformly with increasing input length.

## Key Findings

**Non-uniform performance degradation**: LLMs do not maintain consistent performance across input lengths. Even on simple tasks (non-lexical retrieval, text replication), performance becomes increasingly non-uniform as input length grows.

**Extended NIAH evaluation**: Beyond standard lexical matching, tested:
- Semantic needle-question pairs with varying similarity
- Impact of distractors (topically related but incorrect information)
- Needle-haystack similarity effects
- Haystack structure (coherent vs. shuffled text)

**Lower needle-question similarity = faster degradation**: As the semantic similarity between needle and question decreases, models degrade more quickly with increasing input length.

**Distractors amplify degradation**: Even a single distractor reduces performance; multiple distractors compound degradation. Different distractors have non-uniform impact, with some causing greater performance decline than others.

**Haystack structure matters**: Models perform worse when haystack preserves logical flow of ideas. Shuffling sentences (removing local coherence) consistently improves performance across all 18 models.

**LongMemEval conversational QA**: Focused prompts (~300 tokens) outperform full prompts (~113k tokens) across all models, demonstrating that adding irrelevant context (retrieval step) significantly impacts performance.

**Repeated words task**: Even trivial replication tasks show performance degradation as context length grows, with model-specific refusal patterns and position accuracy variations.

## Implications

**Context engineering is critical**: What matters more than whether relevant information is present is how that information is presented in the context window.

**Need for rigorous long-context benchmarks**: Current benchmarks like NIAH underestimate real-world complexity. Evaluation must disentangle input length effects from task difficulty.

**Real-world impact more severe**: Applications involving synthesis, multi-step reasoning, or complex workflows likely experience even greater performance degradation.

## Models Evaluated

- Anthropic: Claude Opus 4, Sonnet 4, Sonnet 3.7, Sonnet 3.5, Haiku 3.5
- OpenAI: o3, GPT-4.1, GPT-4.1 mini, GPT-4.1 nano, GPT-4o, GPT-4 Turbo, GPT-3.5 Turbo
- Google: Gemini 2.5 Pro, Gemini 2.5 Flash, Gemini 2.0 Flash
- Alibaba: Qwen3-235B-A22B, Qwen3-32B, Qwen3-8B

## References

- [[needle-in-a-haystack]]: Standard lexical retrieval benchmark
- [[longmemeval]]: Conversational question-answering benchmark
- [[context-rot]]: Observed phenomenon of performance degradation with input length
- [[context-engineering]]: Practice of optimizing context window presentation
- [[chroma]]: Research organization conducting the evaluation