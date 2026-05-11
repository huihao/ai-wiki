---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Universal Dependencies

## Definition

Universal Dependencies (UD) is a standardized linguistic annotation framework for cross-lingual treebanks that defines consistent part-of-speech tags, dependency relations, and morphological features across 100+ languages, enabling comparative NLP research and serving as training data for POS tagging and syntactic parsing models.

## Key Aspects

- UD defines a universal POS tag set (e.g., NOUN, VERB, ADJ, PROPN) that applies across languages, with language-specific extensions for fine-grained distinctions.
- The framework includes both POS tagging (categorizing words by grammatical role) and dependency parsing (identifying syntactic relationships between words).
- Research has shown that LLMs trained on large web corpora inadvertently learn UD-style annotations: the Pile contains many POS/NER examples from GitHub repositories hosting UD datasets, creating data contamination.
- This contamination means GPT-Neo models can perform POS tagging from few-shot prompts alone, because they have already seen UD-style annotations during pretraining.
- The choice of label format matters: models perform better with category names (e.g., "proper noun") than with abbreviations (e.g., "PROPN"), because the names align more naturally with patterns in pretraining data.
- UD treebanks have been instrumental in multilingual NLP, enabling zero-shot and few-shot transfer of syntactic parsers across languages.
- The framework is maintained by a global consortium and freely available for research use.

## Related Concepts

- [[pos-tagging]] -- grammatical category labeling that UD standardizes
- [[named-entity-recognition]] -- entity labeling often co-annotated with UD treebanks
- [[data-contamination]] -- the problem of evaluation data appearing in pretraining corpora

## Sources

- [[what-do-llms-know-about-linguistics]]
