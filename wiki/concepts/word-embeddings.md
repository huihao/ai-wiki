---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, neural-network]
sources: 1
---

# Word Embeddings

## Definition

Dense, continuous vector representations of words that capture semantic meaning. Unlike sparse one-hot vectors, embeddings place semantically similar words close together in vector space, enabling arithmetic on meaning (e.g., King - Man + Woman ≈ Queen).

## Key Approaches

### Word2Vec (CBOW)
- Predicts center word from context words
- Architecture: Embedding → Average → Dense softmax
- Averaging removes word order (hence "bag of words")

### Word2Vec (Skip-gram)
- Predicts context words from center word
- Often gives better results than CBOW
- Better for rare words

### Contextual Embeddings (BERT, GPT)
- Same word gets different embeddings based on context
- Capture polysemy (multiple meanings)

## Training

- Trained via context prediction (next word or surrounding words)
- Embedding layer: nn.Embedding(vocab_size, embedding_dim)
- Larger embedding_dim = more degrees of freedom for semantics
- Task-specific: different tasks produce different embeddings

## Properties

- Similar words have similar embeddings (by Euclidean distance or cosine similarity)
- Semantic relationships emerge: king-queen ≈ man-woman
- Vocab mapped via word↔index dictionaries; unknown words use `<UNKOWN>` token

## Related Concepts

- [[cbow]] — Continuous Bag of Words predicting target from context
- [[skip-gram]] — Predicting context from target word
- [[nn-embedding]] — PyTorch embedding lookup layer

## Key Proponents

- **Pioneers**: Tomas Mikolov et al. — Word2Vec (2013); Jeffrey Pennington et al. — GloVe (2014)
- **Expositors**: Ajay Mallya, Sebastian Raschka — intuitive tutorials

## Sources

- [[transformers-word-embeddings]] — Ahmad Mustapha's hands-on tutorial
- [[implementing-cbow-text-features]] — Dipanjan Sarkar's CBOW from scratch

## Evolution

- **Pre-2013**: One-hot encoding and bag-of-words dominated
- **2013**: Word2Vec demonstrated that neural networks could learn meaningful word representations
- **2014**: GloVe offered an alternative matrix factorization approach
- **2018+**: Contextual embeddings (BERT, ELMo) replaced static embeddings in most applications
- **Current**: Modern LLMs learn token embeddings as part of end-to-end training
