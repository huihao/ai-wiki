---
created: 2026-04-29
updated: 2026-05-09
tags: [compute, machine-learning]
sources: 2
---

# Weight FLOPs

## Definition

Weight FLOPs refer to the computational cost directly attributable to multiplying weight matrices with activation vectors during a neural network's forward and backward passes. In Transformer models, each weight parameter generates exactly 6 FLOPs per training example (2 for forward, 4 for backward), establishing the fundamental relationship C = 6ND that ties compute to model size and data volume.

## Key Aspects

- The Transformer FLOPs equation C = 6ND shows compute scales linearly with both model parameters (N) and training tokens (D)
- Weight FLOPs dominate attention FLOPs in large models: weight operations scale as O(d^2) per layer while attention scales as O(dL), where L is sequence length and d is hidden dimension
- With activation recomputation (gradient checkpointing), weight FLOPs increase to approximately 8ND due to the cost of recomputing forward activations during the backward pass
- Realistic GPU throughput is 50-150 teraWFLOP/s per A100, not the theoretical peak of 312 teraWFLOP/s, due to memory bandwidth bottlenecks and non-matrix operations
- Memory bandwidth often bottlenecks elementwise operations (activations, layer normalization) more than weight FLOPs, making roofline analysis essential for optimization
- Mixed precision training introduces conversion overhead (float32 to bfloat16) that reduces effective throughput below theoretical FLOP counts
- For Mixture-of-Experts (MoE) models, the equation uses active weights rather than total parameters, as only a subset of experts are activated per token
- Weight FLOPs provide a practical framework for estimating training time and cost: HyperCLOVA (82B params, 150B tokens) required 13.4 days on 1024 A100s

## Related Concepts

- [[flops-calculus]]
- [[transformer-scaling]]
- [[gpu-throughput]]

## Sources

- [[the-flops-calculus-of-language-model-training]]
