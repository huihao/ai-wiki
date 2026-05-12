---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Breaking Down TurboQuant

## Metadata

- **Author**: Surya Sure
- **Date**: N/A (blog post)
- **URL**: https://www.suryasure.com/articles/breaking-down-turboquant
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/transformer/Breaking Down TurboQuant.md`

## Summary

A toy-example walkthrough of Google's TurboQuant KV-cache compression algorithm. The article explains PolarQuant (orthogonal-matrix normalization), Lloyd-Max quantization, and QJL projection using concrete numerical examples to show how a 6× KV-cache compression can be achieved while preserving attention-score accuracy.

## Key Takeaways

- **PolarQuant** multiplies the KV matrix by an orthogonal matrix to normalize outliers, making quantization buckets more precise. On hardware without strong parallel compute, a Hadamard matrix can be used to avoid actual multiplications.
- **Lloyd-Max quantization** creates non-uniform buckets that better fit the bell-curve distribution of LLM activations, reducing mean-squared error compared to uniform quantization.
- **QJL Projection** compresses the query/key space by projecting into a lower-dimensional random matrix and storing only the binary signs. The dot product can then be computed with additions/subtractions only (no multiplications).
- The reconstructed attention scores achieve roughly 98% accuracy on larger matrices.

## Entities Mentioned

- [[google]] — Developed the TurboQuant algorithm.
- Surya Sure — Author of the explanatory article.

## Concepts Mentioned

- [[quantization]] — Lossy compression of activations/weights to lower precision.
- [[kv-cache|KV cache]] — The target of TurboQuant compression.
- Orthogonal matrix — Used in PolarQuant to spread outlier values evenly.
- [[max-mynter-career-blog|Lloyd-Max algorithm]] — Non-uniform quantization optimizing MSE.
- Hadamard matrix — Binary orthogonal matrix for efficient hardware implementation.

## Raw Notes

- The toy example uses a tiny 4-element vector and 2-bit quantization to make every operation concrete.
- The inverse transform plus stored norm allows reconstructing the original vector with bounded error.
- The QJL correction term compensates for the magnitude lost when taking signs only.

## Questions / Follow-ups

- How does TurboQuant interact with GQA or MLA? Can it be stacked for further compression?
- What is the latency overhead of the PolarQuant transform during prefill?
