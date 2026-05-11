---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Decode Optimization

## Definition

Decode Optimization focuses on maximizing throughput of single-token autoregressive generation in LLMs, where each step generates one token by reading all model weights with minimal computation. Unlike batch inference, decode is entirely memory-bandwidth bound, making optimization strategies fundamentally different.

## Key Characteristics

- Memory-bound: reads ~1.2 GB weights per 0.6B model step
- Minimal arithmetic: just one token's forward pass
- Bandwidth ceiling: 1,192 MB / 1,674 GB/s = 712 us minimum
- Requires weight prefetching, synchronization elimination, bandwidth maximization
- Different from batch inference optimization (compute-bound)
- Requires persistent kernels to amortize launch overhead

## Key Proponents / Critics

- [[alpin-dale|Alpin Dale]] — Expert in decode optimization
- [[elliot-arledge|Elliot Arledge]] — Early work on decode kernels

## Related Concepts

- [[persistent-kernels|Persistent Kernels]] — Key technique for decode
- [[memory-bandwidth-optimization|Memory Bandwidth Optimization]] — Core constraint
- [[atomic-barriers|Atomic Barriers]] — Synchronization for decode steps
- [[roofline-model|Roofline Model]] — Framework showing decode is memory-bound
- [[llm-inference|LLM Inference]] — General inference context

## Related Entities

- [[nvidia|NVIDIA]] — Hardware platform (RTX 5090 with GDDR7)
- [[qwen|Qwen]] — Model family optimized for decode

## Sources

- [[hitting-1000-tokens-rtx-5090|Hitting 1,000 Tokens Per Second with RTX 5090]]

## Evolution

Decode optimization has evolved from naive kernel launches (~5% bandwidth utilization) to sophisticated persistent kernels achieving 70%+ utilization. Key innovations: redundant RMSNorm (eliminate barriers), L1-bypassing weight loads, productive spin (prefetch during attention), atomic barrier optimizations.