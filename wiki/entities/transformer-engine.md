---
url: "https://docs.nvidia.com/deeplearning/transformer-engine/user-guide/examples/attention/attention.html"
date: "2026-01-01"
tags: [nvidia, transformer-engine, attention, flash-attention, cudnn, optimization]
---

# Transformer Engine

NVIDIA's library for optimizing Transformer training with advanced attention implementations and FP8 support.

## Architecture

Framework-agnostic library supporting PyTorch and JAX with specialized GPU kernels for attention computation.

### Attention Backends

**Three backend categories:**

1. **cuDNN Attention**: NVIDIA cuDNN-based fused attention
   - Supports BF16, FP16, FP8
   - Multiple sub-backends for different sequence lengths
   - sm80+ architecture support
   - Hopper (sm90) optimization

2. **Flash Attention**: Dao-AILab integration
   - BF16, FP16 support
   - Linear memory scaling (vs quadratic)
   - Tiling + recomputation techniques
   - PyTorch-only (v2.0)

3. **Framework-native**: Baseline unfused implementations
   - Full precision support (FP32)
   - Any architecture
   - Robust fallback

### Performance Optimization

**Flash Algorithm Innovation:**
- **Tiling**: Decomposes QKV into tiles matching shared memory/register capacity
- **Recomputation**: Stores only softmax normalization factors (linear) vs full matrix (quadratic)
- **Memory**: Linear scaling instead of quadratic in sequence length
- **Bandwidth**: Dramatically reduces global ↔ shared memory transfers

**Backend Selection Logic:**
- sm90 (Hopper): cuDNN > Flash > Native (cuDNN has 20-50% advantage)
- sm80 (Ampere): Flash > cuDNN > Native (Flash outperforms)
- Performance-based automatic selection
- User override via environment variables

### Key Features

**Precision Support:**
- FP8 attention (cuDNN sub-backend 2)
- BF16/FP16 standard
- FP32 in native backend

**Advanced Patterns:**
- Sliding Window Attention (SWA)
- Multi-Query Attention (MQA) / Grouped-Query Attention (GQA)
- Multi-Latent Attention (MLA)
- Context Parallelism
- KV-caching (Flash Attention)
- Paged attention (Flash Attention)

**QKV Layouts:**
- 15 defined layouts across 3 formats
- `bshd`, `sbhd`, `thd` formats
- Supports interleaved and contiguous arrangements
- Variable sequence lengths in batch

**Attention Masks:**
- 7 mask types: no_mask, padding, causal, causal_bottom_right, padding_causal, padding_causal_bottom_right, arbitrary
- Padding via cu_seqlens or attention_mask
- Arbitrary mask conversion to post_scale_bias

**Attention Bias:**
- pre_scale_bias, post_scale_bias, ALiBi
- Custom ALiBi slopes supported
- Bias gradient support (cuDNN workspace optimization)

### FP8 Attention

**Implementation:**
- MatMul in FP8 (efficiency)
- SoftMax in FP32 (numerical accuracy)
- Two API options:
  - `fp8_dpa=True`: FP8 attention with casting
  - `fp8_mha=True`: Experimental, removes casting overhead

### Debugging

Environment variables for backend selection and debugging:
- `NVTE_DEBUG=1`: Enable debugging
- `NVTE_DEBUG_LEVEL=0/1/2`: Log verbosity
- `NVTE_FLASH_ATTN=0/1`: Enable/disable Flash Attention
- `NVTE_FUSED_ATTN=0/1`: Enable/disable cuDNN attention
- Backend logging shows selection logic and config details

## Use Cases

**Training Optimization:**
- Large-scale Transformer training (LLaMA, GPT variants)
- Long-context models (sequence length scaling)
- H100/A100 GPU optimization

**Performance Gains:**
- 1.4-1.6x speedup on H100 vs Flash Attention
- Linear memory scaling enables longer sequences
- FP8 reduces compute cost

## Sources

- [[attention-is-all-you-need-nvidia]]

## Cross-references

### Entities
- [[NVIDIA]]

### Concepts
- [[Flash Attention]]
- [[Attention Mechanism]]
- [[Self Attention]]
- [[KV caching]]
- [[Transformer Architecture]]
- [[FP8]]
- [[GPU Architecture]]
- [[PyTorch]]
- [[JAX]]