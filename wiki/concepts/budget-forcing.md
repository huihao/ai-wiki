---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Budget Forcing

## Definition
Budget forcing is an inference-time technique for controlling the length and depth of a language model's reasoning process by inserting special tokens (such as "Wait" tokens) that encourage the model to continue thinking before producing a final answer. It allows practitioners to dial up or dial down the amount of computation a model spends on a problem without retraining.

## Key Aspects
- Introduced in the s1 paper (January 2025) as "Simple Test-Time Scaling" using "Wait" tokens
- Encourages self-verification by forcing the model to continue generating intermediate reasoning steps
- Enables "thinking on demand" — commercial LLMs (Claude 3.7 Sonnet, Grok 3) now offer toggleable thinking modes
- Small models with proper budget forcing can outperform much larger models that lack inference-time scaling
- Cost trade-off: longer thinking increases inference costs but may be cheaper than training larger models
- Effectiveness varies by task and difficulty; no single scaling technique is universally best
- Connected to the broader trend of inference-time compute scaling for improving reasoning without weight modification

## Related Concepts
- [[beam-search]]
- [[activation-recomputation]]

## Sources
- [[inference-time-compute-scaling]]
- [[the-state-of-llm-reasoning-model-inference]]
