---
created: 2026-04-29
updated: 2026-04-29
tags: [source, positional-encoding, transformer-architecture, sinusoidal, mathematics]
sources: 1
url: "https://kazemnejad.com/blog/transformer_architecture_positional_encoding/"
title: "Transformer Architecture: The Positional Encoding"
---

# Transformer Architecture: The Positional Encoding

## Summary

A deep mathematical dive into how positional encoding works in the Transformer architecture. The article explains why Transformers need positional information (since they lack recurrence), the criteria for a good encoding, and provides a detailed derivation of the sinusoidal encoding scheme from the original "Attention Is All You Need" paper, including proofs of how relative position can be expressed as a linear transformation.

## Key Takeaways
- Transformers ditch recurrence for self-attention, losing inherent word-order information; positional encoding solves this
- Ideal positional encoding should: work for arbitrary sequence lengths, generalize to unseen lengths, represent relative positions, and be deterministic
- The sinusoidal encoding uses pairs of sine/cosine functions at decreasing frequencies (geometric progression from 2pi to 10000*2pi)
- Positional encoding is added (not concatenated) to word embeddings to equip them with position info
- Sinusoidal encoding allows the model to attend relative positions effortlessly: for fixed offset k, PE(pos+k) can be represented as a linear function of PE(pos)
- The linear transformation matrix M is analogous to a rotation matrix and is independent of position t

## Entities Mentioned
- [[amirhossein-kazemnejad]]
- [[ashish-vaswani]]

## Concepts Mentioned
- [[positional-encoding]]
- [[absolute-positional-embeddings]]
- [[scaled-dot-product-attention]]
- [[rotary-positional-embedding]]
