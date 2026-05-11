---
created: 2026-04-28
updated: 2026-04-28
tags: [linguistics]
sources: 1
---

# Co-reference Resolution

## Definition

Linguistic task of determining which words/phrases (typically pronouns like "it") refer to which entities in a sentence. Example: In "The animal didn't cross the street because it was too tired", determining whether "it" refers to "animal" or "street".

## Transformer Application

Transformers excel at co-reference resolution through self-attention, which allows each token to attend to all other tokens and build context-aware representations. The model can visualize attention weights to show which nouns a pronoun attends to.

## Example

Sentence: "The animal didn't cross the street because it was too tired."

Transformer attention clearly identifies two candidate nouns ("animal", "street") and weights indicate the correct reference based on context.

## Related Concepts

- [[self-attention]] — mechanism enabling context understanding
- [[attention-mechanisms]] — how tokens interact
- [[context-window]] — available context for resolution

## Related Entities

None specifically mentioned

## Sources

- [[transformer-architecture-attention-is-all-you-need|Transformer Architecture: Attention Is All You Need]]

## Evolution

Co-reference resolution benchmarks help evaluate transformer context understanding capabilities. Used as example in attention mechanism explanations to demonstrate self-attention effectiveness.