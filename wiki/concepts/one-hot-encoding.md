---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# One-Hot Encoding

## Definition

One-hot encoding is a vector representation where each word or categorical value is mapped to a binary vector with a single 1 at the position corresponding to its index in the vocabulary and 0s everywhere else. It is the simplest method for converting discrete categorical data into numerical form for machine learning models.

## Key Aspects

- Produces sparse, high-dimensional vectors where the dimension equals the vocabulary size, leading to the curse of dimensionality for large vocabularies
- Treats every word as equidistant from every other word -- no semantic similarity is captured (e.g., "king" and "queen" are as far apart as "king" and "airplane")
- Serves as the input representation for Word2Vec's skip-gram and CBOW models, where the one-hot vector is multiplied by the first weight matrix (W1) to produce the word embedding
- The embedding is literally the corresponding row of W1, extracting a dense, low-dimensional representation from the sparse one-hot input
- Preceded by more sophisticated methods (Bag of Words, TF-IDF) for classical NLP, and superseded by learned embeddings (Word2Vec, BERT, transformers) for modern NLP
- Still widely used for categorical features in tabular data, classification labels, and as output representations in classification networks

## Related Concepts

- [[word2vec]] -- Neural embedding method that learns dense vectors from one-hot inputs
- [[vector-embeddings]] -- Dense numerical representations capturing semantic properties
- [[curse-of-dimensionality]] -- Problem where high-dimensional sparse representations require excessive resources

## Sources

- [[vector-embeddings-from-baby-nlp-to-mature-llms]]
- [[word2vec]]
- [[word2vec-from-scratch-jake-tae]]
