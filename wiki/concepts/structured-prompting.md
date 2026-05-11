---
created: 2026-04-29
updated: 2026-05-09
tags: [linguistics]
sources: 2
---

# Structured Prompting

## Definition

Structured prompting is an extension of in-context learning that enables LLMs to produce multiple labeled outputs per example, making it suitable for structured prediction tasks like part-of-speech tagging and named entity recognition. Rather than generating a single completion, the prompt structure elicits annotations for each token in the input.

## Key Aspects

- Extends in-context learning beyond single-output generation to produce token-level annotations for structured prediction
- LLMs can perform POS tagging and NER from just a few structured examples, with errors typically being confusions among related tags
- Performance is highly sensitive to label choices: shuffled labels significantly degrade accuracy, while proxy (integer) labels degrade less
- Models often ignore in-context examples that conflict with knowledge learned during pretraining, demonstrating a form of learned prior
- Data contamination in pretraining corpora (e.g., POS/NER examples from GitHub, Stack Overflow in the Pile) significantly influences structured prompting performance
- Larger models (up to 540B parameters) show improved ability to learn from shuffled or substitute labels, suggesting scaling improves in-context learning flexibility
- How prompts are phrased matters enormously: slight variations in prompt template lead to drastically different outputs

## Related Concepts

- [[in-context-learning]]
- [[prompt-engineering]]
- [[data-contamination]]

## Sources

- [[073_llms-know-about-linguistics]]
- [[what-do-llms-know-about-linguistics]]
