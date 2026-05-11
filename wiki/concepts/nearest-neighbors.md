---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Nearest Neighbors

## Definition

Nearest neighbors is a fundamental algorithm for finding the most similar items in a dataset by measuring distance in a feature space. In the context of word embeddings and NLP, it enables discovering semantically similar words by computing pairwise distances between embedding vectors, forming the basis for recommendation systems, search engines, and retrieval-augmented generation.

## Key Aspects

- **Embedding-based similarity**: After training word embeddings (Word2Vec, CBOW), similar words cluster together in vector space, discoverable via distance metrics
- **Pairwise distance matrix**: Computing distances between all embedding pairs reveals semantic relationships (e.g., god->heaven, gospel->church, moses->pharaoh)
- **Context window influence**: The size of the context window during embedding training affects the semantic relationships captured — larger windows capture topical similarity, smaller windows capture syntactic similarity
- **CBOW connection**: Continuous Bag of Words training produces embeddings where nearest neighbors reflect distributional similarity learned from context prediction
- **Dimensionality considerations**: Embedding size (e.g., 100 dimensions) affects the granularity of similarity — too small loses information, too large increases computation
- **Approximate nearest neighbor (ANN)**: For large-scale retrieval, exact NN is too slow; ANN algorithms (FAISS, ScaNN) trade small accuracy losses for orders-of-magnitude speedup
- **Application in RAG**: Vector databases use nearest neighbor search to find relevant document chunks for retrieval augmentation
- **Distance metrics**: Cosine similarity, Euclidean distance, and dot product are common metrics, each capturing different aspects of similarity

## Related Concepts

- [[word-embeddings]]
- [[word2vec]]
- [[cbow]]
- [[vector-search]]

## Sources

- [[implementing-cbow-text-features]]
