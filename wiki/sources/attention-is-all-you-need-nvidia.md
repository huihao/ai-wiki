---
url: "https://docs.nvidia.com/deeplearning/transformer-engine/user-guide/examples/attention/attention.html"
date: "2026-01-01"
source_type: documentation
tags: [nvidia, attention, flash-attention, cudnn, fp8, optimization, gpu]
---

# Attention Is All You Need! (NVIDIA Transformer Engine Documentation)

Technical documentation for NVIDIA Transformer Engine's attention implementations, covering Flash Attention, cuDNN attention, and optimization techniques.

## Core Innovation: Attention Mechanism

Attention identifies correlation between words, selects important sentence parts, and captures meaningful patterns. The Transformer Engine implements dot product attention with pre-softmax operations (scaling, bias, masking) and post-softmax dropout.

## Backend Implementations

### 1. Flash Attention

**Algorithm breakthrough** (Flash Attention paper [[2]](https://arxiv.org/abs/2205.14135)):
- **Problem**: Attention has quadratic computational and memory complexity to sequence length
- **Solution**: Two techniques reduce memory to linear and improve efficiency

**Tiling:**
- Standard: Process QKV in one step → requires large global memory, high read/write volume
- Flash: Decompose into tiles matching shared memory/register capacity
- Compute softmax one tile at a time

**Recomputation:**
- Standard: Store softmax matrix (quadratic) for backward pass
- Flash: Save only normalization factors (linear)
- Recalculate attention in backward pass
- Bandwidth savings outweigh extra computation

**Performance characteristics:**
- Memory: Linear scaling (vs quadratic)
- Framework: PyTorch only (v2.0)
- Architecture: sm80+ (Ampere, Hopper)
- Precision: BF16, FP16
- Features: KV-caching, paged attention, sliding window
- Strength: Outperforms on Ampere architecture

### 2. cuDNN Attention

**NVIDIA's fused implementation** with multiple sub-backends:

| Sub-Backend | Algorithm | Precision | Sequence Length | Architecture |
|------------|-----------|-----------|----------------|--------------|
| 0 | Non-Flash | BF16/FP16 | ≤512 | sm80, sm90 |
| 1 | Flash | BF16/FP16 | Any | sm80+ |
| 2 | Flash | FP8 | cuDNN 9.0+: Any | sm90+ |

**Performance characteristics:**
- Framework: PyTorch and JAX
- Architecture: sm80+ (Ampere, Hopper)
- Strength: 20-50% advantage on Hopper (sm90) vs Flash Attention
- Features: FP8 support (sub-backend 2), post_scale_bias, all QKV formats without transpose

**cuDNN vs Flash Attention differences:**
- Framework support: cuDNN (PyTorch+JAX) vs Flash (PyTorch only)
- Precision: cuDNN supports FP8, Flash does not
- QKV formats: cuDNN supports all without transpose, Flash needs transpose for `sbhd`
- Bias: cuDNN supports `post_scale_bias`, Flash does not
- KV-caching: Flash supports, cuDNN does not (v2.0)
- Causal mask: Flash uses bottom-right diagonal, cuDNN supports both top-left and bottom-right

### 3. Framework-Native Attention

**Baseline implementation:**
- Precision: BF16, FP16, FP32
- Architecture: Any GPU
- Use: Robust fallback, debugging baseline

## Backend Selection Logic

**Automatic selection based on:**
- Backend availability (model config, sequence length, heads, GPU architecture)
- Backend performance (benchmark-driven)

**Selection order:**
- sm90 (Hopper): cuDNN > Flash > Native
- sm80 (Ampere): Flash > cuDNN > Native
- cuDNN: sub-backend 1 > sub-backend 0

**User control:**
- `NVTE_FLASH_ATTN=0/1`: Enable/disable Flash Attention
- `NVTE_FUSED_ATTN=0/1`: Enable/disable cuDNN attention
- `NVTE_FUSED_ATTN_BACKEND=0/1/2`: Prefer cuDNN sub-backend
- `NVTE_DEBUG=1 NVTE_DEBUG_LEVEL=2`: Show detailed selection logic

## Advanced Features

### QKV Layouts

**15 layouts across 3 formats:**
- `bshd`: Batch-Sequence-Heads-Dimension
- `sbhd`: Sequence-Batch-Heads-Dimension
- `thd`: Total tokens-Heads-Dimension (variable sequence lengths)

**Examples:**
- `qkv_layout=sb3hd`: Sequence-first, interleaved at `h*d` dimension
- `qkv_layout=bshd_bsh2d`: Batch-first, `k,v` interleaved at `d` dimension
- `qkv_layout=thd_thd_thd`: Variable lengths, all contiguous

**Backend support:**
- Flash: 3 formats (all 15 layouts), needs transpose for `sbhd`
- cuDNN: 3 formats (all 15 layouts), no transpose needed
- Native: 2 formats (10 layouts)

### Attention Masks

**7 mask types:**
- `no_mask`: Full attention
- `padding`: Variable-length sequences
- `causal`: Top-left diagonal (autoregressive)
- `causal_bottom_right`: Bottom-right diagonal
- `padding_causal`: Combined
- `padding_causal_bottom_right`: Combined
- `arbitrary`: Custom mask patterns

**Implementation:**
- Padding masks: via `cu_seqlens` (preferred) or `attention_mask` conversion
- Arbitrary mask: Convert to `post_scale_bias` for cuDNN

### Attention Bias

**4 bias types:**
- `no_bias`: Standard attention
- `pre_scale_bias`: Bias before softmax
- `post_scale_bias`: Bias after softmax
- `ALiBi`: Attention with Linear Biases (with/without custom slopes)

**Backend support:**
- Flash: ALiBi via `alibi_slopes` tensor (custom slopes supported)
- cuDNN: ALiBi via boolean flag (vanilla ALiBi only, cuDNN 9.0+)
- Native: Convert ALiBi to `post_scale_bias` utility

### FP8 Attention

**Unique Transformer Engine feature** via cuDNN sub-backend 2:

**Implementation:**
- MatMul operations: FP8 (computational efficiency)
- SoftMax operation: FP32 (numerical accuracy)
- Input/output: BF16/FP16 tensors with internal FP8 computation

**API options:**
- `DelayedScaling.fp8_dpa=True`: Enable FP8 attention with casting
- `DelayedScaling.fp8_mha=True`: Experimental, remove casting overhead
- `NVTE_FP8_DPA_BWD=0`: Disable FP8 for backward pass only

## Performance Benchmarks

**Example results** (H100, sm90):
- test_0 (short seq): cuDNN 1.38x faster than Flash
- test_1 (long seq, causal): cuDNN 1.60x faster
- test_3 (GQA, 8K seq): cuDNN 1.59x faster

## Use Cases

**Optimization targets:**
- Large-scale Transformer training (LLaMA-style models)
- Long-context models (sequence length scaling)
- Multi-Query Attention / Grouped-Query Attention
- FP8 training for cost reduction

**Architecture-specific:**
- Hopper (H100): Prioritize cuDNN attention
- Ampere (A100): Prioritize Flash Attention

## Sources

- [[Arjun Kocher]] research references Transformer internals
- Original papers: [[1]](https://arxiv.org/abs/1706.03762) (Attention Is All You Need), [[2]](https://arxiv.org/abs/2205.14135) (Flash Attention)

## Cross-references

### Entities
- [[NVIDIA]]
- [[Transformer Engine]]
- [[PyTorch]]
- [[JAX]]

### Concepts
- [[Flash Attention]]
- [[Attention Mechanism]]
- [[Self Attention]]
- [[KV caching]]
- [[Transformer Architecture]]
- [[FP8]]
- [[GPU Architecture]]
- [[Sliding Window Attention]]
- [[Multi-head Attention]]
- [[Positional Encoding]]