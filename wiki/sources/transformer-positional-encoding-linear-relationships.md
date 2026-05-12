---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Linear Relationships in the Transformer’s Positional Encoding

## Metadata

- **Author**: Timo Denk
- **Date**: 2019-01-22
- **URL**: https://blog.timodenk.com/linear-relationships-in-the-transformers-positional-encoding/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Linear Relationships in the Transformer’s Positional Encoding.md`

## Summary

A mathematical proof that the Transformer’s sinusoidal positional encoding satisfies the linear relationship claimed in the original "Attention Is All You Need" paper: for any fixed offset k, PE_{pos+k} can be represented as a linear function of PE_{pos}.

## Key Takeaways

- The positional encoding vector e(t) consists of sinusoidal pairs sin(t/f_m) and cos(t/f_m) for each frequency f_m.
- Frequencies are defined as f_m = 10000^(2m/d_model).
- A transformation matrix T^(k) exists such that T^(k) * E_{t,:} = E_{t+k,:}.
- T^(k) is block-diagonal with 2x2 rotation matrices on the diagonal.
- The proof uses trigonometric addition theorems to show r = lambda, confirming the linear relationship.

## Entities Mentioned

- Timo Denk — author
- [[vaswani-et-al|Vaswani et al.]] — original Transformer authors

## Concepts Mentioned

- [[projective-ray-positional-encoding|Positional encoding]] — injects sequence position information into transformer inputs
- [[positional-encoding|Sinusoidal encoding]] — fixed-frequency sine/cosine encoding used in the original Transformer
- Rotation matrix — 2x2 matrix representing rotation by angle lambda_m * k
- [[attention-mechanisms]] — the broader mechanism positional encoding supports

## Questions / Follow-ups

- How does this relate to learned positional embeddings (e.g., BERT) and rotary embeddings (RoPE)?
