---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# GPU Throughput

## Definition

GPU throughput in deep learning refers to the actual rate at which a GPU processes computational operations during training or inference, measured in floating-point operations per second (FLOPS) or tokens per second for language models. It is a critical determinant of training time and cost, and is governed by the interplay of model architecture, data layout, memory bandwidth, and kernel efficiency — with practical throughput typically far below the theoretical peak.

## Key Aspects

- **Transformer FLOPs Equation**: C approximately equals 6*N*D (where N is parameters, D is training tokens) — each weight generates 6 FLOPs per example across forward and backward passes, providing a direct link between compute requirements and throughput.
- **Practical vs. theoretical peak**: A100 GPUs achieve 50-150 teraWFLOP/s in practice (vs. 312 TFLOPS theoretical peak), with losses from memory bandwidth bottlenecks, non-matrix operations (activations, layer norm), and distributed training overhead.
- **Dzmitry Bahdanau's FLOPs calculus**: This framework provides realistic throughput estimates for training large models — e.g., HyperCLOVA (82B parameters, 150B tokens) took 13.4 days on 1024 A100 GPUs, translating to approximately 100 TFLOP/s sustained throughput.
- **Memory bandwidth as bottleneck**: Elementwise operations (layer normalization, activation functions, dropout) are limited by memory bandwidth rather than compute — they move data without doing substantial arithmetic, creating regions of the forward pass where the GPU's compute units sit idle.
- **Weight FLOPs dominate**: In large Transformers, weight matrix multiplications (O(d^2) per layer) dominate attention FLOPs (O(dL) per layer), meaning that the dominant optimization targets are weight-related operations like GEMM (general matrix multiply).
- **Throughput drives cost**: Training time is directly proportional to model size given constant throughput, making throughput the key variable in estimating training budgets — organizations must choose between accepting longer timelines or investing in more GPUs.

## Related Concepts

- [[gpu-optimization]]
- [[fp8]]
- [[gradient]]

## Sources

- [[dzmitry-bahdanau]]
- [[flops-calculus]]
- [[the-flops-calculus-of-language-model-training]]
