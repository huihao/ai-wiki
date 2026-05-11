---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# sinusoidal-functions

## Definition

Sinusoidal functions (sine and cosine) are used in transformer architectures for positional encoding -- injecting information about token position into the model since transformers process all tokens simultaneously rather than sequentially. The original "Attention Is All You Need" paper defines positional encodings as pairs of sine and cosine functions at different frequencies across the embedding dimension, where frequencies form a geometric progression from 2pi to 10000 * 2pi. This encoding enables the model to learn relative position relationships because the encoding for position (pos + k) can be expressed as a linear transformation of the encoding at position pos.

## Key Aspects

- **Why Sinusoidal**: Position and order are essential for language semantics; RNNs handle this inherently through sequential processing, but transformers process all positions in parallel and need explicit position information
- **Frequency Progression**: Each dimension pair uses a different frequency; low dimensions change quickly (fine-grained position), high dimensions change slowly (coarse position), forming a geometric progression similar to binary encoding
- **Linear Relative Position**: The key mathematical property is that PE(pos+k) can be written as M_k x PE(pos) for some matrix M_k, meaning relative position attention can be learned via linear transformations
- **Rotation Matrix Analogy**: The transformation matrix M_k resembles a rotation matrix, connecting sinusoidal positional encoding to modern rotary position embeddings (RoPE)
- **Binary Encoding Analogy**: Different sinusoid pairs alternate at different rates, analogous to bits in binary representation where each bit alternates at twice the frequency of the one before it
- **Residual Connections**: Positional information propagates through the network via residual connections, allowing deeper layers to combine positional and semantic information
- **Beyond Sinusoidal**: Learned positional embeddings and later rotary embeddings (RoPE) build on the insight that position can be encoded through mathematical transformations

## Related Concepts

- [[positional-encoding]] -- The general technique of injecting position information into transformers
- [[relative-position-attention]] -- Attending based on relative rather than absolute position
- [[rotation-matrix]] -- Mathematical connection between sinusoidal encoding and rotary embeddings
- [[transformers]] -- The model architecture where sinusoidal encoding is used

## Sources

- [[amirhossein-kazemnejad]] -- Author of deep dive on transformer positional encoding
- [[relative-position-attention]] -- Mathematical foundation for relative position learning
- [[transformer-architecture-the-positional-encoding]] -- Detailed explanation of sinusoidal positional encoding with proofs
