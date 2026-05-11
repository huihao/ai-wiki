---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Natural Language Processing (NLP)

## Definition

Natural Language Processing is the field of computer science and artificial intelligence focused on enabling computers to understand, interpret, and generate human language, progressing from simple symbolic representations to modern transformer-based architectures capable of sophisticated semantic understanding.

## Key Aspects

- **Vector Embeddings**: Words and tokens are represented as dense numerical vectors, with the progression from one-hot encoding through Bag of Words and TF-IDF to neural embeddings (CBOW, Skip-Gram) and finally contextual transformer embeddings
- **From Syntax to Semantics**: Early methods (one-hot, BOW) captured positional and frequency information; word2vec variants introduced semantic similarity through neural prediction objectives; transformers capture long-range dependencies via multi-head attention
- **Curse of Dimensionality**: One-hot and BOW representations suffer from exponential growth in feature space, motivating dense embedding approaches that compress semantic information into lower-dimensional spaces
- **Contextual Representations**: Unlike static embeddings where each word has a single vector, transformer-based models (BERT, GPT) produce context-dependent representations that resolve polysemy and capture nuanced meaning
- **Pre-training and Fine-tuning**: Modern NLP relies on large language models pre-trained on massive corpora, then fine-tuned or prompted for specific downstream tasks (classification, generation, question answering)

## Related Concepts

- [[vector-embeddings]] -- Numerical representations that encode semantic properties
- [[transformers]] -- Architecture using attention mechanisms as the foundation of modern NLP
- [[cbow]] -- Continuous Bag of Words neural prediction model for word embeddings
- [[skip-gram]] -- Word2Vec variant predicting context from target words

## Sources

- [[vector-embeddings-from-baby-nlp-to-mature-llms]]
