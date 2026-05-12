---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Word2vec from Scratch

## Metadata

- **Author**: Jake Tae
- **Date**: 2020-07-13
- **URL**: https://jaketae.github.io/study/word2vec/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Word2vec from Scratch.md`

## Summary

A comprehensive tutorial implementing Word2Vec from scratch using NumPy. Explains the skip-gram model architecture, demonstrates how word embeddings are extracted from the first weight matrix, and walks through tokenization, training data generation with sliding windows, forward/backward propagation, and embedding extraction.

## Key Takeaways

- Word2Vec embeddings are the rows of the first weight matrix (W1) in a shallow neural network.
- The model predicts context words given a center word using sliding window approach.
- Training uses one-hot encoded input and softmax output with cross-entropy loss.
- Window size determines context width (typically 2 words on each side).
- Embedding dimension is typically 300, but 10 used for tutorial simplicity.
- Backpropagation adjusts W1 and W2 using gradient descent.
- After training, similar words (e.g., "machine" and "learning") have high affinity in embeddings.

## Entities Mentioned

- [[jake-tae]] — author, ML educator
- [[google]] — original Word2Vec creators (Tomas Mikolov team)
- [[chris-mccormick]] — referenced for skip-gram tutorial

## Concepts Mentioned

- [[word2vec]] — the core embedding technique
- [[skip-gram]] — Word2Vec architecture variant
- [[word-embeddings]] — dense vector representations of words
- [[one-hot-encoding]] — sparse input representation
- [[softmax]] — output layer probability normalization
- [[cross-entropy-loss]] — training loss function
- [[tokenization]] — text preprocessing step
- [[sliding-window]] — context generation method

## Questions / Follow-ups

- Compare [[skip-gram]] vs [[cbow]] (Continuous Bag of Words) architectures
- How does [[negative-sampling]] improve Word2Vec efficiency?