---
created: 2026-04-29
updated: 2026-05-08
tags: [hardware, optimization, tpu]
---

# Pipelining

## Definition

Pipelining is a hardware optimization technique where multiple operations are executed simultaneously across different stages, rather than waiting for one complete operation to finish before starting the next. Like an assembly line, while one stage processes a part, the previous stage is already working on the next part.

## How It Works

Without pipelining (sequential):
```
Operation A → Operation B → Operation C → Operation A → Operation B → Operation C
```
With pipelining (overlapping):
```
Cycle 1: [A1]
Cycle 2: [A2] [B1]
Cycle 3: [A3] [B2] [C1]
Cycle 4: [A4] [B3] [C2]  ← all stages active
```

Throughput improves by up to 3× (for 3 stages) once the pipeline is full, at the cost of increased latency per individual operation.

## Pipelining in TPUs

In TPU systolic arrays:
- **Stage 1**: Weight loading from memory into PE array
- **Stage 2**: Multiply-accumulate computation
- **Stage 3**: Result write-back to memory or activation buffer

Pipelining allows weight loading for the next layer to overlap with computation of the current layer, eliminating idle cycles between layers.

## Pipelining in Deep Learning Training

### Pipeline Parallelism

For training very large models across multiple GPUs:
- Model is split into stages, each on a different GPU
- Micro-batches flow through the pipeline
- Schedules: GPipe (synchronous), PipeDream (1F1B), Interleaved 1F1B

### Bubble Ratio

Pipeline bubbles are idle periods when stages have no work:
- GPipe: High bubble ratio with few micro-batches
- 1F1B schedule: Reduces bubbles by alternating forward/backward passes
- More micro-batches → lower bubble ratio → higher utilization

## Related Concepts

- [[systolic-array|Systolic Array]] — pipelining is inherent to systolic array operation
- [[double-buffering|Double Buffering]] — complementary technique to hide latency
- [[matrix-multiplication|Matrix Multiplication]] — the operation being pipelined
- [[tpu|TPU]] — Google's pipelined ML accelerator

## Sources

- [[077_tiny-tpu|Tiny TPU]]
- [[tiny-tpu-the-why-and-how]]

## Evolution

- **1960s**: Pipelining introduced in CPU design (IBM Stretch)
- **1980s**: Kung and Leiserson formalized systolic architectures with inherent pipelining
- **2010s**: GPU deep learning pipelines overlap kernel execution
- **2018+**: GPipe and PipeDream brought pipeline parallelism to large-scale model training
- **Current**: Overlapping weight-loading with computation is standard in TPU inference; pipeline parallelism is one of three axes of large-model parallelism (alongside tensor and data parallelism)
