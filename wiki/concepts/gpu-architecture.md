---
created: 2026-04-28
updated: 2026-05-09
tags: [gpu, hardware, parallel-computing]
sources: 3
---

# GPU Architecture

## Definition

GPU architecture refers to the hardware design of Graphics Processing Units, which are specialized processors optimized for massively parallel computation. The core architecture consists of Streaming Multiprocessors (SMs) containing CUDA cores and Tensor Cores, a hierarchical memory system (registers, shared memory, L1/L2 cache, and global VRAM), and high-bandwidth interconnects. Unlike CPUs, which optimize for single-thread performance with deep pipelines and large caches, GPUs trade individual thread performance for the ability to execute thousands of threads concurrently, making them ideal for the parallel workloads of deep learning training and inference.

## Key Proponents / Critics

- [[nvidia]] — The dominant GPU manufacturer whose CUDA architecture defines the standard for GPU computing
- AMD, Intel, and various startups (Groq, Cerebras) offer alternative GPU and accelerator architectures

## Related Concepts

- [[cuda-architecture]] — NVIDIA's programming model that abstracts the GPU hardware into software-accessible constructs
- [[streaming-multiprocessor]] — The fundamental compute unit within a GPU
- [[warp]] — The 32-thread execution unit scheduled by SMs
- [[gpu-memory-hierarchy]] — The multi-level memory system critical to GPU performance
- [[gpu-performance]] — Performance metrics and analysis specific to GPU architectures
- [[cuda-programming]] — The software interface for programming NVIDIA GPUs
- [[tensor-core]] — Specialized hardware units for matrix operations used in deep learning
- [[deep-learning]] — The primary workload driving modern GPU architecture design

## Related Entities

- [[nvidia]] — Creator of the dominant GPU architecture for AI computing

## Sources

- [[gpu-glossary]] — Comprehensive reference for GPU architecture terminology
- [[how-to-think-about-gpus]] — Practical guide to understanding GPU architecture and programming
- [[an-even-easier-introduction-to-cuda]] — NVIDIA's introductory tutorial on GPU architecture and CUDA programming

## Evolution

- **2006-2007**: NVIDIA introduces CUDA with the Tesla architecture, making GPUs programmable for general computation
- **2010-2012**: Fermi and Kepler architectures increase SM count and introduce features like ECC memory
- **2016-2017**: Pascal and Volta introduce Tensor Cores, specialized for deep learning matrix operations
- **2018-2020**: Turing and Ampere add RT cores and improve Tensor Core capabilities with mixed precision
- **2022**: Hopper architecture introduces the Transformer Engine and FP8 support, optimized for transformer models
- **2024-2025**: Blackwell architecture pushes further with next-generation Tensor Cores, NVLink scaling, and specialized support for inference workloads
