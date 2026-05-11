---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Markov Chain

## Definition

A Markov chain is a stochastic model describing a sequence of events where the probability of each event depends only on the state of the immediately preceding event (the Markov property). In language modeling, Markov chains represent the simplest form of next-word prediction: given the current word (or n-gram), predict the next word based solely on conditional probabilities learned from training data. Modern LLMs are sophisticated extensions of this concept, conditioning on arbitrarily long contexts.

## Key Aspects

- **Markov Property**: The future state depends only on the current state, not the history; P(X_{n+1} | X_n, X_{n-1}, ...) = P(X_{n+1} | X_n)
- **N-Gram Models**: Markov chains of order n-1; bigrams (n=2) predict next word from one previous word; trigrams (n=3) from two; these fail for long-range dependencies
- **Conditional Probability Foundation**: LLMs model conditional probability distributions P(next_token | context), which is a high-dimensional generalization of the Markov chain idea
- **Transition Matrix**: In a finite Markov chain, transitions between states are captured in a probability matrix; in language models, this is replaced by neural network parameters
- **Limitations**: Simple Markov chains cannot capture long-range dependencies because they only look at recent states; this motivated RNNs and eventually transformers
- **Autoregressive Connection**: LLMs are autoregressive models -- each token generation step is conditioned on all previous tokens, extending the Markov concept to arbitrarily long history
- **Temperature and Sampling**: Like Markov chains, LLM generation is stochastic; the temperature parameter controls the entropy of the transition distribution

## Related Concepts

- [[iterative-text-generation]]
- [[loss-function]]
- [[kl-divergence]]

## Sources

- [[autoregressive-models]]
- [[conditional-probability]]
