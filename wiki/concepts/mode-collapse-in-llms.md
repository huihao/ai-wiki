---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Mode Collapse in LLMs

## Definition

Mode collapse in LLMs refers to the tendency of language models to generate homogeneous, repetitive outputs that converge on a narrow set of responses, reducing the diversity and creativity of generated text. Identified as a critical concern at NeurIPS 2025, this phenomenon manifests both within individual models (intra-model repetition) and across models (inter-model homogenization), threatening long-term value plurality and creative diversity.

## Key Aspects

- **Intra-model repetition**: Individual LLMs tend to produce similar outputs to the same prompts, failing to explore the full space of plausible responses
- **Inter-model homogenization**: Different LLMs converge on increasingly similar outputs, creating an "Artificial Hivemind" effect across the ecosystem
- **Infinity-Chat dataset**: A benchmark of 26K diverse queries with 31K human annotations designed to study open-ended generation and measure output diversity
- **Open-ended generation problem**: Queries with multiple plausible answers and no single ground truth are particularly susceptible to mode collapse
- **Long-term societal risk**: Repeated exposure to homogeneous LLM outputs could gradually homogenize human thought, threatening intellectual diversity
- **Benchmark miscalibration**: Current reward models and automated judges are poorly calibrated to detect diversity failures, focusing instead on individual response quality
- **NeurIPS 2025 recognition**: The "Artificial Hivemind" paper winning Best Paper signals the research community's recognition of this as a critical AI safety concern

## Related Concepts

- [[artificial-hivemind]]
- [[open-ended-generation]]
- [[llm-diversity-evaluation]]
- [[ai-safety]]

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
