---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Recurrent Neural Networks (RNNs)

## Definition

Recurrent Neural Networks (RNNs) are a class of neural networks designed to process sequential data by maintaining a hidden state that captures information from previous time steps. They were the dominant architecture for sequence modeling before the transformer, encoding the prior that sequential order matters and that preceding elements influence following ones.

## Key Aspects

- Process input sequences one element at a time, maintaining a hidden state vector that acts as memory
- Encode the domain knowledge that "prior elements influence following elements" -- a strong inductive bias for text, audio, and time series
- Suffer from vanishing and exploding gradients, making it difficult to learn long-range dependencies
- LSTM (Long Short-Term Memory) and GRU (Gated Recurrent Units) were developed to address gradient problems through gating mechanisms
- Inherently sequential: cannot be parallelized like transformers, leading to slow training on long sequences
- Encoder-decoder RNNs formed the basis for sequence-to-sequence models used in machine translation before transformers
- Thousands of times faster than fully connected networks for sequence data, though slower than transformers
- Biological analogy: LSTM-like memory processing mirrors memory regions of the brain
- Largely superseded by transformers for most NLP tasks, but remain relevant for streaming/online processing and certain time series applications

## Related Concepts

- [[transformers]] -- Architecture that replaced RNNs by dispensing with recurrence entirely
- [[lstm]] -- Gated variant addressing vanishing gradient problem
- [[sequence-to-sequence]] -- Encoder-decoder paradigm built on RNNs
- [[attention-mechanisms]] -- Innovation that was first added to RNNs before replacing them

## Sources

- [[everything-about-transformers]]
