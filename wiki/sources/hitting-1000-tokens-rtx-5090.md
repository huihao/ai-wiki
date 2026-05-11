---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Hitting 1,000 Tokens Per Second with RTX 5090

## Metadata

- **Author**: Alpin Dale
- **Date**: 2026-02-09
- **URL**: https://blog.alpindale.net/posts/5090_decode_optimization/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/Hitting 1,000 tokens per second on a single RTX 5090.md

## Summary

A detailed technical walkthrough of aggressive decode optimizations achieving 1,000+ tokens/second on Qwen3-0.6B using an RTX 5090 GPU with bfloat16 weights. The article describes writing a single 1,200-line CUDA megakernel that runs an entire LLM forward pass in one persistent GPU launch, optimizing synchronization, memory access, and bandwidth utilization.

## Key Takeaways

- Single-token decode is memory-bound: reads 1.19 GB weights per step, bandwidth limited
- RTX 5090 delivers 1,674 GB/s read bandwidth (93% of 1,792 GB/s peak)
- Persistent megakernel eliminates kernel launch overhead and enables custom synchronization
- Redundant RMSNorm eliminates barriers by computing norm independently per block
- L1-bypassing 128-bit loads keep cache for activations, not weights
- Productive spin: idle blocks prefetch next phase weights during attention computation
- Achieved 71% bandwidth utilization (1000 tok/s vs theoretical 1404 tok/s minimum)

## Entities Mentioned

- [[alpin-dale|Alpin Dale]] — Author and GPU optimization expert
- [[nvidia|NVIDIA]] — RTX 5090 GPU manufacturer
- [[elliot-arledge|Elliot Arledge]] — Creator of original MegaQwen (530 tok/s on RTX 3090)
- [[qwen|Qwen]] — LLM model optimized (Qwen3-0.6B)

## Concepts Mentioned

- [[persistent-kernels|Persistent Kernels]] — Single-launch kernels staying resident on GPU
- [[decode-optimization|Decode Optimization]] — Optimizing single-token autoregressive generation
- [[memory-bandwidth-optimization|Memory Bandwidth Optimization]] — Maximizing GPU memory throughput
- [[atomic-barriers|Atomic Barriers]] — Custom GPU synchronization mechanisms
- [[warp-scheduling|Warp Scheduling]] — Thread execution organization
- [[roofline-model|Roofline Model]] — Performance analysis framework
- [[llm-inference|LLM Inference]] — Running language models
- [[cuda-megakernel|CUDA Megakernel]] — Single kernel running entire model

## Raw Notes

The optimization journey went from 494 tok/s (MegaQwen port) to 1000+ tok/s through: (1) persistent kernel with atomic barriers replacing cooperative launch, (2) flag-based partial barrier elimination saving 56 us, (3) productive spin where 112 idle blocks prefetch weights while 16 blocks do attention, (4) collapsing two-phase LM head into single kernel. Key insight: prefetch into free bandwidth (attention phase has 95% idle bandwidth), not contended bandwidth. Final profile: 216 us overhead + 28 layers × 28 us + 784 us weight reads = 1000 us total.

## Questions / Follow-ups

- Can this approach scale to larger models?
- What are the theoretical limits beyond bandwidth?
- How does quantization change the optimization landscape?
- What fails at longer sequence lengths when attention becomes bandwidth-heavy?