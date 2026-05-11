---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, person]
sources: 1
---

# Alpin Dale

## Summary

Alpin Dale is a GPU optimization expert and developer known for aggressive performance tuning of LLM inference systems. Author of detailed technical blog posts documenting GPU kernel optimization techniques for achieving near-theoretical performance limits.

## Key Work

- Achieved 1,000+ tok/s on Qwen3-0.6B with RTX 5090 (from 494 tok/s baseline)
- Wrote 1,200-line CUDA megakernel for complete LLM forward pass
- Documented systematic optimization journey from MegaQwen port to 2× performance
- Published detailed profiling data and per-phase cost breakdowns

## Related Entities

- [[elliot-arledge|Elliot Arledge]] — Creator of MegaQwen (original 530 tok/s implementation)
- [[nvidia|NVIDIA]] — Hardware (RTX 5090) manufacturer
- [[qwen|Qwen]] — Model family optimized

## Related Concepts

- [[persistent-kernels|Persistent Kernels]] — Key optimization technique
- [[decode-optimization|Decode Optimization]] — Focus area of work
- [[cuda-optimization|CUDA Optimization]] — Core expertise
- [[memory-bandwidth-optimization|Memory Bandwidth Optimization]] — Specialization

## Sources

- [[hitting-1000-tokens-rtx-5090|Hitting 1,000 Tokens Per Second with RTX 5090]]

## Notable Insights

- Prefetch into free bandwidth, not contended bandwidth
- 71% bandwidth utilization ceiling from synchronization overhead
- Custom atomic barriers cheaper than cooperative launch grid.sync()
- Productive spin: turn idle blocks into productive prefetch units