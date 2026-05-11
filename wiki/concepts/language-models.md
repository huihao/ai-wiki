---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Language Models

## Definition

Language models are statistical or neural systems that assign probabilities to sequences of text, capturing the patterns and structure of natural language. Modern large language models (LLMs) are transformer-based neural networks trained on vast text corpora to learn high-dimensional representations of language, enabling them to generate, understand, and reason about text in ways that approximate human language capabilities.

## Key Aspects

- Evolved from n-gram models (counting token co-occurrences) to neural networks (learning distributed representations) to transformers (using attention for long-range dependencies)
- Embeddings map words into high-dimensional meaning spaces where semantically similar words are positioned near each other
- The transformer architecture uses self-attention to allow the model to consider all previous tokens simultaneously when predicting the next one
- GPT-3 processes text through approximately 400 layers with embedding vectors of length 12,288, enabling nuanced language understanding
- Training requires approximately n-squared computational steps (where n is the number of weights), explaining the billion-dollar cost of training frontier models
- Post-training alignment (RLHF -- reinforcement learning from human feedback) is crucial for producing coherent, helpful, and safe responses from the base model

## Related Concepts

- [[language-modeling]]
- [[language-model-generation]]
- [[transformers]]
- [[attention-mechanisms]]

## Sources

- [[074_speech-and-language-processing]]
