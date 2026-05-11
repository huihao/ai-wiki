---
created: 2026-04-27
updated: 2026-04-27
tags: [source, course, training, inference, jax, tpu]
sources: 1
---

# HighPerfLLMs2024

## Metadata

- **Author**: Rafi Witten (Google Cloud TPU/GPU Multipod tech lead)
- **Date**: 2024
- **URL**: https://github.com/rwitten/HighPerfLLMs2024
- **Fetched**: 2026-04-24
- **Raw file**: `raw/GitHub - rwitten_HighPerfLLMs2024.md`

## Summary

A free 9-session course on building high-performance LLMs from scratch in JAX. Taught by a Google Cloud TPU tech lead who led the "Largest ML Job" ever demonstrated in public (2023) and pioneered Accurate Quantized Training (AQT). Covers roofline analysis, compilation, sharding, profiling, fused attention, and Pallas kernel optimization.

## Key Takeaways

- **Hands-on approach**: Build a full-scale LLM implementation in JAX for both training and inference.
- **Session topics**:
  1. High-performance JAX LLM implementation for training
  2. High-performance JAX LLM implementation for inference
  3. Single-chip rooflines and compilation
  4. Distributed computing via sharding
  5. LLM training optimization (under the hood, rooflines, sharding)
  6. LLM inference optimization (under the hood, rooflines, sharding)
  7. Deep dive into attention: fused attention schedules, softmax, Flash Attention
  8. Pallas: optimizing one level deeper (kernel-level TPU/GPU optimization)
- **Instructor credentials**: Rafi Witten leads Cloud TPU/GPU Multipod at Google, developing MaxText. Demonstrated the world's largest distributed LLM training job on TPU v5e.
- **Complementary to**: [[how-to-scale-your-model]] — while the scaling book is a reference text, this course is hands-on implementation with recorded lectures and exercises.

## Entities Mentioned

- Google Cloud TPU
- Rafi Witten
- [[jax]] — implementation framework
- [[tpu]] — target accelerator

## Concepts Mentioned

- [[model-scaling]] — distributed training at massive scale
- [[llm-leaderboard-artificial-analysis|Roofline Analysis]] — single-chip performance modeling
- [[self-attention|Flash Attention]] — memory-efficient attention mechanism
- Pallas — JAX kernel-level optimization DSL
- MaxText — Google's reference LLM implementation in JAX

## Raw Notes

- The course includes YouTube recordings, slides, and take-home exercises for all 9 sessions.
- Discord community for discussion.
- Good next step for someone who has read the scaling book and wants hands-on practice.
