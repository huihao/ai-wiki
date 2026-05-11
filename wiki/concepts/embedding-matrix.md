---
created: 2026-04-29
updated: 2026-05-09
tags: [embedding, nlp]
sources: 1
---

# Embedding Matrix

## Definition

An embedding matrix is a two-dimensional weight matrix of shape (vocab_size, embedding_dim) where each row corresponds to a vocabulary item and each column represents one dimension of the learned vector representation. It is the core data structure behind word embedding models, converting discrete token indices into continuous vectors that capture semantic relationships.

## Key Aspects

- In Word2Vec and related models, the embedding matrix is the first weight matrix (W1) of the shallow neural network; the learned rows become the word embeddings after training
- The evolution from one-hot encoding to embedding matrices was driven by the curse of dimensionality: one-hot vectors are sparse and high-dimensional, while embeddings are dense and low-dimensional (typically 100–300 dimensions)
- Each advancement in embedding technique — Bag of Words, TF-IDF, CBOW, Skip-gram, Transformers — refined how the embedding matrix captures semantic and syntactic relationships
- After training, the embedding matrix forms a meaningful vector space where geometric relationships (distances, angles) reflect semantic similarity: "king" - "man" + "woman" ≈ "queen"
- In transformer models, the embedding matrix is multiplied by input token one-hot vectors to produce the initial hidden states, which are then combined with positional encodings
- The embedding matrix can be initialized randomly and learned from scratch, or initialized from pre-trained vectors (GloVe, Word2Vec) and fine-tuned for a specific task
- Matrix operations on embeddings (cosine similarity, dot products) enable efficient semantic search, analogy tasks, and clustering

## Related Concepts

- [[embedding-layers]]
- [[word-embeddings]]
- [[word2vec]]

## Sources

- [[vector-embeddings-from-baby-nlp-to-mature-llms]]
