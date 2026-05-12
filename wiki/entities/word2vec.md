---
created: 2026-04-28
updated: 2026-04-28
tags: [entity]
sources: 1
---

# Word2Vec

## Summary
A group of shallow neural network models for producing word embeddings, developed by Tomas Mikolov at Google in 2013. Famous for demonstrating semantic relationships like "king - man + woman = queen" through learned vector representations.

## Architecture Variants

- **Skip-gram**: Predicts context words given center word
- **CBOW (Continuous Bag of Words)**: Predicts center word given context

## Key Mechanism

Embeddings are extracted from the first weight matrix (W1) of a shallow two-layer neural network trained to predict context. The rows of W1 serve as dense vector representations of words.

## Training Process

- Input: One-hot encoded center word
- Hidden layer: Embedding lookup via W1
- Output: Softmax probabilities over vocabulary
- Loss: Cross-entropy between predicted and actual context words
- Context generation: Sliding window (e.g., ±2 words)

## Key Properties

- Dense vector representations (typically 300 dimensions)
- Capture semantic similarity (similar words have similar vectors)
- Enable vector arithmetic for semantic relationships
- Foundation for modern NLP and language models

## Related Concepts

- [[skip-gram]] — primary architecture variant
- [[word-embeddings]] — the output embeddings
- [[one-hot-encoding]] — input representation
- [[softmax]] — output layer
- [[cross-entropy-loss]] — training objective

## Related Entities

- [[google]] — original developers (Tomas Mikolov team)
- [[tomas-mikolov]] — lead creator

## Sources

- [[word2vec-from-scratch-jake-tae]] — from-scratch implementation tutorial

## Evolution

- **2013**: Introduced by Google (Mikolov et al.)
- **2013-2015**: Became standard for word embeddings, alongside GloVe
- **2018+**: Superseded by contextual embeddings (BERT, GPT) for many tasks
- **Current**: Still used for static embeddings and as educational foundation
