---
created: 2026-04-29
updated: 2026-04-29
tags: [source, transformers, attention, deep-learning, tutorial]
sources: 1
url: "https://peterbloem.nl/blog/transformers"
title: "Transformers from Scratch"
---

# Transformers from Scratch

## Summary

A comprehensive tutorial explaining transformer architecture from first principles, starting with basic self-attention and building up to a complete transformer implementation in PyTorch. Peter Bloem covers queries/keys/values, scaled dot-product attention, multi-head attention, positional encoding, layer normalization, and the full encoder-decoder architecture with practical code examples.

## Key Takeaways

- Self-attention computes output vectors as weighted averages over all input vectors, where weights are derived from dot products between inputs
- The dot product expresses "relatedness" between two vectors, with meaning determined by the learning task
- Self-attention is permutation equivariant -- it sees input as a set, not a sequence; positional encoding is needed to preserve order
- Queries, keys, and values are three linear transformations of the same input, giving the model different ways to relate to and extract information from other vectors
- Scaling the dot product by sqrt(k) prevents softmax gradients from vanishing with large embedding dimensions
- Multi-head attention allows the model to attend to different types of relationships simultaneously (e.g., subject-verb vs. verb-object)
- Efficient multi-head attention uses the same total parameter count as single-head by projecting to lower-dimensional subspaces per head
- The transformer is defined as any architecture where the only interaction between sequence units is through self-attention

## Entities Mentioned

- [[peter-bloem]] -- author of this tutorial, creator of the former library
- [[ashish-vaswani]] -- lead author of the original Transformer paper

## Concepts Mentioned

- [[self-attention]] -- mechanism computing weighted averages over input sequence elements
- [[transformer-architecture]] -- neural network architecture based entirely on attention mechanisms
- [[multi-head-attention]] -- parallel attention operations with different learned projections
- [[scaled-dot-product-attention]] -- attention scoring function with sqrt(k) scaling
- [[positional-encoding]] -- adding position information to permutation-invariant attention
- [[queries-keys-values]] -- three roles each input vector plays in self-attention
- [[layer-normalization]] -- normalization applied over embedding dimensions
- [[feed-forward-networks]] -- position-wise fully connected network applied after attention

## Raw Notes

- Includes complete PyTorch implementation of SelfAttention class
- Uses movie recommendation as an intuitive analogy for how dot products measure feature alignment
- Companion video lectures available on YouTube
- Code available on Codeberg (pbm/former)
