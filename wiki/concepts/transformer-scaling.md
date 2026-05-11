---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 3
---

# transformer-scaling

## Definition

Transformer scaling refers to the mathematical relationship between a transformer model's compute budget, parameter count, and training data volume, formalized by the Transformer FLOPs Equation: C approximately equals 6ND, where C is total compute (FLOPs), N is model size (parameters), and D is the number of training tokens. This equation, derived by Dzmitry Bahdanau, enables back-of-the-envelope calculations for training costs and serves as the foundation for scaling laws that predict how model performance improves with increased compute, parameters, and data.

## Key Aspects

- **The 6ND Equation**: Each weight in a transformer generates exactly 6 FLOPs per training example across the forward and backward passes (2 for forward multiply, 2 for backward multiply, 2 for gradient)
- **Checkpointing Overhead**: Activation recomputation (gradient checkpointing) increases the equation to 8ND, trading compute for memory savings
- **Weight FLOPs Dominate**: In large models, weight matrix operations scale as O(d^2) while attention operations scale as O(dL) where L is sequence length; for typical large models, weight FLOPs are the dominant cost
- **Practical GPU Throughput**: An A100 achieves 50-150 teraWFLOP/s in practice, far below the theoretical peak of 312 TFLOPS, due to memory bandwidth limitations, communication overhead, and non-matrix operations
- **Linear Scaling**: Training time grows linearly with model size given constant throughput, making it straightforward to estimate wall-clock training duration
- **Mixed Precision Impact**: Converting between float32 and bfloat16 adds overhead that reduces effective throughput, though it significantly reduces memory requirements
- **Mixture of Experts Adjustment**: For MoE models, the equation uses active weights rather than total parameters, since only a subset of experts are activated per token
- **Real-World Validation**: HyperCLOVA (82B parameters, 150B tokens) required 13.4 days on 1024 A100s, consistent with the equation's predictions

## Related Concepts

- [[flops-calculus]] -- The mathematical framework for estimating computational requirements
- [[tensor-core]] -- Specialized GPU hardware that accelerates the matrix operations counted by FLOPs
- [[gpu-memory-bandwidth]] -- Often the actual bottleneck rather than raw FLOPs
- [[mixed-precision-training]] -- Training optimization that trades precision for throughput and memory
- [[scaling-laws]] -- Empirical relationships between compute, data, model size, and performance

## Sources

- [[dzmitry-bahdanau]] -- Author of the FLOPs calculus derivation
- [[flops-calculus]] -- Mathematical framework for compute estimation
- [[the-flops-calculus-of-language-model-training]] -- Detailed derivation with practical throughput estimates
