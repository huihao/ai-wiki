---
created: 2026-04-29
updated: 2026-05-09
tags: [evaluation, nlp]
sources: 1
---

# LongMemEval

## Definition

LongMemEval is a conversational question-answering benchmark designed to evaluate LLM performance on tasks requiring long-context understanding and memory retrieval. Research using LongMemEval has demonstrated that performance degrades non-uniformly with increasing input length, and that focused prompts significantly outperform full-context prompts across all evaluated models.

## Key Aspects

- Focused prompts (~300 tokens) consistently outperform full prompts (~113k tokens) across all models tested
- Adding irrelevant context through retrieval steps significantly degrades performance, contradicting the assumption that more context is always better
- Part of broader context rot research evaluating 18 LLMs across extended Needle-in-a-Haystack variants and repeated-words tasks
- Performance degradation is non-uniform: models do not process the 10,000th token as reliably as the 100th
- Lower needle-question semantic similarity correlates with faster degradation as input length grows
- Distractors (topically related but incorrect information) amplify degradation even when present singly
- Haystack structure matters: models perform worse with coherent text than with shuffled text, suggesting local coherence creates interference

## Related Concepts

- [[llm]]
- [[llm-evaluation-approach]]
- [[long-context]]

## Sources

- [[context-rot]]
