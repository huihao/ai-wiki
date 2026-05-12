---
created: 2026-04-29
updated: 2026-04-29
tags: [source, transformers, attention, nmt, tensorflow, tutorial]
sources: 1
url: "https://towardsdatascience.com/attention-is-all-you-need-discovering-the-transformer-paper-73e5ff5e0634/"
title: "Attention is All You Need: Discovering the Transformer Paper"
---

# Attention is All You Need: Discovering the Transformer Paper

## Summary

A detailed walkthrough of the landmark "Attention is All You Need" paper by Vaswani et al. (2017), explaining the motivation, architecture, and implementation of the Transformer model for Neural Machine Translation. The article covers self-attention, multi-head attention, positional encoding, encoder/decoder components, and includes a TensorFlow implementation trained on an English-to-Spanish translation task.

## Key Takeaways

- RNNs in encoder-decoder architectures lose information from early sequence elements as new elements are processed sequentially
- The attention mechanism allows the decoder to look at all encoder states, creating a weighted sum of past encoder states for each decoding step
- Self-attention extracts features for each word by computing how important all other words in the sentence are relative to it
- Queries, Keys, and Values are three learned weight matrices applied to the same encoded input, enabling self-attention
- Multi-head attention divides word vectors into chunks and applies self-attention independently on each, capturing different relationship types
- Positional encoding uses sinusoidal functions to inject position information, allowing extrapolation to longer sequences than seen during training
- The encoder uses N=6 identical layers with multi-head self-attention and feed-forward networks, plus residual connections and layer normalization
- The decoder adds masked causal attention to prevent attending to future positions, and encoder-decoder attention for cross-sequence alignment
- Three masks are created: encoder padding mask, decoder combined padding+causal mask, and decoder encoder-attention padding mask

## Entities Mentioned

- [[ashish-vaswani]] -- lead author of "Attention is All You Need"
- [[noam-shazeer]] -- co-author of the Transformer paper
- [[jay-alammar]] -- creator of "The Illustrated Transformer"
- [[peter-bloem]] -- author of "Transformers from Scratch" (referenced)
- [[tensorflow]] -- framework used for the implementation

## Concepts Mentioned

- [[self-attention]] -- mechanism for computing relationships between all positions in a sequence
- [[multi-head-attention]] -- parallel attention heads capturing different relationship types
- [[scaled-dot-product-attention]] -- attention scoring with sqrt(dk) scaling
- [[positional-encoding]] -- sinusoidal functions adding sequence order information
- [[encoder-decoder-architecture]] -- sequence-to-sequence model with separate encoder and decoder
- [[causal-attention]] -- masked attention preventing future position access
- [[layer-normalization]] -- normalization applied after each sub-layer
- [[residual-connections]] -- skip connections summing sub-layer output with its input

## Raw Notes

- Code available in "Transformer-NMT" GitHub repository
- Training uses Adam optimizer with beta1=0.9, beta2=0.98, epsilon=10e-9
- Custom learning rate scheduler with warmup and decay
- The implementation demonstrates English to Spanish translation on a small-scale NMT problem
