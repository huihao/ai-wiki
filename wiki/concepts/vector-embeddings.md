---
created: 2026-04-28
updated: 2026-04-28
tags: []
---

# Vector Embeddings

Numerical representations of words, phrases, or documents in continuous vector space that capture semantic, syntactic, and contextual relationships. Embeddings enable machines to process language by converting discrete symbols into mathematical objects where proximity reflects similarity.

## Overview

Vector embeddings fundamentally transform how computers understand language. Instead of treating words as atomic symbols, embeddings map them to high-dimensional spaces where geometric relationships encode meaning. Words with similar usage appear closer together; different meanings occupy different regions.

## Evolution

1. **One-Hot Encoding**: Each word represented as sparse binary vector (dimension = vocabulary size). No semantic information, only positional encoding. Curse of dimensionality for large vocabularies.

2. **Bag of Words (BOW)**: Frequency-based representation. Single vector per document containing word counts. Ignores word order and relationships. High-frequency words dominate.

3. **TF-IDF**: Term Frequency × Inverse Document Frequency weighting. Emphasizes locally frequent, globally rare words. Distinguishes documents better than BOW. Still lacks semantic capture.

4. **Word2Vec**: Neural network approaches (CBOW, Skip-Gram) generating dense embeddings. Words with similar contexts map to similar vectors. Captures semantic relationships (king-queen ≈ man-woman). Static embeddings: one vector per word regardless of context.

5. **Contextual Embeddings**: Transformer-based (BERT, GPT) generate different vectors for same word in different contexts. "Bank" (river) vs. "Bank" (finance) get distinct embeddings. Captures polysemy and contextual nuance.

## Key Properties

- **Dimensionality**: Typically 50-300 for static embeddings, 768-4096 for contextual
- **Density**: Dense vectors (all values non-zero) vs. sparse one-hot
- **Compositionality**: Vector operations approximate semantic composition (vector addition, subtraction)
- **Distance Metrics**: Cosine similarity, Euclidean distance measure relatedness
- **Transfer Learning**: Pretrained embeddings improve downstream tasks with less training data

## Applications

- [[semantic-search|Semantic Search]]: Find similar documents via embedding similarity
- [[retrieval-augmented-generation|Retrieval-Augmented Generation]]: Embedding-based document retrieval
- [[named-entity-recognition|Named Entity Recognition]]: Embedding features for entity classification
- [[machine-translation|Machine Translation]]: Cross-lingual embeddings bridge languages
- [[word-analogy|Word Analogy Tasks]]: Vector arithmetic captures semantic relationships

## Related Concepts

- [[word2vec|Word2Vec]] — Neural network methods generating static embeddings
- [[transformers|Transformer]] — Architecture enabling contextual embeddings
- [[bert|BERT]] — Bidirectional transformer producing contextual embeddings
- [[semantic-space|Semantic Space]] — Conceptual space where embedding distances reflect meaning
- [[embedding-matrix|Embedding Matrix]] — Learned matrix mapping tokens to vectors

## Sources

- [[vector-embeddings-from-baby-nlp-to-mature-llms|Vector Embeddings: From Baby NLP to Mature LLMs]] — Evolution from one-hot to transformers
- [[what-is-chatgpt-doing-and-why-does-it-work|What Is ChatGPT Doing … and Why Does It Work?]] — Wolfram's explanation of embeddings in ChatGPT

## External Links

- Word2Vec Paper: https://arxiv.org/abs/1301.3781
- BERT Paper: https://arxiv.org/abs/1810.04805