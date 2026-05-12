---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Sequence-to-Sequence

## Definition

Sequence-to-sequence (Seq2Seq) is an encoder-decoder neural network architecture that maps an input sequence of variable length to an output sequence of variable length. Originally built on RNNs (LSTM/GRU), it was the dominant paradigm for tasks like machine translation, text summarization, and dialogue systems before the transformer architecture replaced it.

## Key Aspects

- Encoder processes the input sequence into a fixed-length context vector; decoder generates the output sequence from that vector
- Original implementations used RNNs (LSTM/GRU) with the encoder compressing all information into a final hidden state
- Attention mechanisms were added to allow the decoder to look back at encoder states, dramatically improving performance on long sequences
- The transformer paper ("Attention Is All You Need") demonstrated that attention alone, without recurrence, achieves superior results
- Encoder-decoder mode switch described as "hacky" in HN discussion: nothing in nature works this way
- Variable-length handling was the key innovation: DNNs operate on fixed-size tensors, but language has variable-length inputs and outputs
- Applications: machine translation (original), text summarization, question answering, speech recognition, code generation
- Challenges: information bottleneck in fixed-length context vector, difficulty with very long sequences, sequential processing prevents parallelization
- The architecture's concept persists in transformers, which maintain encoder-decoder structure but replace recurrence with attention

## Related Concepts

- [[transformers]] -- Architecture that superseded Seq2Seq by replacing recurrence with attention
- [[attention-mechanisms]] -- Innovation first added to Seq2Seq before becoming the core of transformers
- [[recurrent-neural-networks]] -- Recurrent networks that powered original Seq2Seq models
- [[machine-translation]] -- Primary application that motivated Seq2Seq development

## Sources

- [[attention-is-all-you-need-discussion]]
