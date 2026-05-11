---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Semantic Space

## Definition

Semantic space is the high-dimensional vector space in which words, phrases, or documents are represented as dense numerical vectors (embeddings) such that semantically similar items are positioned close together. The progression from one-hot encoding to modern transformer embeddings reflects an evolving effort to capture richer semantic relationships in increasingly compact and meaningful representations.

## Key Aspects

- One-hot encoding creates sparse binary vectors with no semantic relationship information (cosine similarity is always zero)
- Bag-of-words adds frequency information but still suffers from the curse of dimensionality
- TF-IDF combines local term frequency with global inverse document frequency to weight important words
- Word2Vec (CBOW and Skip-Gram) learns dense embedding matrices through neural networks, capturing semantic relationships
- Skip-Gram reverses CBOW by predicting context from target words, handling polysemy better
- Transformers use multi-head attention to capture relationships between every word simultaneously, each head focusing on different aspects (grammar, syntax, parts of speech)
- In the embedding space, semantic relationships appear as vector arithmetic: king - man + woman = queen
- Dimensionality reduction techniques (t-SNE, UMAP) can visualize high-dimensional semantic spaces in 2D/3D
- The quality of the semantic space determines downstream performance of search, classification, and generation tasks

## Related Concepts

- [[word-embeddings]] -- Dense vector representations capturing word semantics
- [[vector-search]] -- Finding similar items in embedding space
- [[one-hot-encoding]] -- The starting point before dense semantic representations
- [[multi-head-attention]] -- Mechanism for capturing multiple relationship types simultaneously

## Sources

- [[vector-embeddings]]
