---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# WordNet

## Definition

WordNet is a large lexical database of English that organizes words into sets of cognitive synonyms (synsets), each representing a distinct concept. Synsets are linked by semantic relations such as hypernyms (is-a), hyponyms (kind-of), meronyms (part-of), and antonyms.

## Key Aspects

- **Synset Structure**: Each synset groups words with the same sense (e.g., {dog, domestic dog, Canis familiaris} forms one synset). Words can belong to multiple synsets when they have multiple meanings.
- **Hierarchical Relations**: Hypernym chains create taxonomy-like structures (e.g., dog → canine → carnivore → mammal → animal), enabling breadth-first and depth-first semantic similarity measures.
- **Lexical Relations**: Beyond hierarchy, WordNet encodes synonyms, antonyms, holonyms (whole-of), meronyms (part-of), and entailment relations between verbs.
- **Foundation for ImageNet**: WordNet's synset hierarchy provided the organizational backbone for ImageNet, which mapped millions of images to WordNet synsets (not just words), enabling the large-scale visual recognition benchmarks that catalyzed deep learning.
- **NLP Applications**: Used as a resource for word sense disambiguation, semantic similarity computation, information retrieval, and as background knowledge in many NLP pipelines.

## Related Concepts

- [[imagenet-dataset]]
- [[nn-embedding]]
- [[named-entity-recognition]]
- [[semantic-space]]

## Sources

- [[imagenet-dataset]]
