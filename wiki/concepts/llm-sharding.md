---
title: "LLM Sharding"
created: "2026-04-28"
tags: ["distributed", "parallelism", "training"]
---

# LLM Sharding

## Definition

Distributing LLM model across multiple devices (TPUs/GPUs) for parallel training and inference.

## Why Sharding Needed

### Model Size Problem

Large LLMs exceed single device memory:
- GPT-4: ~1.8T parameters
- Llama-3-405B: 405B parameters
- Single GPU: 24-80GB memory
- Cannot fit entire model

### Solution

Split model across devices:
- Each device holds portion
- Collaborate for computation
- Aggregate results
- Scale to larger models

## Sharding Types

### Data Parallelism

**Concept**: Replicate model, split data.

**Implementation**:
- Each device has full model copy
- Different data batches per device
- Compute independently
- Aggregate gradients

**Pros**:
- Simple implementation
- Easy scaling
- Works for small models

**Cons**:
- Requires model fit on single device
- Memory redundant copies
- Communication overhead (gradient sync)

**Limit**: Model must fit on one device.

### Model Parallelism

**Concept**: Split model, same data.

**Implementation**:
- Model partitioned across devices
- Each device computes partial result
- Results communicated between devices
- Single batch processed collaboratively

**Types**:

**Pipeline Parallelism**:
- Split by layers (layer groups per device)
- Data flows through pipeline
- Sequential processing

**Tensor Parallelism**:
- Split individual operations (matrix splits)
- Parallel computation within operation
- More complex, higher communication

**Pros**:
- Handles models larger than single device
- Enables training huge models

**Cons**:
- Complex implementation
- High communication overhead
- Pipeline bubbles (idle time)

### Hybrid Parallelism

**Concept**: Combine data and model parallelism.

**Implementation**:
- Model parallelism for size
- Data parallelism for scaling
- 3D parallelism (data + pipeline + tensor)

**Example**:
- 8-way tensor parallelism
- 4-way pipeline parallelism
- 16-way data parallelism
- Total: 512 devices

**Pros**:
- Maximum scaling
- Handles largest models
- Balanced communication

**Cons**:
- Most complex
- Requires careful tuning
- Network topology critical

## JAX Sharding

### JAX Approach

Functional sharding:
- `jax.sharding` module
- `Mesh` for device topology
- `PartitionSpec` for tensor partitioning
- Automatic sharding propagation

### Mesh

Device topology definition:
```python
from jax.sharding import Mesh

# 2D mesh: 4 rows × 2 cols = 8 devices
mesh = Mesh(
    devices=jax.devices(),
    axis_names=('data', 'model')
)
```

### PartitionSpec

Tensor partitioning specification:
```python
from jax.sharding import PartitionSpec

# Partition weights across 'model' axis
ps = PartitionSpec('model', None)

# Apply sharding
sharded_weights = jax.device_put(weights, mesh, ps)
```

### Automatic Sharding

JAX propagates sharding:
- Define input sharding
- Operations shard automatically
- Compilation handles communication
- Optimal placement

## Sharding Strategies

### Layer-wise Sharding

**Approach**: Split layers across devices.

**Implementation**:
- Device 1: Layers 1-10
- Device 2: Layers 11-20
- Device 3: Layers 21-30
- etc.

**Communication**: Between layer groups.

**Use case**: Pipeline parallelism.

### Tensor-wise Sharding

**Approach**: Split matrices/tensors.

**Implementation**:
- Matrix multiplication A × B
- Split A across rows (devices)
- Split B across columns
- Compute partial products
- Reduce results

**Communication**: All-reduce for aggregation.

**Use case**: Tensor parallelism.

### Attention Sharding

**Attention parallelism**:
- Split heads across devices
- Each device computes subset of heads
- Concatenate results
- Natural parallelism in attention

**Example**:
- 32 attention heads
- 8 devices
- 4 heads per device

## Communication Patterns

### All-Reduce

Aggregate values across devices:
- Each device has partial result
- Sum/max/avg across all devices
- All devices receive final result

**Use case**: Gradient aggregation in data parallelism.

### All-Gather

Collect values from all devices:
- Each device has slice
- Gather all slices
- Each device gets full tensor

**Use case**: Collecting partitioned results.

### Reduce-Scatter

Reduce then scatter:
- Aggregate partial results
- Scatter final across devices
- Each device gets different slice

**Use case**: Gradient reduction + scattering.

### Send/Recv

Point-to-point communication:
- Device A sends to device B
- Direct communication
- Pipeline stages

**Use case**: Pipeline parallelism.

## Performance Considerations

### Communication Overhead

**Problem**: Communication slower than compute.

**Impact**: Limits scaling efficiency.

**Optimization**:
- Overlap compute and communication
- Reduce communication volume
- Efficient collectives

### Load Balancing

**Problem**: Uneven work distribution.

**Impact**: Some devices idle, others overloaded.

**Optimization**:
- Balanced partitioning
- Dynamic scheduling
- Pipeline bubble reduction

### Memory Efficiency

**Problem**: Redundant storage.

**Impact**: Memory overhead from sharding.

**Optimization**:
- Minimize duplication
- Activation checkpointing
- Efficient storage

## Tools

### JAX Profiler

Profile sharded execution:
- Communication timing
- Compute timing
- Memory usage per device
- Bottleneck identification

### XLA Compiler

Optimize sharded computation:
- Communication scheduling
- Operation placement
- Kernel fusion across shards
- Efficient collectives

### TPU/GPU Tools

Hardware-specific profiling:
- TPU Profiler (Google Cloud)
- Nsight Systems (NVIDIA)
- Network tracing
- Memory tracing

## Best Practices

### 1. Start Simple

Begin with data parallelism:
- Easy to implement
- Quick scaling
- Understand baseline

### 2. Profile First

Measure before optimizing:
- Where is bottleneck?
- Compute vs communication?
- Memory vs bandwidth?

### 3. Incremental Complexity

Add model parallelism if needed:
- Data parallelism limit: model size
- Add pipeline parallelism
- Add tensor parallelism
- Hybrid approach

### 4. Balance Communication

Minimize communication:
- Sharding strategies
- Communication overlap
- Efficient collectives

## Related Concepts

- [[high-performance-llms-2024|High Performance LLMs 2024]]
- [[roofline-analysis|Roofline Analysis]]
- [[model-parallelism|Model Parallelism]]
- [[data-parallelism|Data Parallelism]]
- [[tensor-parallelism|Tensor Parallelism]]
- [[pipeline-parallelism|Pipeline Parallelism]]
- [[jax-sharding|JAX Sharding]]

## Sources

- [[high-performance-llms-2024|High Performance LLMs 2024]]