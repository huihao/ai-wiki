---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, nlp, word-embeddings]
sources: 1
---
# CBOW (Continuous Bag of Words)

## Definition

Continuous Bag of Words (CBOW) is a Word2Vec model architecture that predicts a target word from its surrounding context words. It averages the context word embeddings and passes them through a softmax layer for prediction, making it faster to train than Skip-gram for large vocabularies.

## Key Concepts

- CBOW predicts the center word given surrounding context words (the reverse of Skip-gram)
- The architecture averages context embeddings (hence "bag of words" -- word order is lost)
- The embedding layer stores dense word representations that are learned during training
- Softmax with categorical cross-entropy loss is used for the final prediction
- Negative sampling or hierarchical softmax can replace full softmax for efficiency
- CBOW is faster to train than Skip-gram but may perform slightly worse on rare words
- The window size (number of context words) is a key hyperparameter
- Word embeddings from trained CBOW models capture semantic relationships (king - man + woman = queen)
- Vocabulary size, embedding dimension, and context window all affect the quality of learned representations

## Related Concepts

- [[bag-of-words]]
- [[word-embeddings]]
- [[word2vec]]
- [[skip-gram]]
- [[categorical-crossentropy]]

## Sources

- [[cbow-model]]
