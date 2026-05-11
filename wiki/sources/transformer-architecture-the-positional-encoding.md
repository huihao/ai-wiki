---
created: 2026-04-28
updated: 2026-04-28
tags: [source, transformer, positional-encoding]
sources: 1
---

# Transformer Architecture: The Positional Encoding

## Metadata

- **Author**: Amirhossein Kazemnejad
- **Date**: 2019-09-20
- **URL**: https://kazemnejad.com/blog/transformer_architecture_positional_encoding/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Transformer Architecture_ The Positional Encoding.md`

## Summary

Deep dive into positional encoding in transformers, explaining why sinusoidal functions are used and proving mathematically how they enable relative position attention. Shows why PE(pos+k) can be represented as linear function of PE(pos).

## Key Takeaways

- Position/order essential for language semantics - RNNs handle this inherently through sequential processing
- Transformers need explicit positional encoding since they process all positions simultaneously
- Simple solutions (numbering 0-1 or linear) fail due to inconsistent meaning or inability to generalize
- Sinusoidal encoding: d-dimensional vector with sine/cosine pairs at different frequencies
- Frequencies form geometric progression from 2π to 10000·2π
- Binary representation analogy: different bits alternate at different rates, similar to sinusoids
- Mathematical proof shows PE(pos+k) is linear transformation of PE(pos) - enables relative position learning
- Transformation matrix M resembles rotation matrix
- Residual connections help propagate positional information through network

## Entities Mentioned

- Vaswani et al. — transformer architecture authors
- Susan Yin — photographer (Unsplash)
- Timo Denk — article author referenced for detailed proofs

## Concepts Mentioned

- [[positional-encoding]] - injecting position/order information into model
- [[sinusoidal-functions]] - sine and cosine pairs for position representation
- [[relative-position-attention]] - ability to attend by relative positions through linear transformation
- [[geometric-progression]] - wavelength distribution in positional encoding
- [[rotation-matrix]] - similarity to transformation matrix for position offset
- [[residual-connections]] - propagating positional info through network layers

## Questions / Follow-ups

- Does adding positional embeddings (vs concatenating) interfere with semantic embeddings?
- Can a single sine/cosine work instead of pairs?