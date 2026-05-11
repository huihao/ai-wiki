---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, nlp]
sources: 1
---

# Structured Prediction

## Definition

Structured prediction is a class of machine learning tasks where the model must output a structured object (such as a sequence, tree, or graph) with interdependent components, rather than a single scalar or independent class label. Common examples include part-of-speech tagging, named entity recognition, syntactic parsing, and semantic segmentation, where the output at each position depends on the outputs at other positions.

## Key Aspects

- **Interdependent outputs**: Unlike standard classification where each prediction is independent, structured prediction requires modeling dependencies between output elements (e.g., a noun is likely followed by a verb, not another noun).
- **In-context learning for structured tasks**: LLMs can perform structured prediction through structured prompting, extending in-context learning to produce multiple correlated labels simultaneously rather than independent per-token classifications.
- **Label sensitivity**: Performance on structured prediction tasks with LLMs is highly sensitive to label choices — shuffling label assignments degrades performance, while using descriptive category names (e.g., "proper noun" instead of "PROPN") maintains accuracy.
- **Prior knowledge interaction**: Models combine in-context examples with knowledge learned during pretraining, but prioritize pretraining knowledge when it conflicts with prompt-provided labels, creating a tension between instruction following and memorization.
- **Classical approaches**: Conditional Random Fields (CRFs), structured SVMs, and structured perceptrons were the dominant approaches before neural methods, modeling the joint distribution of output components.
- **Neural structured prediction**: Sequence-to-sequence models, transformer-based taggers, and transition-based parsers now dominate, using attention mechanisms to capture long-range dependencies in structured outputs.

## Related Concepts

- [[named-entity-recognition]]
- [[pos-tagging]]
- [[in-context-learning]]
- [[prompt-sensitivity]]

## Sources

- [[what-do-llms-know-about-linguistics]]
