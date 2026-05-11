---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Large-Batch Training

## Definition

Large-batch training is a distributed training strategy that increases the effective batch size by aggregating gradient updates across many GPUs, enabling faster training throughput by reducing communication frequency while processing more data per synchronization step. The key challenge is identifying the optimal batch size that maximizes throughput without degrading model quality.

## Key Aspects

- Two distinct scaling regimes exist: perfect scaling (linear learning rate increase with batch size) and ineffective scaling (beyond a critical batch size, larger batches provide no speedup)
- The critical batch size (gradient noise scale) depends on dataset and task complexity and increases as training progresses
- Llama 3.1 405B used progressively increasing batch sizes: 4M tokens initially, then 8M, then 16M tokens as training advanced
- Ring all-reduce enables efficient gradient aggregation across GPUs without a central coordinator bottleneck
- Memory reduction techniques (gradient accumulation, activation checkpointing, CPU offloading) trade compute for memory, enabling effective large-batch training on hardware with limited memory
- Modern datasets allow extremely large batches before hitting the ineffective scaling regime: ImageNet benefits from tens of thousands of images per batch

## Related Concepts

- [[distributed-training]]
- [[data-parallelism]]
- [[gradient-accumulation]]

## Sources

- [[training-extremely-large-neural-networks]]
