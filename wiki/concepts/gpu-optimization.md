---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# GPU Optimization

## Definition

GPU optimization in the context of deep learning refers to techniques that maximize the throughput and efficiency of GPU hardware when executing neural network training and inference workloads. This includes algorithmic optimizations (operator fusion, memory layout choices), precision tuning (mixed-precision training, FP8), and systems-level techniques (kernel autotuning, batch size selection) that collectively determine how much of the GPU's theoretical peak performance is actually achieved.

## Key Aspects

- **Batch invariance**: Optimizing GPU kernels for consistent performance across different batch sizes is critical — kernels tuned only for large batches may dramatically underperform on small batches (common in inference), and vice versa. Understanding the interaction between batch size, memory bandwidth, and compute utilization is essential.
- **Inference determinism**: Different GPU configurations, batch sizes, and kernel implementations can produce subtly different results for the same computation due to floating-point non-associativity and kernel scheduling differences — achieving deterministic inference requires careful control of these factors.
- **Real-world throughput**: As documented in FLOPs calculus research, actual GPU throughput is 50-150 teraWFLOP/s per A100 (vs. theoretical peak of 312 TFLOPS), with losses from memory bandwidth bottlenecks (elementwise operations like activations and layer norm), distributed training overhead, and mixed-precision conversion.
- **Kernel selection**: NVIDIA Transformer Engine automatically selects between Flash Attention, cuDNN fused attention, and native implementations based on GPU architecture, sequence length, and model configuration — a practical example of hardware-aware optimization.
- **Architecture-specific tuning**: Hopper (H100) GPUs favor cuDNN fused attention (20-50% faster than Flash Attention), while Ampere (A100) GPUs favor Flash Attention — optimization strategies must be tailored to the target hardware.
- **Horace He's research**: Work on PyTorch kernel optimization and understanding GPU execution patterns has been influential in identifying where practical bottlenecks diverge from theoretical expectations.

## Related Concepts

- [[gpu-throughput]]
- [[fp8]]
- [[data-science-performance]]

## Sources

- [[batch-invariance]]
- [[horace-he]]
- [[inference-determinism]]
