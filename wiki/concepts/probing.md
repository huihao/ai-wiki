---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Probing

## Definition
Probing is a method for testing what information is stored in the weights or representations of a neural network, typically by training simple classifiers on internal activations or by designing behavioral tests that reveal whether specific knowledge is encoded. In NLP research, probing is used to investigate whether LLMs encode linguistic structure such as syntax, morphology, or semantics.

## Key Aspects
- Behavioral probing uses carefully designed prompts to test whether models can perform specific tasks (e.g., POS tagging, NER) from in-context examples
- Diagnostic probing trains lightweight classifiers on intermediate layer representations to detect encoded linguistic features
- In-context learning experiments probe whether LLMs genuinely learn new tasks from prompts or rely on memorized pretraining patterns
- Structured prompting extends probing to structured prediction tasks by producing multiple labels for a single input
- Probing reveals that LLMs combine in-context examples with prior knowledge, but prioritize learned knowledge when conflicting
- Data contamination complicates probing: models may appear to learn in-context when they are actually recalling memorized examples
- Probing results help evaluate model capabilities, guide prompt design, and understand model limitations

## Related Concepts
- [[in-context-learning]]
- [[data-contamination]]
- [[pos-tagging]]
- [[prompt-sensitivity]]

## Sources
- [[what-do-llms-know-about-linguistics]]
