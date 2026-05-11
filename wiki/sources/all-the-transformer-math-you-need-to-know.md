---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# All the Transformer Math You Need to Know

## Metadata

- **Author**: Work Done; Now
- **Date**: 2026-01-01
- **URL**: https://jax-ml.github.io/scaling-book/transformers/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/transformer/All the Transformer Math You Need to Know.md`

## Summary

A concise, math-heavy reference from the JAX/ML scaling book that derives FLOP counts, memory costs, and throughput estimates for dense and MoE Transformer layers. It includes practical rules of thumb (e.g., 6 × params × tokens for training FLOPs) and worked examples for sharded matmuls and Flash Attention.

## Key Takeaways

- Training FLOPs for a dense Transformer matmul follow the rule of thumb: **6 × num_parameters × num_tokens**.
- Dot-product attention FLOPs only dominate over MLP FLOPs once sequence length T > 8D (e.g., ~64K tokens for D=8k).
- For grouped-query attention, reducing KV heads (K ≪ N) dramatically shrinks the KV cache: size is 2SLKH bytes per token.
- MoE models increase parameter count by O(E) but only activate k experts per token, requiring large batch sizes to stay compute-bound at generation time (e.g., B > 3840 for DeepSeek with E=256, k=8).
- Flash Attention achieves O(1) extra memory by computing attention in chunks and carrying running softmax statistics across chunks.
- Pre-norm (x + attn(norm(x))) is now standard; post-norm was used in the original Transformer paper.

## Entities Mentioned

- [[deepseek-sparse-attention|DeepSeek]] — DeepSeek v3 training stats used as a worked example (~21.7% FP8 FLOPs utilization on H800s).
- [[google]] — bfloat16 format mentioned; JAX/ML team authored the guide.
- [[meta]] — LLaMA-3 pre-norm architecture referenced.

## Concepts Mentioned

- [[transformer-architecture]] — Decoder-only stack with MHA, MLP, and layer norms.
- [[multi-head-attention-from-scratch|Multi-head attention]] — QKVO projections and dot-product attention cost formulas.
- [[grouped-query-attention]] — Trade-off between KV-cache size and modeling quality.
- [[mixture-of-experts]] — Routing tokens to k of E experts; introduces AllToAll communication.
- [[self-attention|Flash attention]] — Tiling attention to reduce HBM traffic and memory footprint.
- [[kv-caching|KV cache]] — Memory cost formula: 2SLKH bytes in int8.
- [[model-scaling]] — Power-law relationships and arithmetic intensity.
- [[flops]] — Forward-pass vs backward-pass costs; training vs inference.

## Raw Notes

- The guide provides explicit per-layer parameter and FLOP tables for MLP, Attention, and Other components.
- Includes a practical question set with answers (e.g., when do self-attention FLOPs equal QKVO projection FLOPs? Answer: T = 2D).
- Discusses rematerialization strategies via `jax.remat` / `jax.checkpoint` to reduce activation memory.

## Questions / Follow-ups

- How do the FLOP formulas change for MLA where KV projections are fused into a latent vector?
- What is the impact of FP8 training on the effective arithmetic intensity calculations?
