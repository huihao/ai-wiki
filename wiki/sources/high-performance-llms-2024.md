---
url: "https://github.com/rwitten/HighPerfLLMs2024"
title: "High Performance LLMs 2024"
author: "Rafi Witten"
date: "2024-01-28"
description: "Course on building high-performance LLM training and inference systems in JAX, covering roofline analysis, compilation, sharding, and optimization"
---

# High Performance LLMs 2024

> Original link: [https://github.com/rwitten/HighPerfLLMs2024](https://github.com/rwitten/HighPerfLLMs2024)

---

## Summary

Comprehensive course teaching how to build full-scale, high-performance LLMs from scratch in JAX. Covers training and inference optimization, roofline analysis, compilation, sharding, profiling, and reaching near-physical-limit performance.

## Course Objectives

Build expertise in:

- High-performance JAX LLM implementation for training
- High-performance JAX LLM implementation for inference
- Single-chip roofline analysis and compilation
- Distributed computing via sharding
- LLM training optimization (under-the-hood, rooflines, sharding)
- LLM inference optimization (under-the-hood, rooflines, sharding)
- Deep dive into attention (fused attention, softmax, flash attention)
- Pallas optimization (one level deeper)

## Course Structure

### Sessions

10 sessions covering:

| Session | Topics | Materials |
|---------|--------|-----------|
| 1 | Jax basics, training setup | Slides, exercises, YouTube |
| 2 | Training implementation | Slides, exercises, YouTube |
| 3 | Inference implementation | Slides, exercises, YouTube |
| 4 | Roofline analysis | Slides, exercises, YouTube |
| 5 | Compilation | Slides, exercises, YouTube |
| 6 | Sharding | Slides, exercises, YouTube |
| 7 | Training optimization | Slides, exercises, YouTube |
| 8 | Inference optimization | Slides, exercises, YouTube |
| 9 | Attention deep dive | Slides, exercises, YouTube |
| 10 | Pallas optimization | Slides, exercises, YouTube |

## Key Concepts

### Roofline Analysis

Performance modeling technique:
- Identify compute vs memory bounds
- Find arithmetic intensity limits
- Optimize based on bottlenecks
- Reach near-physical limits

### Compilation

JAX compilation optimization:
- XLA compiler
- Kernel fusion
- Operation scheduling
- Hardware-specific optimization

### Sharding

Distributed computing:
- Model parallelism
- Data parallelism
- Tensor sharding
- Multi-chip coordination

### Flash Attention

Attention optimization:
- Memory-efficient attention
- Fused kernels
- Softmax optimization
- Tiling strategies

### Pallas

Lower-level JAX optimization:
- Custom kernels
- Hardware-specific code
- Beyond XLA optimization
- Fine-grained control

## Author Background

**Rafi Witten**: Tech lead on Cloud TPU/GPU Multipod at Google Cloud.

**Achievements**:
- Executed "Largest ML Job" ever demonstrated in public (2023)
- Pioneered "Accurate Quantized Training" (AQT)
- Training with 8-bit integers on TPU v5e
- MaxText development
- Perf/TCO frontier pushing

## Technologies

### JAX

Primary framework:
- Functional programming
- Automatic differentiation
- JIT compilation
- Hardware acceleration (TPU/GPU)

### MaxText

Reference implementation:
- High-performance LLM
- Open-source
- TPU/GPU optimized
- Production-ready

### TPU/GPU

Hardware platforms:
- Google Cloud TPU v5e
- NVIDIA GPUs
- Multipod execution
- Hardware-specific optimization

## Performance Goals

Reach near-physical-limit:
- Maximize compute utilization
- Minimize memory overhead
- Optimize communication
- Efficient scheduling

## Applications

- Production LLM training
- Large-scale inference
- Research experimentation
- Cost optimization (TCO)

## Community

Discord community for:
- Q&A support
- Implementation discussion
- Performance optimization
- Course collaboration

## Related Concepts

- [[roofline-analysis|Roofline Analysis]]
- [[jax-optimization|JAX Optimization]]
- [[llm-sharding|LLM Sharding]]
- [[flash-attention|Flash Attention]]
- [[pallas-kernels|Pallas Kernels]]
- [[model-parallelism|Model Parallelism]]
- [[data-parallelism|Data Parallelism]]
- [[xla-compiler|XLA Compiler]]
- [[quantized-training|Quantized Training]]

## Key Takeaways

1. Performance requires understanding hardware limits
2. Roofline analysis identifies optimization targets
3. Sharding enables distributed scaling
4. Compilation critical for efficiency
5. Custom kernels push beyond framework limits

## Prerequisites

- JAX familiarity
- LLM architecture understanding
- Hardware basics (TPU/GPU)
- Performance optimization concepts

## Resources

- GitHub repository: rwitten/HighPerfLLMs2024
- YouTube recordings (all 10 sessions)
- Slides and exercises
- Discord community

## Sources

- Course by Rafi Witten (Google Cloud TPU/GPU Multipod team)