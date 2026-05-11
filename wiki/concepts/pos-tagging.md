---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# POS Tagging

## Definition
Part-of-Speech (POS) Tagging is the task of assigning a grammatical category (noun, verb, adjective, adverb, etc.) to each word in a text based on its definition and context. It serves as a foundational NLP task used in syntax parsing, information extraction, and as a diagnostic probe for understanding what linguistic knowledge LLMs encode.

## Key Aspects
- Identifies grammatical roles: nouns, verbs, adjectives, adverbs, prepositions, determiners, and more
- LLMs like GPT-Neo can perform POS tagging from just a few in-context examples via structured prompting
- Prompting success depends critically on label choice: shuffling labels hurts performance, while using category names (e.g., "proper noun") instead of abbreviations (e.g., "PROPN") performs nearly as well
- Models prioritize prior knowledge learned during pretraining when prompted labels conflict with that knowledge
- Data contamination is widespread: pretraining datasets contain many POS tagging examples, meaning LLMs may appear to learn in-context when they are actually relying on memorized patterns
- Larger models show improved ability to learn from shuffled or substitute labels, suggesting scaling improves genuine in-context learning

## Related Concepts
- [[named-entity-recognition]]
- [[in-context-learning]]
- [[data-contamination]]
- [[prompt-sensitivity]]

## Sources
- [[what-do-llms-know-about-linguistics]]
