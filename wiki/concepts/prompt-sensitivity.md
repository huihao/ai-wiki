---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Prompt Sensitivity

## Definition
Prompt sensitivity refers to the phenomenon where LLM performance varies dramatically based on seemingly minor changes to the prompt, such as label wording, example ordering, or formatting. It highlights that models do not robustly generalize from in-context examples but instead rely on a complex interplay between prompt content and pretraining knowledge.

## Key Aspects
- Shuffling label assignments in prompts (e.g., swapping what "noun" and "verb" map to) hurts performance significantly
- Using category names (e.g., "proper noun") instead of abbreviations (e.g., "PROPN") performs nearly as well as original labels, suggesting models match to familiar forms
- Models ignore prompts that contradict prior knowledge learned during pretraining, revealing that in-context learning is filtered through memorized patterns
- Larger models (540B parameters) are better at learning from shuffled or substitute labels, indicating improved genuine in-context learning with scale
- Prompt sensitivity complicates evaluation: benchmark results may reflect prompt design choices rather than true model capability
- Proxy labels (substituted but semantically similar) are better tolerated than random shuffles
- Has practical implications for prompt engineering: small wording changes can produce dramatically different results

## Related Concepts
- [[in-context-learning]]
- [[pos-tagging]]
- [[data-contamination]]

## Sources
- [[what-do-llms-know-about-linguistics]]
