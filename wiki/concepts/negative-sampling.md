---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Negative Sampling

## Definition

Negative sampling is a training technique that improves the efficiency of word embedding models like Word2Vec by converting the computationally expensive full softmax over the entire vocabulary into a binary classification problem. Instead of updating all output weights for each training step, only a small number of "negative" (contextually incorrect) samples are updated alongside the positive example.

## Key Aspects

- In the skip-gram model, negative sampling replaces the softmax over the entire vocabulary with a sigmoid binary classifier distinguishing true context words from randomly sampled negative examples
- This reduces training complexity from O(V) per step (V = vocabulary size) to O(K) where K is the number of negative samples (typically 5-20)
- Negative samples are drawn from a distribution raised to the 3/4 power of word frequency, upweighting rare words as negatives to provide more informative gradients
- After training, similar words (e.g., "machine" and "learning") have high affinity in the embedding space because they share similar positive/negative sample patterns
- The technique makes it feasible to train embeddings on very large corpora where full softmax would be computationally prohibitive
- Word2Vec embeddings (rows of the first weight matrix W1) capture semantic relationships through this efficient training objective

## Related Concepts

- [[nn-embedding]]
- [[named-entity-recognition]]

## Sources

- [[word2vec-from-scratch-jake-tae]]
- [[skip-gram]]
