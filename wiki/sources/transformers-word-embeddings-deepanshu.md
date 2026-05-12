---
created: 2026-04-28
updated: 2026-04-28
tags: [source, transformer, word-embeddings, word2vec, tutorial, tensorflow]
sources: 1
---

# Understanding Transformers Step by Step — Word Embeddings

## Metadata

- **Author:** Deepanshusachdeva
- **Date:** 2023-06-14
- **URL:** https://deepanshusachdeva5.medium.com/understanding-transformers-step-by-step-word-embeddings-4f4101e7c2f
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/Understanding Transformers Step by Step — Word Embeddings.md`

## Summary

A beginner-friendly tutorial on word embeddings as the first step in training transformer models. Explains why one-hot encoding is insufficient, introduces Word2Vec's CBOW architecture, and provides a complete TensorFlow implementation including data preparation, sliding window context generation, model training, and embedding extraction.

## Key Takeaways

- One-hot encoding produces sparse vectors that don't capture semantic relationships
- Word embeddings are learned via unsupervised methods to capture semantic correlations
- CBOW (Continuous Bag of Words) predicts a target word from surrounding context words
- Sliding window technique generates training pairs of (context_words, target_word)
- Embedding matrix dimensions: (vocabulary_size, embedding_dimensions)
- Embedding dimensions is a hyperparameter representing various word features
- After training, the embedding matrix weights become the learned word representations

## Entities Mentioned

- [[tensorflow]] / [[Keras]] — used for implementation

## Concepts Mentioned

- [[word-embeddings]] — dense vector representation of words
- [[positional-encoding|one-hot encoding]] — sparse binary vector representation
- [[word2vec]] — word embedding algorithm family
- [[implementing-cbow|Continuous Bag of Words]] — predicts target from context
- [[skip-gram]] — mentioned but not covered in detail
- [[sliding-window-attention|sliding window]] — technique for generating context-target pairs
- vocabulary — set of unique words in corpus
- hyperparameter — embedding dimension as tunable parameter
- [[softmax]] — activation for output layer
- Adam optimizer — optimization algorithm used

## Raw Notes

- Uses sample sentences: "I love chocolate", "I love ice cream", "I enjoy playing tennis"
- Window size of 4 used for context generation
- Embedding dimension set to 10 for illustration
- Model: Embedding layer → Flatten → Dense(softmax)
- Loss: sparse_categorical_crossentropy
- Trained for 10 epochs
- Extracts embedding weights via model.get_weights()[0]
- Notes that more sentences needed for good results

## Questions / Follow-ups

- How does this CBOW implementation differ from the original Mikolov et al. Word2Vec?
- What preprocessing (subword tokenization) do modern transformers use instead of word-level embeddings?
