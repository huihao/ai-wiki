---
title: "Roofline Analysis"
created: "2026-04-28"
tags: [hardware, optimization, performance]
---

# Roofline Analysis

## Definition

Performance modeling technique identifying whether code is compute-bound or memory-bound, and how close it is to hardware limits.

## Origin

Developed by Berkeley researchers for analyzing processor performance limits.

## Core Concept

Visual model showing:

- **Peak compute**: Maximum operations per second
- **Peak bandwidth**: Maximum data transfer rate
- **Arithmetic intensity**: Operations per byte transferred

## The Roofline

### Visualization

Graph with:
- X-axis: Arithmetic intensity (ops/byte)
- Y-axis: Performance (ops/sec)

**Roofline shape**:
- Left side: Memory-bound (slope = bandwidth)
- Right side: Compute-bound (flat = peak compute)
- Ridge point: Transition from memory to compute bound

### Interpretation

**Below roofline**: Not at hardware limit (room for optimization).

**On roofline**: At hardware limit (maximally efficient).

**Above roofline**: Impossible (violates physics).

## Arithmetic Intensity

### Definition

```
Arithmetic Intensity = Total Operations / Total Data Movement
```

**Units**: Ops/Byte

### Example

**Matrix multiplication (A × B)**:
- Operations: n³ (n×n matrices)
- Data read: 2n² (reading A and B)
- Data write: n² (writing result)
- Total data: 3n²
- Intensity: n³ / 3n² = n/3

**Large n**: High intensity → compute-bound.

**Small n**: Low intensity → memory-bound.

## Bounds

### Compute-Bound

**Condition**: Arithmetic intensity high.

**Limit**: Peak compute throughput.

**Optimization**: Focus on compute efficiency.

**Example**: Large matrix operations.

### Memory-Bound

**Condition**: Arithmetic intensity low.

**Limit**: Peak memory bandwidth.

**Optimization**: Focus on data movement reduction.

**Example**: Element-wise operations, small matrices.

### Bandwidth-Bound

**Condition**: Transferring more data than computing.

**Limit**: Network, PCIe, memory bandwidth.

**Optimization**: Reduce communication, compress data.

## Application to LLMs

### Training

**Compute-bound operations**:
- Large matrix multiplications
- Forward pass activations
- Backward pass gradients

**Memory-bound operations**:
- Activation loading/storing
- Parameter updates
- Gradient accumulation

### Inference

**Compute-bound**:
- Large batch generation
- Attention computation

**Memory-bound**:
- KV cache loading
- Small batch inference
- Model loading

## Optimization Strategies

### For Compute-Bound

Increase arithmetic intensity:
- Larger matrices
- Kernel fusion (reduce intermediate data)
- Batch processing
- Efficient compute kernels

### For Memory-Bound

Reduce data movement:
- Cache optimization
- Data reuse
- Kernel fusion (eliminate intermediate storage)
- Memory-efficient algorithms (flash attention)

### For Bandwidth-Bound

Reduce communication:
- Communication overlap with compute
- Gradient compression
- Sharding strategies
- Locality optimization

## Roofline in JAX

### XLA Compiler

Automatically applies roofline:
- Fuses compute-bound ops
- Eliminates intermediate storage
- Optimizes memory access
- Schedules for hardware

### Profiling

JAX provides roofline insights:
- Operation timing
- Memory utilization
- Compute utilization
- Bottleneck identification

## Example Analysis

### Attention Mechanism

**Traditional implementation**:
- Compute attention scores (memory-bound)
- Apply softmax (memory-bound)
- Compute weighted sum (memory-bound)
- Multiple intermediate tensors

**Arithmetic intensity**: Low (multiple reads/writes).

**Status**: Memory-bound, below roofline.

### Flash Attention

**Optimized implementation**:
- Fuse all operations
- Tiling for cache locality
- Single-pass algorithm
- Minimal intermediate storage

**Arithmetic intensity**: High (compute per byte increased).

**Status**: Approaching roofline, near-optimal.

## Hardware Considerations

### TPU

**Peak compute**: High (tensor operations optimized).

**Peak bandwidth**: High (HBM).

**Ridge point**: Higher intensity threshold.

**Optimization**: Focus on large tensor ops.

### GPU

**Peak compute**: Very high (many cores).

**Peak bandwidth**: High (HBM2/3).

**Ridge point**: Medium intensity threshold.

**Optimization**: Balance compute and memory.

### CPU

**Peak compute**: Lower (general purpose).

**Peak bandwidth**: Lower (DRAM).

**Ridge point**: Low intensity threshold.

**Optimization**: Cache utilization critical.

## Tools

### JAX Profiler

Analyzes JAX operations:
- `jax.profiler` module
- TensorBoard visualization
- Roofline plots
- Operation breakdown

### Nsight Systems/Nsight Compute

NVIDIA GPU analysis:
- Roofline modeling
- Kernel profiling
- Memory tracing
- Compute metrics

### TPU Profiler

Google Cloud TPU tools:
- Roofline analysis
- Memory utilization
- Compute utilization
- Performance breakdown

## Practical Application

### Step 1: Measure

Profile code to get:
- Operation timings
- Data movement amounts
- Compute counts

### Step 2: Calculate

Compute arithmetic intensity:
```
Intensity = Total Compute Ops / Total Bytes Moved
```

### Step 3: Compare

Compare intensity to roofline:
- Below ridge: Memory-bound
- Above ridge: Compute-bound
- On roofline: Optimal

### Step 4: Optimize

Apply appropriate optimizations:
- Memory-bound: Reduce data movement
- Compute-bound: Increase compute efficiency
- Both: Kernel fusion

## Related Concepts

- [[high-performance-llms-2024|High Performance LLMs 2024]]
- [[flash-attention|Flash Attention]]
- [[jax-optimization|JAX Optimization]]
- [[kernel-fusion|Kernel Fusion]]
- [[arithmetic-intensity|Arithmetic Intensity]]
- [[compute-bound|Compute-Bound]]
- [[memory-bound|Memory-Bound]]

## Key Papers

- "Roofline: An Insightful Visual Performance Model for Multicore Architectures" (Williams et al., 2009)

## Sources

- [[high-performance-llms-2024|High Performance LLMs 2024]]