---
created: 2026-04-29
updated: 2026-04-29
tags: [architecture, transformer]
sources: 1
---

# Encoder-Decoder Architecture

## Definition

A neural network architecture consisting of two stacks: an encoder that processes the input sequence into a representation, and a decoder that generates the output sequence from that representation. The original Transformer uses this design with N=6 layers in each stack.

## Encoder Stack

- N identical layers (N=6 in original Transformer)
- Each layer: self-attention + feed-forward network
- Residual connections + layer normalization around each sub-layer
- Output: sequence of context-rich representations

## Decoder Stack

- N identical layers with 3 sub-layers each:
  1. Masked multi-head attention (causal, prevents attending to future tokens)
  2. Encoder-decoder attention (queries from decoder, keys/values from encoder)
  3. Feed-forward network
- Residual connections + layer normalization

## Key Differences from Decoder-Only

- Encoder-decoder: bidirectional encoder, autoregressive decoder
- Decoder-only (GPT): unified stack, no separate encoder
- Encoder-only (BERT): no decoder, bidirectional representation learning

## Masks

- **Encoder mask**: Padding mask for variable-length sequences
- **Decoder mask 1**: Combined padding + look-ahead (causal) mask
- **Decoder mask 2**: Padding mask for encoder-decoder attention

## Related Concepts

- [[self-attention]] — Mechanism allowing each position to attend to all positions
- [[multi-head-attention]] — Multiple parallel attention operations
- [[masked-causal-attention]] — Preventing future token access
- [[residual-connections]] — Skip connections for gradient flow
- [[layer-normalization]] — Stabilizing training

## Sources

- [[attention-is-all-you-need-discovery]] — Transformer paper walkthrough
