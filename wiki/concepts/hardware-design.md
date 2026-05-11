---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Hardware Design

## Definition

Hardware design in the context of AI and machine learning refers to the creation of specialized digital circuits (ASICs) optimized for the matrix operations that dominate neural network computation. The most prominent example is the Tensor Processing Unit (TPU), which uses systolic arrays of processing elements to perform multiply-accumulate operations efficiently. Understanding hardware design reveals why certain software optimizations (tiling, pipelining, double buffering) are essential for extracting peak performance.

## Key Aspects

- **Systolic Array**: A grid of processing elements (PEs) where data flows rhythmically through the array; each PE performs multiply-accumulate in one clock cycle, enabling high throughput
- **Weight-Stationary Design**: Weights remain fixed in PEs while inputs flow through; partial sums accumulate downward; this minimizes weight memory access
- **TPU vs. GPU**: TPUs are ASICs (application-specific) for matrix multiplication; GPUs are more general-purpose with thousands of simpler cores
- **Matrix Multiplication Dominance**: 80-95% of transformer compute and 70-80% of CNN compute is matrix multiplication; hardware optimizes for this
- **Pipelining**: Splitting operations across clock cycles to maximize module utilization and increase clock speed
- **Double Buffering**: Loading next-layer weights into a shadow buffer while the current layer computes, halving cycle count
- **Staggering**: Inputs and weights must be delayed by clock cycles to align properly in the systolic array
- **Forward and Backward Pass**: The same systolic array hardware can be used for both inference (forward) and training (gradient computation via backpropagation)
- **Custom Instruction Sets**: TPUs use specialized ISAs (e.g., 94-bit instructions) to control data flow through the array

## Related Concepts

- [[gpu-parallel-computing]]
- [[gpu-memory-hierarchy]]
- [[machine-learning-math]]

## Sources

- [[systolic-array]]
- [[tiny-tpu-the-why-and-how]]
