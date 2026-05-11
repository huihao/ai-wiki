---
created: 2026-04-29
updated: 2026-05-09
tags: [embedding, nlp]
sources: 2
---

# Sliding Window

## Definition

A sliding window is a technique that moves a fixed-size window across a sequence to extract local context, widely used in natural language processing for generating training data from text and in attention mechanisms for processing long sequences. In Word2Vec's skip-gram model, the sliding window determines which surrounding words are treated as context for each center word, shaping the learned word embeddings.

## Key Aspects

- In skip-gram Word2Vec, the sliding window defines how many surrounding words are predicted for each center word (typically 2 on each side)
- Window size is a key hyperparameter: larger windows capture broader topical relationships, smaller windows capture tighter syntactic relationships
- The sliding window generates training pairs: for each center word, create (center, context) pairs for all words within the window
- Word embeddings are the rows of the first weight matrix (W1) learned from these sliding window training pairs
- After training, words appearing in similar contexts (similar sliding window neighborhoods) have similar embeddings
- Sliding window attention in transformers limits self-attention to local neighborhoods, enabling processing of longer sequences
- In signal processing, sliding windows with overlap prevent edge artifacts and enable smooth feature extraction
- The technique trades global context for computational efficiency and local feature sensitivity

## Related Concepts

- [[skip-gram]]
- [[word2vec]]
- [[word-embeddings]]
- [[context-window]]
- [[sliding-window-attention]]

## Sources

- [[skip-gram]]
- [[word2vec-from-scratch-jake-tae]]
