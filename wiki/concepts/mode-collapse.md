---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Mode Collapse

## Definition

Mode collapse is a failure mode in which language models generate repetitive, homogeneous outputs that converge on a narrow set of responses, losing the diversity and creativity of human language. In LLMs, this manifests as both intra-model repetition (the same model producing similar outputs) and inter-model homogenization (different models producing similar outputs to each other).

## Key Aspects

- The NeurIPS 2025 "Artificial Hivemind" paper demonstrated mode collapse as a systemic problem across open-ended generation tasks
- Intra-model repetition: a single LLM tends to produce the same style, structure, and content across similar prompts
- Inter-model homogenization: different LLMs (GPT, Claude, Gemini) increasingly produce similar outputs, threatening value plurality
- Mode collapse is particularly dangerous for open-ended queries where multiple valid answers exist but the model converges on one
- The Infinity-Chat dataset (26K queries, 31K human annotations) was introduced to study and benchmark this phenomenon
- Current reward models and automated judges are miscalibrated to diverse human preferences, exacerbating the problem
- Repeated exposure to homogeneous LLM outputs could homogenize human thought long-term, posing an AI safety concern

## Related Concepts

- [[model-diversity]]
- [[open-ended-generation]]

## Sources

- [[artificial-hivemind]]
- [[infinity-chat]]
