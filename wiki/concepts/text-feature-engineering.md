---
created: 2026-04-29
updated: 2026-05-09
tags: [feature-engineering, nlp]
sources: 1
---

# Text Feature Engineering

## Definition

Text feature engineering is the process of converting raw text data into numerical representations (features) that can be consumed by machine learning models. It encompasses techniques ranging from simple bag-of-words counting to dense neural word embeddings, forming the critical bridge between unstructured text and the mathematical operations that learning algorithms require.

## Key Aspects

- **Bag of Words (BoW)**: Represents text as sparse vectors where each dimension corresponds to a word in the vocabulary, with values indicating word frequency. Simple and effective for many tasks but loses word order and semantic relationships.
- **TF-IDF weighting**: Refines BoW by weighting words by their Term Frequency (importance in document) multiplied by Inverse Document Frequency (rarity across corpus), emphasizing distinctive terms over common ones.
- **Word embeddings**: Dense, low-dimensional vector representations (typically 100-300 dimensions) where semantically similar words are close in embedding space, capturing analogies and relationships that sparse representations miss.
- **CBOW (Continuous Bag of Words)**: A Word2Vec architecture that predicts a target word from its surrounding context words by averaging context embeddings and using softmax classification, creating embeddings that capture usage-based semantics.
- **Context window**: The number of surrounding words considered as context (e.g., window_size = 5 means 10 surrounding words) determines the granularity of semantic relationships captured — smaller windows capture syntax, larger windows capture semantics.
- **From features to models**: Text features serve as input to classical ML (SVM, logistic regression with BoW/TF-IDF) or neural models (embedding lookup for RNNs, transformers), with the feature engineering approach determining what information is available to the model.

## Related Concepts

- [[word2vec]]
- [[cbow]]
- [[word-embeddings]]
- [[bag-of-words]]

## Sources

- [[implementing-deep-learning-methods-text-data-cbow]]
