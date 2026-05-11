---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Skip-gram

## Definition

A Word2Vec architecture that predicts surrounding context words given a target word. For each position in a sentence, the model predicts words within a fixed window around the center word.

## Mechanism

- Input: One-hot vector for center word
- Hidden layer: Embedding lookup (W1 matrix multiplication)
- Output: Softmax probabilities for all vocabulary words
- Training objective: Maximize probability of context words in the window

## Training Data Generation

Using sliding window approach:
- For each word, generate pairs like [center_word, context_word]
- Window size determines context range (e.g., ±2 words)
- Example: center word "back-alleys" → context pairs with "little", "dark", "behind", "the"

## Comparison to CBOW

- Skip-gram: Center → Context (slower training, better for rare words)
- CBOW: Context → Center (faster training, better for frequent words)

## Key Advantages

- Better representations for rare words
- Works well with small training data
- Captures multiple semantic relationships per word

## Related Concepts

- [[word2vec]] — parent architecture family
- [[word-embeddings]] — output dense vector representations
- [[cbow]] — alternative Word2Vec architecture
- [[negative-sampling]] — efficiency optimization technique
- [[sliding-window]] — context generation method
- [[softmax]] — output probability normalization

## Related Entities

- [[google]] — original creators (Tomas Mikolov team)

## Sources

- [[word2vec-from-scratch-jake-tae]] — detailed implementation tutorial

## Evolution

- **2013**: Introduced by Google alongside CBOW in Word2Vec papers
- **2013-2015**: Became standard approach for static word embeddings
- **Current**: Educational foundation for understanding word embeddings, though contextual embeddings (BERT, GPT) now dominate production NLP
