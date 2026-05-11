---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Multi-Head Attention From Scratch

## Metadata

- **Author**: Sanjaya Subedi
- **Date**: 2024-09-09
- **URL**: https://sanjayasubedi.com.np/deeplearning/multihead-attention-from-scratch/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Multi-Head Attention From Scratch.md`

## Summary

Part 1 of a 5-part series on Understanding Transformers Architecture. Implements scaled dot-product attention, multi-head attention (naive and efficient), and positional embeddings from scratch in PyTorch. Validates against PyTorch's built-in implementation on a BBC News text classification task.

## Key Takeaways

- Scaled dot-product attention computes pairwise similarity between Query and Key, scales by sqrt(d_k), applies softmax, and weights Value vectors.
- Batched matrix multiplication generalizes to higher dimensions by iterating over all but the last two axes.
- Naive MHA loops over heads with separate Linear layers; efficient MHA stacks projections into one matrix multiplication and reshapes.
- The efficient implementation matches PyTorch's accuracy (~0.87-0.88 on BBC News) but is slower (218s vs 155s for 10 epochs on CPU).
- Positional embeddings are necessary because self-attention is permutation-invariant.

## Entities Mentioned

- Sanjaya Subedi — author
- [[huggingface-skills|Hugging Face]] — referenced for tokenizer and datasets
- [[pytorch-in-one-hour|PyTorch]] — implementation framework

## Concepts Mentioned

- [[multi-head-attention-from-scratch|Multi-head attention]] — parallel attention heads with independent projections
- [[self-attention|Scaled dot-product attention]] — QK^T / sqrt(d_k) softmax weighting of V
- [[self-attention]] — using the same input for Q, K, and V
- [[rotary-positional-embedding|Positional embedding]] — encoding token position information
- [[how-llms-generate-text-conditional-probability|Text classification]] — BBC News 5-class classification task
- Batched matrix multiplication — generalizing matmul to 3D+ tensors

## Questions / Follow-ups

- Link to [[implementing-a-transformer-from-scratch]] and [[llama|Llama from scratch]] for broader architectural context.
