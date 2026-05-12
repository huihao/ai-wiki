---
created: 2026-04-28
updated: 2026-04-28
tags: [source, nlp, embeddings, tutorial, word2vec]
sources: 1
---

# Vector Embeddings: From Baby NLP to Mature LLMs

## Metadata

- **Author:** Ajay Mallya (Columbia University)
- **Date:** 2024-04-09
- **URL:** https://medium.com/@amallya0523/vector-embeddings-from-baby-nlp-to-mature-llms-f395b533a5e0
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/Vector Embeddings_ From Baby NLP to Mature LLMs.md`

## Summary

An intuitive walkthrough of how NLP represents words as vectors, from simple one-hot encoding through modern transformer embeddings. Mallya motivates each technique by identifying problems with prior approaches and explaining how each new method addresses them. Covers one-hot encoding, bag-of-words, TF-IDF, CBOW, Skip-Gram, and transformers.

## Key Takeaways

- One-hot encoding represents words as binary vectors but is sparse and captures no semantic relationships
- Bag-of-words (BOW) includes word frequency information but still suffers from the curse of dimensionality
- TF-IDF combines local term frequency with global inverse document frequency to identify important words
- CBOW predicts a target word from surrounding context using a neural network; learns embedding matrix E
- Skip-Gram reverses CBOW: predicts context words from a target word, handling polysemy better
- Transformers use multi-head attention to capture relationships between every word simultaneously
- Skip-Gram focuses on smaller context windows; transformers capture long-range dependencies

## Entities Mentioned

- Jason Statham — used as running example for CBOW prediction
- [[university-of-washington|Columbia University]] — author's institution

## Concepts Mentioned

- [[positional-encoding|one-hot encoding]] — binary vector representation of words
- [[the-evolution-of-modern-rag-architectures|BOW]] — frequency-based document representation
- [[tf-idf]] — term frequency-inverse document frequency weighting
- [[the-evolution-of-modern-rag-architectures|CBOW]] — predicts target word from context
- [[skip-gram]] — predicts context from target word
- [[word-embeddings]] — dense vector representation capturing semantics
- [[transformer-architecture|transformer]] — architecture using multi-head attention
- [[multi-head-attention-from-scratch|multi-head attention]] — parallel attention over different aspects of input
- polysemy — words with multiple meanings in different contexts
- [[the-evolution-of-modern-rag-architectures|curse of dimensionality]] — problem with high-dimensional sparse representations
- [[softmax]] — converts raw scores to probability distributions
- [[gradient-descent|SGD]] — optimization method for training embeddings
- [[hugging-face|loss function]] — measures prediction error during training

## Raw Notes

- CBOW: input is context words (one-hot), multiply by embedding matrix E, average context embeddings, multiply by weight matrix W, apply softmax
- Skip-Gram analyzes target-context pairs, enabling better handling of words with multiple meanings
- Transformer "learns about all relationships between every word in your input and does this in different ways through different lenses, simultaneously"
- Each attention head focuses on different aspects: grammar, syntax, parts of speech

## Questions / Follow-ups

- How do contextual embeddings (BERT-style) differ from the static embeddings described here?
- What are the mathematical relationships between Skip-Gram and the attention mechanism?
