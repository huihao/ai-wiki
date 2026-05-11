---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Language Modeling

## Definition

Language modeling is the task of learning a probability distribution over sequences of tokens (words, subwords, or characters) in a natural language. The fundamental objective is next-token prediction: given a sequence of preceding tokens, predict the probability of each possible next token. This objective, applied at scale to massive text corpora, is the core pretraining paradigm for modern large language models.

## Key Aspects

- The model learns a high-dimensional conditional probability distribution: P(x_t | x_1, x_2, ..., x_{t-1})
- Training is supervised: the model is shown sequences from a corpus and learns to maximize the probability assigned to each actual next token
- The trained weights parameterize this distribution, encoding syntactic, semantic, and factual knowledge about language
- Conditional probability is the foundational mathematical concept: P(A|B) measures how likely A is given that B has occurred
- Autoregressive models generate tokens left-to-right, each conditioned on all preceding tokens, creating a natural generation loop
- Scaling the training corpus and model parameters has led to emergent capabilities beyond simple text completion, including reasoning and code generation

## Related Concepts

- [[next-token-prediction]]
- [[language-model-generation]]
- [[transformers]]

## Sources

- [[next-token-prediction]]
