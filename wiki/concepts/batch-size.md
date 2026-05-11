---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Batch Size

## Definition

Batch size is the number of training examples processed in a single forward-backward pass during model training, or equivalently the number of concurrent input sequences processed during inference. It is a critical hyperparameter that governs the trade-off between memory usage, computational efficiency, gradient noise, and -- in the inference setting -- whether the system is bottlenecked by memory bandwidth or arithmetic throughput.

## Key Aspects

- During training, larger batch sizes reduce gradient noise (improving convergence stability) but increase memory consumption and may hurt generalization; the optimal batch size scales predictably with model size according to maximal update parameterization (muP)
- Hyperparameter transfer allows batch size and learning rate settings tuned on small models to be transferred directly to larger models when using parameterization-aware scaling rules, avoiding expensive re-tuning at every scale
- During inference, batch size determines whether the system is memory-bandwidth-bound or flops-bound: for a typical GPU like the A100, batches below the arithmetic intensity threshold (~208 tokens for standard transformer attention) are limited by the speed of reading weights from memory, while larger batches shift to compute-limited operation
- Transformer inference arithmetic shows that KV cache memory grows linearly with batch size (2MB per token for a 52B model), requiring more GPUs to maintain capacity as batch size increases
- Critical batch size is the point where increasing the batch size no longer provides meaningful training speedup, beyond which data-parallel communication overhead and diminishing gradient quality gains make larger batches counterproductive
- Continuous batching (dynamic batching) in serving systems adjusts the effective batch size at runtime to maximize GPU utilization by adding and removing sequences as they complete, avoiding idle compute from fixed-size batching
- Small-batch and large-batch regimes have distinct latency equations: memory-bound latency scales with weight size / (N * memory_bandwidth), while flops-bound latency scales with 2 * P * B / (N * arithmetic_flops)

## Related Concepts

- [[hyperparameter-optimization]]
- [[hyperparameter-transfer]]
- [[maximal-update-parameterization]]
- [[critical-batch-size]]
- [[large-batch-training]]
- [[continuous-batching]]
- [[kv-cache]]
- [[tensor-parallelism]]

## Sources

- [[hyperparameter-transfer]]
- [[kipply]]
- [[maximal-update-parameterization]]
- [[transformer-inference-arithmetic]]
