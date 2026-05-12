---
created: 2026-04-29
updated: 2026-05-09
tags: [deep-learning, machine-learning]
sources: 2
---

# Recurrent Neural Networks

## Definition

Recurrent Neural Networks (RNNs) are a class of neural networks designed to process sequential data by maintaining a hidden state that captures information from previous time steps. Unlike feedforward networks, RNNs share parameters across time steps, enabling them to model temporal dependencies and variable-length sequences, making them foundational for natural language processing, speech recognition, and time series analysis before the transformer architecture became dominant.

## Key Aspects

- RNNs maintain a hidden state vector that is updated at each time step, carrying information forward through the sequence
- The same weight matrices are applied at every time step (parameter sharing), enabling variable-length input processing
- Vanilla RNNs suffer from vanishing and exploding gradient problems, limiting their ability to learn long-range dependencies
- LSTM (Long Short-Term Memory) networks address vanishing gradients through gating mechanisms: forget, input, and output gates
- GRU (Gated Recurrent Units) simplify LSTM gating while maintaining comparable performance
- Bidirectional RNNs process sequences in both forward and backward directions, capturing context from both past and future
- Sequence-to-sequence RNNs with encoder-decoder architecture were the standard for machine translation before transformers
- RNNs process tokens sequentially, which limits parallelization compared to transformer self-attention

## Related Concepts

- [[lstm]]
- [[gru]]
- [[transformers]]
- [[sequence-modeling]]
- [[attention-mechanisms]]

## Sources

- [[dive-into-deep-learning]]
- [[explained-ai]]
- [[everything-about-transformers]]
