---
created: 2026-04-29
updated: 2026-05-09
tags: [mathematics]
sources: 4
---

# Vectors

## Definition

A vector is a fundamental mathematical object in linear algebra representing an ordered list of numbers (components) that can encode quantities with both magnitude and direction. In applied contexts such as machine learning and data science, vectors serve as the primary data structure for representing individual data points, feature sets, and semantic embeddings. Operations on vectors -- including addition, dot products, normalization, and transformations -- form the computational backbone of modern ML algorithms from simple distance metrics to transformer attention mechanisms.

## Key Aspects

- **Data representation**: Vectors represent individual data points as ordered tuples of features. A feature vector in ML maps an observation to a point in n-dimensional space. Matrices represent entire datasets as collections of row vectors, enabling batch computation.
- **Vector operations**: Core operations include addition (combining vectors), scalar multiplication (scaling), dot product (measuring similarity and projection), and norm (measuring magnitude). The dot product is especially central: it underpins attention scores in transformers, cosine similarity in embeddings, and kernel methods in SVMs.
- **Vector embeddings**: In NLP and deep learning, vectors serve as dense numerical representations of discrete items (words, sentences, images) that capture semantic relationships. The progression from one-hot encoding to Word2Vec (CBOW, Skip-Gram) to transformer-based contextual embeddings shows increasing semantic richness. Embeddings place similar items close together in vector space.
- **Distance and similarity metrics**: Euclidean distance, Manhattan distance, and cosine similarity are vector operations used for nearest-neighbor search, clustering, and retrieval. These metrics are fundamental to recommendation systems, vector databases, and RAG architectures.
- **Dimensionality and the curse of dimensionality**: High-dimensional vectors become sparse and distances become less meaningful. Techniques like PCA (eigendecomposition of covariance matrices) and SVD reduce dimensionality while preserving important structure. Understanding vector geometry is essential for choosing appropriate dimensionality reduction strategies.

## Related Concepts

- [[linear-algebra-fundamentals]] -- the broader mathematical framework for vectors and matrices
- [[vector-embeddings]] -- dense vector representations of text, images, and other data
- [[embedding-layers]] -- neural network layer that maps discrete tokens to vector representations
- [[matrix]] -- two-dimensional generalization of vectors
- [[vector-database]] -- specialized storage for high-dimensional vector search

## Sources

- [[introduction-to-applied-linear-algebra]] -- Boyd and Vandenberghe's textbook covering vectors, matrices, and least squares
- [[lieven-vandenberghe]] -- co-author of the applied linear algebra textbook
- [[linear-algebra-fundamentals]] -- linear algebra foundations for ML and data science
- [[stephen-boyd]] -- Stanford professor and author of the applied linear algebra textbook
