---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Linear Relationships in the Transformer's Positional Encoding

## Metadata

- **Author**: Timo Denk
- **Date**: 2019-01-22
- **URL**: https://blog.timodenk.com/linear-relationships-in-the-transformers-positional-encoding/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Linear Relationships in the Transformer's Positional Encoding.md`

## Summary

Mathematical proof demonstrating that the Transformer's positional encoding (from "Attention Is All You Need") exhibits a linear property: for any fixed offset k, the encoding at position pos+k can be represented as a linear transformation of the encoding at position pos. This property enables the model to learn attention by relative positions.

## Key Takeaways

- Proves the linear relationship claimed in Vaswani et al. (2017) for positional encoding
- Shows that PE(pos+k) = T(k) * PE(pos) where T(k) is a rotation matrix
- T(k) is block-diagonal with 2x2 rotation matrices at each frequency component
- Rotation angle at each frequency equals λ_m * k where λ_m = 10000^(-2m/d_model)
- Transformation depends only on offset k, not on absolute position t
- Uses trigonometric addition theorems to derive the proof

## Entities Mentioned

- [[vaswani-et-al|Vaswani et al.]] — original Transformer paper authors
- [[timo-denk|Timo Denk]] — author of this mathematical proof

## Concepts Mentioned

- [[transformer-architecture|Transformer Architecture]] — positional encoding component
- [[positional-encoding|Positional Encoding]] — sinusoidal position representation
- [[attention-mechanisms|Attention Mechanism]] — relative position learning
- [[linear-transformation|Linear Transformation]] — mathematical property proved

## Mathematical Details

The proof shows that the positional encoding matrix T^(k) can be constructed as a block-diagonal matrix where each 2x2 block is a rotation matrix:

Φ^(k)_m = [cos(λ_m k), sin(λ_m k); -sin(λ_m k), cos(λ_m k)]

This enables relative position attention because shifting by k positions is a linear operation on the embeddings.

## Questions / Follow-ups

- Compare with [[rope|RoPE]] (Rotary Positional Embedding) which builds on similar mathematical foundations
- Link to [[transformers]] for the original positional encoding definition