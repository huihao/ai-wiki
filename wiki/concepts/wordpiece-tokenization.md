---
created: 2026-04-28
updated: 2026-04-28
tags: [nlp, tokenization]
sources: 0
---

# WordPiece Tokenization

## Definition

WordPiece is a subword tokenization algorithm used by BERT that splits words into meaningful subword units. It breaks "walking" into "walk" + "##ing" where ## indicates a continuation. This balances vocabulary size with ability to handle rare words, compound words, and morphological variations while preserving semantic units.

## Key Attributes

- **Algorithm**: Iteratively merges most frequent character sequences
- **Marker**: Uses ## prefix for continuation tokens
- **Vocabulary size**: Typically 30K-50K tokens
- **Used in**: BERT, Electra, other encoder models

## Related Concepts

- [[bert]] — primary model using WordPiece
- [[byte-pair-encoding|Byte-Pair Encoding]] — alternative subword approach
- [[tokenization]] — general tokenization landscape
- [[transformers-from-scratch]] — mentions WordPiece in BERT section

## Sources

- [[transformers-from-scratch]] — describes WordPiece for BERT

## Advantages

- Handles rare/compound words without large vocabulary
- Preserves morphological patterns (##ing, ##ed suffixes)
- Reduces vocabulary size vs. word-level tokenization
- More interpretable than character-level