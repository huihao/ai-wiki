---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Model Diversity

## Definition

Model diversity refers to the variety and heterogeneity of outputs produced by language models, both within a single model across different prompts and across different models on the same prompts. The erosion of model diversity -- the "artificial hivemind" effect -- is an emerging concern as LLMs converge on similar outputs.

## Key Aspects

- The NeurIPS 2025 "Artificial Hivemind" paper introduced model diversity as a measurable property using the Infinity-Chat benchmark
- LLM homogeneity crisis: different models (GPT, Claude, Gemini) increasingly produce similar responses, threatening value plurality and creative diversity
- Intra-model diversity measures how much a single model varies its outputs across different phrasings of the same query
- Inter-model diversity measures how different models' outputs diverge from each other on identical prompts
- Current reward models and RLHF training may inadvertently reduce diversity by optimizing for a narrow notion of "quality"
- Model versioning (thinking, high, preview, beta variants) adds superficial variety but may not address fundamental homogenization
- Preserving model diversity is important for avoiding single points of failure in AI-dependent systems and maintaining diverse perspectives

## Related Concepts

- [[mode-collapse]]
- [[open-ended-generation]]
- [[model-comparison-platforms]]

## Sources

- [[artificial-hivemind]]
- [[infinity-chat]]
