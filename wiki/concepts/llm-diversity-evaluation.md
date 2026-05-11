---
created: 2026-04-29
updated: 2026-05-09
tags: [evaluation, nlp]
sources: 1
---

# LLM Diversity Evaluation

## Definition

LLM Diversity Evaluation is the practice of measuring the variety, heterogeneity, and creative range of outputs produced by large language models, particularly in open-ended generation tasks. Research has revealed a homogeneity crisis in which LLMs produce increasingly similar outputs both within and across models, threatening long-term creativity and value plurality.

## Key Aspects

- The NeurIPS 2025 Best Paper "Artificial Hivemind" revealed intra-model repetition and inter-model homogenization in LLM outputs across open-ended queries
- The Infinity-Chat dataset introduced 26K diverse queries with 31K human annotations as a benchmark for studying output diversity
- Current reward models and automated judges are miscalibrated to diverse human preferences, making standard evaluation insufficient
- Open-ended generation (responses with multiple plausible answers and no single ground truth) is where diversity failures are most pronounced
- Repeated exposure to homogeneous LLM outputs could homogenize human thought long-term, posing an AI safety concern
- Evaluation must disentangle input length effects from task difficulty when assessing diversity
- Diversity metrics complement standard quality metrics (fluency, accuracy) to provide a fuller picture of model capability

## Related Concepts

- [[llm-as-judge]]
- [[llm-evaluation-approach]]
- [[llm]]

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
