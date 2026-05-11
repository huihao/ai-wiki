---
created: 2026-04-28
updated: 2026-05-09
tags: [attention, cuda, deep-learning, optimization]
sources: 4
---

# Flash Attention

## Definition
Flash Attention is an IO-aware exact attention algorithm that dramatically accelerates Transformer attention by minimizing reads and writes to GPU high-bandwidth memory (HBM). It achieves this by tiling the attention computation so that blocks of the query, key, and value matrices fit in fast on-chip SRAM, computing attention in a fused manner that avoids materializing the full N x N attention matrix in HBM. Despite being mathematically equivalent to standard attention, Flash Attention is 2-4x faster and uses significantly less memory, scaling linearly rather than quadratically in sequence length for memory.

## Key Proponents / Critics
- Tri Dao — creator of Flash Attention (v1 and v2), researcher at Stanford and Princeton
- Chris Re — Stanford professor and collaborator on the Flash Attention project
- [[nvidia]] — Flash Attention is integrated into cuDNN and optimized for NVIDIA GPU architectures

## Related Concepts
- [[attention-mechanisms]] — Flash Attention is an optimized implementation of scaled dot-product attention
- [[kernel-fusion]] — Flash Attention fuses the entire attention computation into a single CUDA kernel
- [[kv-cache]] — Flash Attention can operate over KV cache in the decode phase
- [[long-context-llms]] — Flash Attention makes long-context models practical by reducing memory from quadratic to linear
- [[roofline-model]] — Flash Attention is designed to be memory-bandwidth optimal, analyzed via the roofline model
- [[gpu-memory-hierarchy]] — the algorithm exploits the hierarchy between SRAM and HBM
- [[cuda-kernels]] — Flash Attention is implemented as a custom CUDA kernel

## Related Entities
- [[pytorch]] — Flash Attention is available via `torch.nn.functional.scaled_dot_product_attention`
- [[nvidia]] — Flash Attention is integrated into NVIDIA cuDNN

## Sources
- [[attention-is-all-you-need-nvidia]] — discusses Flash Attention as a key optimization for Transformer attention
- [[understanding-coding-kv-cache-llms-scratch]] — covers Flash Attention in the context of KV cache optimization
- [[from-kevin-bacon-to-hnsw]] — references attention mechanism optimizations
- [[a-visual-guide-to-attention-variants-in-modern-llms]] — covers Flash Attention as a major attention variant

## Evolution
- **2022**: Flash Attention v1 paper (Dao et al.) introduces the tiling-based exact attention algorithm
- **2023**: Flash Attention v2 improves parallelism across sequence length and reduces non-matmul FLOPs
- **2023**: Integrated into PyTorch 2.0 as the default scaled dot-product attention backend
- **2024**: Flash Attention 3 (Dao et al.) targets NVIDIA Hopper GPUs with asynchronous pipelining and FP8 support
- **2024**: Incorporated into NVIDIA cuDNN as a standard attention kernel
