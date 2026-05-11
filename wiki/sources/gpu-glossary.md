---
created: 2026-04-28
updated: 2026-04-28
tags: [source, gpu, hardware, glossary]
sources: 1
---

# GPU Glossary

## Metadata

- **Author**: Modal
- **Date**: N/A
- **URL**: https://modal.com/gpu-glossary
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/GPU Glossary.md`

## Summary

A comprehensive glossary of GPU terminology covering device hardware (SMs, Tensor Cores, CUDA Cores), device software (PTX, SASS, CUDA runtime), host software (cuBLAS, cuDNN, NCCL), and performance concepts (roofline model, arithmetic intensity, occupancy, memory coalescing).

## Key Takeaways

- **Hardware**: Streaming Multiprocessors (SMs), Tensor Cores (matrix multiply), CUDA Cores (vector arithmetic), memory hierarchy (HBM → L2 → L1/SMEM → registers).
- **Software**: CUDA programming model (threads → warps → blocks → grids), PTX/SASS compilation pipeline, libraries (cuBLAS, cuDNN, NCCL).
- **Performance**: Roofline analysis identifies whether workloads are compute-bound or memory-bound; arithmetic intensity is the critical metric.

## Entities Mentioned

- [[nvidia]] — GPU architecture and CUDA ecosystem
- [[multimodal-model|Modal]] — hosting the glossary

## Concepts Mentioned

- [[pico-gpu|GPU architecture]] — SM, Tensor Core, CUDA Core
- [[cuda]] — parallel computing platform and programming model
- [[how-to-scale-your-model|Roofline model]] — visual performance model for compute vs. memory bounds
- Arithmetic intensity — FLOPs per byte moved
- [[agent-builder-memory-system|Memory coalescing]] — optimizing memory access patterns for GPU performance
- Occupancy — ratio of active warps to maximum possible warps

## Raw Notes

See raw file for the full structured glossary.

## Questions / Follow-ups

- How do AMD ROCm and Intel oneAPI terminology map to CUDA terms?
