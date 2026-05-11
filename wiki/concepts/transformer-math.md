---
url: "https://jax-ml.github.io/scaling-book/transformers/"
---

# Transformer Math

Mathematical foundations for understanding Transformer computational costs, memory requirements, and performance optimization.

## Overview

Transformer math encompasses the calculations needed to understand and optimize:
- FLOP counts during training and inference
- Memory costs for weights and activations
- Arithmetic intensity for compute vs memory-bound analysis
- KV cache sizing and compression
- Scaling relationships for model parameters

## Core FLOP Calculations

### The 6× Rule

The most famous approximation for Transformer training:

```
Training FLOPs = 6 × num_parameters × num_tokens
```

Breakdown:
- **Forward pass:** 2 NPM FLOPs per matrix multiply
- **Backward pass:** 4 NPM FLOPs (gradient computation)
- **Total:** 6× inference cost during training

### Matrix Multiply Costs

For A[N,P] × B[P,M]:
- Compute: 2NPM FLOPs
- Data transfer: NP + PM + NM bytes
- Compute scales O(N³), data scales O(N²)

This makes larger matmuls easier to saturate compute bandwidth.

## Component Analysis

### MLP Block

Standard SwiGLU MLP with expansion factor F=4D:
```
W_in1: 6BTDF FLOPs, DF params
W_in2: 6BTDF FLOPs, DF params  
W_out: 6BTDF FLOPs, DF params
Total: ~18BTDF FLOPs, 3DF params
```

### Attention Block

Grouped-query attention with N query heads, K KV heads, head dimension H:
```
QK^T: 6BTSNH FLOPs
SV:   6BTSNH FLOPs
QKVO: 24BTDNH FLOPs + 12BT²NH
```

Attention dominates compute when T > 8D.

### Layer Normalization

Negligible cost for first-order estimates: O(BTD) FLOPs.

## Arithmetic Intensity

### Definition

Ratio of FLOPs to bytes transferred:
```
Intensity = FLOPs / Bytes
```

- **Compute-bound:** Intensity > hardware threshold (e.g., 240 for TPUs)
- **Memory-bound:** Intensity < threshold

### Attention Intensity

During prefill (S=T):
```
Intensity = TG/(G+1) = O(T)
```

During generation (T=1):
```
Intensity = SG/(G+S) → G
```

## KV Cache Sizing

### Cache Size Calculation

For int8 KV cache:
```
Size = 2 × S × L × K × H bytes
```

Where:
- S: sequence length
- L: number of layers
- K: KV heads
- H: head dimension

### Example

For 8K context, 64 layers, D=8192:
```
Size = 2 × 8192 × 64 × 8192 = 8 GiB
```

This motivates grouped-query attention (K << N) for memory reduction.

## Mixture of Experts

### MoE FLOPs

With E experts, k active per token:
- **Parameters:** Scale by O(E)
- **Active params:** Scale by k vs dense baseline
- **Batch requirement:** Need B > 120×E/k for compute-bound operation

## Memory Optimization

### Gradient Recomputation

Trade memory for compute:
- **Save all activations:** O(n_layers) memory, 84TB for large models
- **Checkpointing:** Save subset, recompute rest
- **Selective:** Save matmul outputs, recompute attention

### Flash Attention

Achieves constant memory through chunked softmax computation:
```
L_combined = exp(M1-max(M1,M2)) × L1 + exp(M2-max(M1,M2)) × L2
```

Enables arbitrary sequence length without quadratic memory growth.

## Scaling Laws

### Parameter Scaling

Performance improves predictably with:
- More parameters
- More training data
- More compute

### Compute Estimates

```
Training compute ≈ 6 × params × tokens
Inference compute ≈ 2 × params × tokens
```

## Practical Applications

### Hardware Utilization

Example: DeepSeek V3
- 671B total params, 37B active
- 2.79M H800 hours, 14.8T tokens
- Utilization: ~21.7%

### Batch Size Tuning

For MoE compute saturation:
```
Batch > 120 × E / k
```

For DeepSeek (E=256, k=8): B > 3840 tokens

## Key Insights

1. Matrix multiply compute scales better than memory at large sizes
2. Training is 6× more expensive than inference
3. Attention only dominates at very long contexts
4. MoE needs large batches for efficiency
5. Flash Attention breaks quadratic memory scaling
6. Arithmetic intensity determines compute-bound vs memory-bound behavior

## Related Concepts

- FLOP Calculations
- KV Cache
- Flash Attention
- Arithmetic Intensity
- Mixture of Experts
- Scaling Laws