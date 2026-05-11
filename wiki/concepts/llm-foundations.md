---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# LLM Foundations

## Definition

LLM foundations encompass the core building blocks of large language models: tokenization (converting text to integer IDs), vocabulary design (choosing vocabulary size and merge rules), and the fundamental training objective (predicting the next token). These foundations determine a model's capabilities and limitations -- from why it cannot count letters to why rare words are handled poorly -- and understanding them is essential for building, debugging, or improving any language model.

## Key Aspects

- **Tokenization Shapes Everything**: Every quirk in LLM behavior traces back to tokenization -- inability to count letters, sensitivity to spacing, poor handling of rare words
- **Byte Pair Encoding (BPE)**: Starts with 256 base byte tokens, then iteratively merges the most frequent adjacent pairs until reaching target vocabulary size
- **Vocabulary Size Trade-offs**: Larger vocabularies compress text better (fewer tokens per document) but require more embedding parameters and can cause embedding collapse with insufficient training data
- **GPT-2 Vocabulary**: 50,257 tokens via BPE; production models balance compression (3.66x over bytes), encoding speed, and training data availability
- **Training Objective**: Next-token prediction -- given a sequence of tokens, predict the probability distribution over the next token; loss function measures cross-entropy between predicted and actual tokens
- **Autoregressive Generation**: Once trained, the model generates text by sampling from its predicted distribution and appending each sampled token to the context
- **From Scratch in Rust**: Building tokenizers and models from scratch reveals implementation details hidden by high-level frameworks (performance optimizations, merge ordering, vocabulary pruning)
- **Data Scarcity Problem**: Large vocabularies with small datasets cause tokens to appear only once, preventing meaningful embedding learning

## Related Concepts

- [[gpt-2]]
- [[llm-embeddings]]
- [[loss-function]]

## Sources

- [[part1-tokenization-building-llm-from-scratch-rust]]
- [[vocabulary-size]]
