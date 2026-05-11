---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Coreference Resolution

## Definition

Coreference resolution is the NLP task of determining which words in a text refer to the same entity. In the Transformer architecture, self-attention enables the model to directly identify these relationships by attending across the entire sentence, solving ambiguous pronoun references that require understanding of broader context.

## Key Aspects

- Pronouns like "it" can refer to different nouns depending on sentence context (e.g., "it" refers to "animal" or "street" based on the reason clause)
- Translation requires resolving coreference because gendered languages (French, German) need the correct noun's gender for pronoun translation
- Self-attention directly models relationships between all words in a single step, regardless of distance, making it naturally suited for coreference
- Attention visualization reveals how the network distributes attention weight across candidate referents based on context
- The original Transformer paper demonstrated superior performance on English-to-German and English-to-French translation where coreference matters
- Traditional RNN/CNN models struggle with coreference because distant word relationships require many sequential processing steps

## Related Concepts

- [[self-attention]]
- [[transformers]]
- [[natural-language-processing]]
- [[encoder-decoder]]
- [[machine-translation]]
- [[attention-mechanisms]]

## Sources

- [[transformer-novel-neural-network-architecture-language-understanding]]
