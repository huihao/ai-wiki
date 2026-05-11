---
title: "Quantized Training"
created: "2026-04-28"
tags: [optimization, quantization, training]
---

# Quantized Training

## Definition

Training neural networks using lower-precision arithmetic (e.g., 8-bit integers instead of 32-bit floats) to reduce memory and increase speed.

## Problem

### Standard Training

**Precision**: 32-bit floating-point (float32).

**Memory per parameter**: 4 bytes.

**Example**:
- 7B parameter model: 28GB for parameters
- Plus gradients: 28GB
- Plus optimizer state: 112GB (Adam)
- Total: ~168GB

**Challenge**: Large models exceed device memory.

### High Cost

Float32 expensive:
- Memory bandwidth heavy
- Compute throughput lower
- Energy consumption high
- Hardware underutilized

## Quantization Solution

### Precision Reduction

Use lower precision:
- 16-bit (float16, bfloat16)
- 8-bit (int8)
- 4-bit (int4)

**Memory savings**:
- Float16: 50% reduction
- Int8: 75% reduction
- Int4: 87.5% reduction

### Quantized Training

Train directly in low precision:
- Forward pass quantized
- Backward pass quantized
- Optimizer quantized
- No dequantization to float32

**Result**: Training with 8-bit integers.

## AQT: Accurate Quantized Training

### Definition

Pioneered by Rafi Witten (Google Cloud TPU) for TPU v5e.

**Key achievement**: Train with 8-bit integers without accuracy loss.

### Approach

**Quantization**:
- Weights: int8
- Activations: int8
- Gradients: int8
- Accumulators: higher precision (int32)

**Dynamic scaling**:
- Per-tensor scaling factors
- Adjust during training
- Maintain accuracy
- Handle outliers

### Results

**Memory**: 4x reduction (8-bit vs 32-bit).

**Speed**: Faster compute (int8 ops faster).

**Accuracy**: No loss compared to float32.

**Hardware**: TPU v5e optimized.

## Quantization Methods

### Static Quantization

**Approach**: Fixed quantization scales.

**Process**:
- Calibrate with sample data
- Determine fixed scales
- Apply consistently

**Pros**: Simple, consistent.

**Cons**: May not handle dynamic range.

### Dynamic Quantization

**Approach**: Scales computed per batch/tensor.

**Process**:
- Compute scale each operation
- Adapt to current values
- Recalculate continuously

**Pros**: Handles varying ranges, maintains accuracy.

**Cons**: More compute overhead for scaling.

### Mixed Precision

**Approach**: Mix float16 and float32.

**Process**:
- Most ops in float16
- Critical ops in float32 (loss scaling)
- Master weights in float32
- Compute in float16

**Pros**: Balance speed and accuracy.

**Cons**: Some float32 overhead remains.

## Quantization Mechanics

### Integer Quantization

**Formula**:
```
quantized = round(float_value / scale)
float_value = quantized * scale
```

**Scale**: Determines precision range.

**Example**:
- Scale = 0.1
- Range: -128 to 127 (int8)
- Float range: -12.8 to 12.7

### Scaling Strategies

**Per-tensor**: Single scale for entire tensor.

**Per-channel**: Scale per row/column.

**Per-group**: Scale per small group.

**Accuracy**: Per-channel > per-tensor.

**Memory**: Per-tensor < per-channel.

### Accumulator Precision

**Problem**: Int8 × Int8 → Int16, sum → overflow.

**Solution**: Use higher precision for accumulation:
- Multiply: int8 × int8
- Accumulate: int32
- Output: int8 (with scaling)

**Hardware**: TPUs optimized for int8 multiply, int32 accumulate.

## Challenges

### Accuracy Loss

**Risk**: Quantization loses information.

**Impact**: Model performance degradation.

**Solution**:
- Careful scaling
- Dynamic quantization
- Mixed precision for sensitive ops

### Dynamic Range

**Problem**: Values span wide range.

**Challenge**: Fixed scale can't capture all.

**Solution**:
- Per-channel scaling
- Dynamic scaling
- Outlier handling

### Gradient Quantization

**Problem**: Gradients need higher precision.

**Challenge**: Gradient magnitude varies during training.

**Solution**:
- Loss scaling (float16 training)
- Gradient clipping
- Dynamic gradient quantization

## Hardware Support

### TPU v5e

**Optimized for**: Int8 training.

**Features**:
- Int8 matrix units
- Int32 accumulation
- High throughput
- Efficient scaling

**AQT**: Native support for quantized training.

### NVIDIA GPUs

**Tensor Cores**: Support mixed precision.

**Features**:
- Float16 matrix ops
- Int8 inference
- Mixed precision training

**Limitations**: Less optimized for pure int8 training.

### CPUs

**Support**: Limited int8 compute.

**Use case**: Inference quantization more common.

**Training**: Usually float32 or float16.

## Applications

### Large Model Training

**Benefit**: Fit larger models in memory.

**Example**:
- 70B model float32: 280GB
- 70B model int8: 70GB
- Fits on fewer GPUs

### Training Speed

**Benefit**: Faster compute.

**Example**:
- Float32 ops: Limited throughput
- Int8 ops: 4x throughput (TPU)

### Cost Reduction

**Benefit**: Less memory, faster training → lower cost.

**Impact**: TCO (Total Cost of Ownership) reduced.

### Inference

**Benefit**: Faster, cheaper inference.

**Common**: Post-training quantization for inference.

**Training quantization**: Less common but emerging.

## Best Practices

### 1. Start Mixed Precision

Begin with float16 + float32:
- Easier to implement
- Proven effectiveness
- Widely supported

### 2. Profile Accuracy

Monitor accuracy vs baseline:
- Regular evaluation
- Compare to float32
- Adjust if degradation

### 3. Use Dynamic Scaling

For full int8 training:
- Dynamic per-tensor scaling
- Adjust to value range
- Maintain accuracy

### 4. Accumulator Precision

Ensure proper accumulation:
- Int32 for int8 products
- Prevent overflow
- Hardware must support

## Quantization in High-Performance LLMs

### Course Coverage

[[high-performance-llms-2024|High Performance LLMs 2024]] covers:
- Quantization techniques
- Hardware optimization
- AQT methodology
- Performance analysis

### Rafi Witten Achievement

"Accurate Quantized Training" on TPU v5e:
- First to train large models in int8
- No accuracy loss
- Production-ready
- Cost breakthrough

## Related Concepts

- [[high-performance-llms-2024|High Performance LLMs 2024]]
- [[roofline-analysis|Roofline Analysis]]
- [[llm-sharding|LLM Sharding]]
- [[mixed-precision|Mixed Precision]]
- [[int8-quantization|Int8 Quantization]]
- [[dynamic-scaling|Dynamic Scaling]]

## Key Papers

- "Accurate Quantized Training" (Google Cloud Blog, 2023)
- "Mixed Precision Training" (Micikevicius et al., 2018)

## Sources

- [[high-performance-llms-2024|High Performance LLMs 2024]]