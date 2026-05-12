---
created: 2026-04-28
updated: 2026-04-28
tags: [benchmark]
sources: 1
---

# Infinity-Chat

## Summary

Infinity-Chat is a large-scale benchmark dataset of 26K diverse, real-world, open-ended user queries designed to study mode collapse and diversity in large language models. Includes 31,250 human annotations for evaluating LLM output diversity beyond narrow tasks.

## Key Characteristics

- **Scale**: 26K open-ended queries admitting multiple plausible answers
- **Annotations**: 31,250 human annotations (25 independent annotations per example)
- **Taxonomy**: 6 top-level categories (creative generation, brainstorm & ideation, etc.) breaking down to 17 subcategories
- **Purpose**: Study real-world open-ended queries, detect Artificial Hivemind effect

## Research Applications

- Study intra-model repetition (single model generating similar responses)
- Analyze inter-model homogeneity (different models producing similar outputs)
- Evaluate AI safety risks from long-term homogenization
- Compare human preferences vs AI judge calibration
- Test reward models and LM judges on diverse outputs

## Key Findings

Used to reveal pronounced Artificial Hivemind effect: state-of-the-art LMs, reward models, and LM judges are less calibrated to human ratings on model generations with differing annotator preferences.

## Related Concepts

- [[mode-collapse-in-llms]] — Phenomenon studied using this benchmark
- [[artificial-hivemind]] — Effect measured with Infinity-Chat
- [[model-diversity]] — Core evaluation dimension
- [[open-ended-generation]] — Task category

## Sources

- [[neurips-2025-best-paper-awards|Announcing the NeurIPS 2025 Best Paper Awards]]