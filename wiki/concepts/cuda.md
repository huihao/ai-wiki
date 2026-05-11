---
created: 2026-04-28
updated: 2026-04-28
tags: [gpu, parallel-computing]
sources: 0
---

# CUDA

## Definition

CUDA (Compute Unified Device Architecture) is NVIDIA's parallel computing platform and programming model that enables developers to use NVIDIA GPUs for general-purpose processing. It extends C/C++ with keywords like `__global__` for kernel functions and provides APIs for memory management, thread synchronization, and profiling.

## Key Proponents / Critics

- **NVIDIA** — creator and primary maintainer
- **Mark Harris** — NVIDIA developer blogger, CUDA educator

## Related Concepts

- [[pico-gpu|GPU Kernel]] — function running on GPU
- [[agent-builder-memory-system|Unified Memory]] — shared CPU-GPU memory space
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Grid-Stride Loop]] — idiomatic CUDA array processing
- [[feed-forward-network|Thread Block]] — group of threads running on one SM
- [[Streaming Multiprocessor]] — GPU compute unit
- [[agent-builder-memory-system|Memory Prefetching]] — proactive page migration
- [[designing-agentic-ai-systems-web-dev|Nsight Systems]] — NVIDIA profiling tool
- [[pytorch-in-one-hour|PyTorch]] — deep learning framework with CUDA backend

## Sources

- [[cuda|an-even-easier-introduction-to-cuda]] — hands-on CUDA tutorial

## Evolution

- Launched 2006; became essential for deep learning around 2012 (AlexNet)
- Unified Memory (CUDA 6) simplified host-device memory management
- Modern alternatives emerging: Triton (OpenAI), OpenAI's kernel DSL
