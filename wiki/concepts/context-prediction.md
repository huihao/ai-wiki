---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Context Prediction

## Definition

Context prediction refers to the process by which a language model determines a target word based on its surrounding context words, forming the basis of the Continuous Bag of Words (CBOW) architecture in Word2Vec. It is also used more broadly to describe how embedding models learn to represent semantic relationships by predicting missing elements from contextual cues.

## Key Aspects

- CBOW architecture averages the embeddings of surrounding context words to predict a center target word
- Uses a sliding window technique to generate (context_words, target_word) training pairs from a corpus
- The embedding matrix dimensions are (vocabulary_size, embedding_dimensions), where embedding dimension is a tunable hyperparameter
- Dense embeddings produced by context prediction capture semantic correlations that sparse one-hot encoding cannot
- After training, the embedding matrix weights become learned word representations usable for downstream tasks
- Training involves averaging context embeddings through a lambda layer, then a dense softmax output layer

## Related Concepts

- [[word-embeddings]]
- [[continuous-bag-of-words]]
- [[word2vec]]
- [[skip-gram]]
- [[sliding-window]]

## Sources

- [[transformers-word-embeddings]]
