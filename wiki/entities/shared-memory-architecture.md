---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept, hardware, memory-architecture, apple-silicon]
sources: 1
---

# Shared Memory Architecture

## Summary
Shared memory architecture refers to a hardware design in which the CPU and GPU share the same physical memory, eliminating the need to copy data between separate CPU and GPU memory spaces. This architecture is a defining feature of Apple Silicon (M1, M2, M3, M4 chips), where the unified memory architecture (UMA) allows both CPU cores and GPU cores to access the same pool of LPDDR memory directly. For local LLM inference, shared memory architecture is particularly advantageous because it allows the GPU to load large model weights without the bottleneck of PCIe data transfer, enabling efficient on-device AI on laptops.

## Key Attributes
- **Type**: hardware architecture
- **Notable for**: Enables efficient local LLM inference by eliminating CPU-GPU data transfer overhead
- **Key implementation**: Apple Silicon Unified Memory Architecture (UMA)
- **Hardware context**: 16" MacBook Pro with M1 Pro — 32GB unified memory, 5.2 TFLOP GPU
- **Impact**: 7B-8B parameter models can run entirely on-device with good performance

## Related Concepts
- [[local-llm]] — local language model deployment that benefits from shared memory
- [[on-device-ai]] — AI inference on user devices enabled by efficient memory architectures
- [[apple-silicon]] — Apple's chip family implementing unified memory
- [[kv-cache]] — attention cache that benefits from fast shared memory access

## Sources
- [[setting-up-local-llm-macos-ollama-continue-vscode]] — practical guide demonstrating shared memory architecture benefits for local LLM inference

## Contradictions / Open Questions
- How unified memory architectures compare to discrete GPU setups (NVIDIA) for larger model inference.
- Whether Apple will expand memory bandwidth to compete with NVIDIA's HBM for AI workloads.
- The trade-off between shared memory simplicity and the raw throughput of dedicated GPU memory (e.g., HBM3e on H100).
