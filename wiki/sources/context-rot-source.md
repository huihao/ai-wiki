---
created: 2026-04-28
updated: 2026-04-28
tags: [source, research, long-context, evaluation, chroma]
sources: 1
---

# Context Rot: How Increasing Input Tokens Impacts LLM Performance

## Metadata

- **Author**: Chroma Research Team
- **Date**: 2025-07-14
- **URL**: https://research.trychroma.com/context-rot
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Context Rot_ How Increasing Input Tokens Impacts LLM Performance.md`

## Summary

A research report from Chroma evaluating 18 LLMs across extended Needle-in-a-Haystack variants, LongMemEval, and repeated-words tasks. Demonstrates that model performance degrades non-uniformly with increasing input length, even on simple tasks, challenging the assumption that long context is "solved."

## Key Takeaways

- **NIAH is insufficient**: Needle in a Haystack measures only lexical retrieval. Real long-context tasks require semantic understanding and reasoning.
- **Needle-question similarity matters**: Lower embedding similarity between needle and question causes faster performance degradation as context length increases. At short lengths, models handle low-similarity pairs fine; at long lengths, they fail.
- **Distractors amplify with length**: Even a single topically-related distractor reduces performance, and four distractors compound it further. Impact is non-uniform — some distractors are much more disruptive than others.
- **Model-specific failure patterns**: Claude models are most conservative (often abstain when uncertain). GPT models show highest hallucination rates with confident incorrect answers. Gemini and Qwen exhibit random word generation at very long contexts.
- **Haystack structure paradox**: Models perform *better* on shuffled haystacks (random sentence order) than on logically structured ones. Suggests structural patterns influence attention mechanisms in unexpected ways.
- **LongMemEval**: All models perform significantly worse on full 113K-token prompts vs. focused 300-token prompts. Adding irrelevant context forces models to do retrieval + reasoning simultaneously.
- **Repeated words task**: Even trivial text replication degrades with length. Models fail to follow exact instructions, generate random words, or refuse tasks at scale.
- **Key conclusion**: "Whether relevant information is present in a model's context is not all that matters; what matters more is how that information is presented."

## Entities Mentioned

- [[Chroma]] — vector database company, research team
- [[anthropic]] — Claude models (Opus 4, Sonnet 4/3.7/3.5, Haiku 3.5)
- [[openai]] — GPT models (o3, 4.1, 4o, 4 Turbo, 3.5 Turbo)
- [[google]] — Gemini models (2.5 Pro, 2.5 Flash, 2.0 Flash)
- [[alibaba]] — Qwen models (3-235B, 3-32B, 3-8B)

## Concepts Mentioned

- [[context-rot|Context Rot]] — performance degradation with increasing input length
- [[a-visual-guide-to-attention-variants-in-modern-llms|Needle in a Haystack]] — standard long-context benchmark
- LongMemEval — conversational long-context QA benchmark
- [[retrieval-augmented-generation|Semantic Retrieval]] — non-lexical matching in long contexts
- Distractor Effects — topically-related content that confuses models
- Position Bias — models more accurate when unique content appears early
- [[context-engineering]] — careful construction of model context windows

## Raw Notes

- Complete codebase for replication: `chroma-core/context-rot` on GitHub
- 18 models tested, 194,480 total LLM calls, evaluated with GPT-4.1 judge (>99% human alignment)
- Claude Opus 4 occasionally refuses tasks (empty output, stop_reason="refusal")
- GPT-3.5 Turbo excluded from repeated words due to 60% content_filter refusal rate
- Qwen models used YaRN to extend from 32K to 131K tokens

## Questions / Follow-ups

- How do these findings generalize to multi-turn conversation contexts?
- What context engineering strategies specifically mitigate distractor effects?
- Does the haystack structure paradox have implications for RAG chunk ordering?
