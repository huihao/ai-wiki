---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp, word-embeddings]
sources: 1
---

# Mikolov

## Definition

Tomas Mikolov is a researcher whose work on Word2Vec at Google revolutionized natural language processing by introducing efficient methods for learning dense word embeddings from large text corpora. The Continuous Bag of Words (CBOW) and Skip-gram architectures he developed became foundational for modern NLP, demonstrating that semantic relationships could be captured in low-dimensional vector spaces.

## Key Aspects

- Word2Vec (2013) introduced two architectures: CBOW (predict target word from context) and Skip-gram (predict context from target word)
- CBOW architecture: context words pass through an embedding layer, are averaged (hence "bag of words" -- order ignored), then passed to a softmax layer for prediction
- Training uses categorical cross-entropy loss with backpropagation to update embedding weights
- Word embeddings capture semantic similarity: semantically similar words (god/heaven, gospel/church) cluster together in embedding space
- The skip-gram model often produces better results than CBOW, particularly for smaller datasets and rare words
- Vocabulary building, context-target pair generation, and negative sampling are key implementation considerations
- Training is computationally expensive: 5 epochs on a Tesla K80 GPU took approximately 1.5 hours for a Bible corpus with 12,425 unique words
- Mikolov's work directly influenced modern LLMs: transformer models still learn word embeddings, albeit with contextualized representations

## Related Concepts

- [[llm]]
- [[logistic-regression]]
- [[maximum-likelihood]]

## Sources

- [[implementing-deep-learning-methods-text-data-cbow]]
