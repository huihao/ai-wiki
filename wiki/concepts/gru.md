---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# GRU

## Definition

The Gated Recurrent Unit (GRU) is a type of recurrent neural network (RNN) architecture that uses gating mechanisms to control information flow across time steps. Introduced as a simplified alternative to the LSTM, the GRU combines the forget and input gates into a single update gate and merges the cell state with the hidden state, reducing the number of parameters while maintaining the ability to learn long-range dependencies.

## Key Aspects

- **Update Gate**: Controls how much of the previous hidden state to retain; combines the functionality of LSTM's forget and input gates into one mechanism
- **Reset Gate**: Determines how much past information to forget when computing the new candidate hidden state
- **Simpler than LSTM**: Fewer parameters (two gates vs. three) and no separate cell state; often trains faster with comparable performance
- **Vanishing Gradient Problem**: Like all RNNs, GRUs can struggle with very long sequences, though gating mechanisms mitigate this compared to vanilla RNNs
- **Hidden State Only**: Unlike LSTM's separate cell and hidden states, GRU maintains a single hidden state that serves both roles
- **Sequential Processing**: Processes tokens left-to-right, limiting parallelization compared to transformers
- **Predecessor to Transformers**: RNN/GRU architectures were dominant for sequence modeling before the transformer revolution; transformers solved the parallelization bottleneck

## Related Concepts

- [[lstm]]
- [[machine-translation]]
- [[iterative-text-generation]]

## Sources

- [[lstm]]
- [[recurrent-neural-networks]]
