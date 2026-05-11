---
created: 2026-04-28
updated: 2026-04-28
tags: [source, gpu, nvidia, architecture, training, inference]
sources: 1
---

# How to Think About GPUs

## Metadata

- **Author**: Work Done; Now (Jax-ML scaling book)
- **Date**: 2026-01-01
- **URL**: https://jax-ml.github.io/scaling-book/gpus/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How to Think About GPUs.md`

## Summary

Part 12 of the "How To Scale Your Model" book — a deep dive into NVIDIA GPU architecture for ML workloads. Covers SM architecture, memory hierarchy (HBM/L2/SMEM/registers), networking (NVLink/InfiniBand), collectives (NCCL/NVSHMEM), and roofline analysis for data/tensor/pipeline/expert parallelism. Compares GPUs to TPUs throughout.

## Key Takeaways

- **GPU architecture**: 100+ SMs per chip (132 on H100), each with Tensor Cores, CUDA Cores, Warp Schedulers, and SMEM. Much more modular than TPUs.
- **Memory hierarchy**: HBM (80-192GB) → L2 → SMEM/L1 (256kB per SM) → registers (256kB per SM).
- **Networking**: NVLink for intra-node (450GB/s H100, 900GB/s B200), InfiniBand fat tree for scale-out (400GB/s node egress). GB200 NVL72 has 72-GPU NVLink domains with 3.6TB/s node egress.
- **Collectives**: AllGather/ReduceScatter/AllReduce via NCCL. SHARP in-network reductions give ~30% improvement (not theoretical 2x).
- **Rooflines**: DP needs ~2500 tokens/GPU to be compute-bound on H100. TP constrained to ~F/2475 way parallelism. MoE EP has two regimes: small F (1-2 nodes) or large F (arbitrary E-way).
- **DeepSeek V3**: 2048 H800s, 64-way EP, 16-way PP, 2-way DP, 30k tokens/GPU.
- **LLaMA-3**: 16k H100s, 16-way PP, 8-way TP, ~1k tokens/GPU.

## Entities Mentioned

- [[nvidia]] — GPU manufacturer (H100, B200, GB200)
- [[google]] — TPU comparison
- [[deepseek-sparse-attention|DeepSeek]] — DeepSeek V3 training config
- [[meta]] — LLaMA-3 training config

## Concepts Mentioned

- [[streaming-multiprocessor]] — GPU compute unit
- [[nvlink]] — high-bandwidth GPU interconnect
- [[nccl]] — NVIDIA collective communications library
- [[sharp]] — in-network reduction protocol
- InfiniBand — scale-out networking
- [[ai-data-engineer-return-to-basics|Data parallelism]] — sharding data across GPUs
- [[tensor-parallelism]] — sharding layers across GPUs
- [[pipeline-parallelism]] — sharding layers sequentially
- [[strong-scaling]] — ideal scaling regime
- Expert parallelism — MoE-specific sharding
- [[how-to-scale-your-model|Roofline model]] — compute vs communication boundedness

## Raw Notes

See raw file for detailed worked problems and bandwidth calculations.

## Questions / Follow-ups

- How do GB200 NVL72's larger nodes change the optimal parallelism strategy?
