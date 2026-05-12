---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# N-Gram Models

## Definition

N-gram models are statistical language models that predict the next word in a sequence based on the preceding N-1 words, representing one of the earliest approaches to automated text generation. While insufficient for modern language modeling due to data sparsity, they provide the conceptual foundation upon which neural language models and eventually LLMs were built.

## Key Aspects

- **Probabilistic foundation**: N-gram models estimate P(word | previous N-1 words) by counting occurrences in training corpora, creating Markov chain approximations of language
- **Data sparsity problem**: As N increases, the number of possible sequences grows exponentially, and insufficient text exists to estimate probabilities for all combinations
- **Generalization failure**: Simple n-gram models cannot generalize beyond observed sequences — they fail precisely where neural networks succeed
- **Evolution path**: From unigrams (N=1) through bigrams (N=2) and trigrams (N=3) to neural approaches that learn distributed representations
- **Temperature analogy**: ChatGPT's temperature parameter parallels n-gram sampling — picking highest-probability words produces flat text; randomness yields creativity
- **Foundation for neural LLMs**: The core insight (predict next word from context) remains identical; neural networks simply provide superior generalization
- **Markov assumption**: N-gram models assume only the most recent N-1 words matter, discarding longer-range dependencies that transformers capture through attention
- **Computational efficiency**: N-gram models are fast and interpretable but fundamentally limited by their inability to represent semantic similarity between words

## Related Concepts

- [[next-token-prediction]]
- [[language-models]]
- [[markov-chain]]
- [[transformers]]

## Sources

- [[what-is-chatgpt-doing-and-why-does-it-work]]
