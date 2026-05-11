---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# "This Kernel Was Faster Yesterday" — In Pursuit of High-Fidelity GPU Kernel Benchmarking

## Metadata

- **Author**: Standard Kernel team
- **Date**: 2026-02-24
- **URL**: https://standardkernel.com/blog/in-pursuit-of-high-fidelity-gpu-kernel-benchmarking/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/gpu/"This Kernel Was Faster Yesterday".md`

## Summary

A deep dive into the many sources of variance and noise in GPU kernel benchmarking, with particular focus on matmul kernels used in RL-driven optimization. It explains how power limits, thermal state, dynamic clocks, cache state, timing methods, compilation flags, and even cloud provider hardware variance can mislead automated systems.

## Key Takeaways

- GPU timing is deceptively hard: power limits, thermal state, clock behavior, idle transitions, caching, and measurement methods all matter.
- **Clock speed cannot be truly locked under power constraints.** If a workload exceeds the power cap, hardware throttles regardless of manual settings.
- Sleeping between trials stabilizes clocks but shifts the GPU out of steady state, making results reflect bursty rather than sustained throughput.
- Cache state (warm vs cold) affects memory-bound kernels (e.g., VectorAdd, GEMV) more than compute-bound kernels (e.g., GEMM).
- For microsecond-scale kernels, execution time is often inseparable from measurement overhead; methods below ~10µs cannot be reliably measured.
- CUDA events and CUDA graphs provide stable, low-variance measurements. PyTorch profiler is heavier and can report zero timings for very small kernels.
- Cloud providers may ship different variants of the same GPU SKU (e.g., A100-PCIe vs A100-SXM4 vs virtualized GRID A100D) with different drivers, power caps, and clock limits.

## Entities Mentioned

- [[nvidia]] — H100, A100, CUDA, nvidia-smi, Nsight Compute.
- [[meta]] — PyTorch profiler mentioned.
- [[openai]] — Triton `do_bench` timing function mentioned.

## Concepts Mentioned

- [[cuda]] — Kernel launch, streams, events, graphs.
- [[pico-gpu|GPU benchmarking]] — Warmup, synchronization, aggregation statistics.
- [[llm-context-scaling-512-to-2m|Dynamic frequency scaling]] — SM and memory clocks adjust based on power/temperature.
- Power throttling — Hardware-enforced clock reduction when power limits are reached.
- [[understanding-coding-kv-cache-raschka|Cache state]] — Warm vs cold L1/L2 effects on different kernel types.
- Arithmetic intensity — Determines whether a kernel is memory-bound or compute-bound.
- GEMM / GEMV / Conv2D — Benchmarked kernel types.

## Raw Notes

- Persistent mode (`nvidia-smi -pm 1`) did not noticeably change steady-state timing in their continuous-workload experiments.
- Minimum, mean, median, and trimmed mean were compared; trimmed mean reduces outlier sensitivity.
- Compilation flags alone can change performance for the same kernel and hardware.

## Questions / Follow-ups

- How can RL-based kernel optimizers build robust eval infrastructure that averages out these noise sources?
- What is the best practice for benchmarking on shared/multi-tenant GPU cloud instances?
