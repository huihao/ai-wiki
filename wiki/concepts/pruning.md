---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, model-compression]
sources: 2
---

# Pruning

## Definition

Pruning is a model compression technique that removes redundant or insignificant parameters (weights, neurons, or entire layers) from a neural network to reduce its size, memory footprint, and inference latency while preserving as much accuracy as possible. It exploits the observation that many neural networks are significantly overparameterized and can be sparsified without meaningful performance loss.

## Key Aspects

- Unstructured pruning removes individual weights, creating sparse matrices that may not yield speedup on all hardware
- Structured pruning removes entire channels, filters, or layers, producing smaller dense models that run faster on standard hardware
- L0 constraint methods provide theoretical foundations for determining which parameters to prune
- Layer-wise ratio methods (AMC, NetAdapt) determine per-layer pruning rates based on sensitivity analysis
- Pruning often follows a schedule: train, prune, fine-tune, repeat (iterative magnitude pruning)
- Hardware-software codesign considerations determine which pruning strategies are actually efficient on target hardware
- Sparsity patterns (block-sparse, N:M sparsity) can be hardware-aware to ensure real speedups
- Combined with quantization, pruning enables deployment of large models on resource-constrained devices

## Related Concepts

- [[quantization]]
- [[neural-architecture-search]]
- [[model-compression]]
- [[sparse-models]]
- [[hardware-aware-ml]]

## Sources

- [[ickma]]
- [[ickma-dev-notes]]
