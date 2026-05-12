---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Bidirectional Encoders

## Definition

Neural network architectures that process input sequences in both forward and reverse directions simultaneously, concatenating hidden states from both passes to produce representations with full contextual information. Introduced for sequence transduction to address the limitation that unidirectional RNNs lose information from the beginning of long sequences by the time they reach the end.

## Related Concepts

- [[transformers]] — Transformers eliminated the need for bidirectional RNNs by using self-attention
- [[self-attention]] — replaces the need for sequential bidirectional processing
- [[encoder-decoder-architecture]] — bidirectional encoders improve the encoder component
- [[recurrent-neural-networks]] — the architecture bidirectional encoders were built on

## Sources

- [[transformers-a-primer]] — bidirectional encoders as pre-Transformer innovation

## Evolution

- **Unidirectional RNNs**: Process sequences left-to-right only. Information from early tokens degrades over long distances
- **Bidirectional encoders (Bahdanau 2016)**: Added a reverse-direction RNN. Each token gets two hidden state vectors (forward + backward), concatenated into one. Enables the decoder to attend to all positions equally
- **Attention on hidden states**: Combined bidirectional encoding with attention mechanisms to create weighted sums of all hidden states, rather than relying on a single final state
- **Transformers (2017)**: Self-attention directly relates every token to every other token in a single parallel pass, subsuming the role of bidirectional RNNs entirely
