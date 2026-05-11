---
created: 2026-04-28
updated: 2026-04-28
tags: [source, gpu, inference, optimization, cuda]
sources: 1
---

# Hitting 1,000 Tokens per Second on a Single RTX 5090

## Metadata

- **Author**: AlpinDale
- **Date**: 2026-02-09
- **URL**: https://blog.alpindale.net/posts/5090_decode_optimization/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Hitting 1,000 tokens per second on a single RTX 5090.md`

## Summary

A deep technical dive into aggressive decode optimizations for Qwen3-0.6B on an RTX 5090 GPU. Achieves ~1,033 tok/s via a custom CUDA megakernel with persistent threads, atomic barriers, L2 prefetching, and fused kernels — pushing close to GDDR7 memory bandwidth limits.

## Key Takeaways

- Single-token decode is memory-bound: reads ~1.19GB of weights per step.
- RTX 5090 GDDR7 delivers ~1,674 GB/s (93% of theoretical peak).
- Optimizations: redundant RMSNorm (eliminate barriers), L1-bypassing weight loads, online softmax, RoPE via warp shuffles, two-phase LM head argmax.
- Persistent kernel with custom atomic barriers replaces cooperative grid sync.
- **Productive spin**: idle threads issue L2 prefetch instructions during attention, hiding weight load latency.
- Final: 1,000 us/step = 712 us reading weights + 288 us overhead.

## Entities Mentioned

- [[nvidia]] — RTX 5090 GPU architecture
- [[qwen]] — Qwen3-0.6B model used for benchmarking
- AlpinDale — author and kernel developer

## Concepts Mentioned

- [[pico-gpu|GPU optimization]] — CUDA kernel tuning for inference
- [[agent-builder-memory-system|Memory-bound workload]] — performance limited by bandwidth, not compute
- [[this-kernel-was-faster-yesterday|Persistent kernel]] — single long-running kernel avoiding launch overhead
- L2 prefetch — hiding memory latency via cache warming
- [[rope]] — Rotary Position Embedding optimization
- [[rmsnorm]] — efficient normalization without mean subtraction

## Raw Notes

See raw file for detailed kernel architecture and per-layer profiling data.

## Questions / Follow-ups

- Can these techniques generalize to larger models where attention dominates?
