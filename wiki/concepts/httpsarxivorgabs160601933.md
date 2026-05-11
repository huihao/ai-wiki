---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Convolutional Sequence to Sequence Learning (1606.01933)

## Definition

arXiv:1606.01933 is the ConvS2S (Convolutional Sequence to Sequence Learning) paper by Gehring et al. (2017), a precursor to "Attention Is All You Need." It proposed using convolutional neural networks instead of RNNs for sequence transduction, introducing the concept of building encoders and decoders without recurrence. The paper was discussed extensively on Hacker News alongside the Transformer paper, as both challenged RNN dominance in NLP.

## Key Aspects

- **Convolutional Encoder-Decoder**: Uses stacked CNN blocks with gated activations and batch normalization for sequence-to-sequence tasks, eliminating recurrence entirely
- **Precursor to Transformers**: Released a year before "Attention Is All You Need" (1706.01933), it established the idea that non-recurrent architectures could match or exceed RNN performance
- **Position Representations**: Both ConvS2S and the Transformer required explicit position encoding — a shared challenge for non-sequential architectures
- **Parallelization Advantage**: Like Transformers, CNN-based architectures can parallelize across sequence positions, unlike the sequential bottleneck of RNNs
- **Historical Context**: The Hacker News discussion of 1606.01933 (December 2017) captures the community's early understanding of the paradigm shift away from RNNs

## Related Concepts
- [[transformers]]
- [[attention-mechanisms]]

## Sources
- [[attention-is-all-you-need-discussion]]
