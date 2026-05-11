---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Connectionist Temporal Classification

## Definition

Connectionist Temporal Classification (CTC) is a loss function and training algorithm for sequence learning that allows neural networks to learn from unsegmented, unaligned sequence data. It is particularly important in speech recognition and handwriting recognition, where the alignment between input and output sequences is unknown during training.

## Key Aspects

- **Unaligned Training**: Learns sequence-to-sequence mappings without requiring explicit alignment between input and output
- **Blank Token**: Introduces a special "blank" symbol to handle variable-length outputs and repeated characters
- **Loss Function**: Computes the probability of all possible alignments that produce the target output, marginalized over blank positions
- **Speech Recognition**: CTC was a breakthrough for end-to-end speech recognition, eliminating the need for frame-level alignment
- **Forward-Backward Algorithm**: Uses dynamic programming (similar to Viterbi) to efficiently compute CTC loss
- **Connection to HMMs**: CTC can be seen as a special case of Hidden Markov Model with a linear-chain topology
- **Published in Distill**: Featured in Distill publication as one of the influential ML visual explanations

## Related Concepts

- [[distill-pub]]
- [[speech-recognition]]
- [[sequence-to-sequence]]
- [[rnn]]

## Sources

- [[distill-pub]]
