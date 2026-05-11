---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Tiny-TPU: the why and how

## Metadata

- **Author**: Tiny-TPU Team (complete novices)
- **Date**: 2025-08-17
- **URL**: https://www.tinytpu.com/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/Tiny-TPU_ the why and how.md

## Summary

A detailed technical walkthrough of building a TPU (Tensor Processing Unit) from scratch by a team of hardware novices. The project demonstrates both inference and training for a simple neural network solving the XOR problem, covering systolic arrays, pipelining, double buffering, backpropagation, and Verilog implementation.

## Key Takeaways

- TPUs are ASICs (application-specific integrated circuits) optimized for matrix operations in ML
- Matrix multiplications account for 80-95% of compute in transformers, 70-80% in CNNs
- Core component: systolic array of Processing Elements (PEs) performing multiply-accumulate operations
- Weight-stationary design: weights stay in PEs, inputs flow through, accumulated sums move downward
- Forward pass: systolic array computes matrix products, then bias addition, activation functions
- Staggering: Inputs and weights must be staggered (delayed by clock cycles) to make systolic array work
- Pipelining: Operations split across clock cycles to maximize module usage and clock speed
- Double buffering: Shadow buffer loads next layer weights while current layer computes
- Backpropagation: Same architecture used for training with gradient computations via chain rule
- Training uses systolic array for gradient matrix multiplications with tiling for larger matrices
- Unified Buffer (UB): Scratchpad memory storing post-activations, inputs, weights for reuse
- Vector Processing Unit (VPU): Unifies bias, activation, loss, and gradient modules
- Control via 94-bit custom instruction set (ISA)

## Entities Mentioned

- [[google|Google]] — Original TPU designer
- [[tiny-tpu-team|Tiny-TPU Team]] — Novices who built the educational TPU

## Concepts Mentioned

- [[tpu|TPU (Tensor Processing Unit)]] — ASIC for ML matrix operations
- [[systolic-array|Systolic Array]] — Grid of Processing Elements for matrix multiplication
- [[asic|ASIC (Application-Specific Integrated Circuit)]] — Custom chip design
- [[matrix-multiplication|Matrix Multiplication]] — Core operation optimized by TPUs
- [[verilog|Verilog]] — Hardware description language
- [[processing-elements|Processing Elements (PE)]] — Building blocks of systolic array
- [[pipelining|Pipelining]] — Overlapping operations across clock cycles
- [[double-buffering|Double Buffering]] — Loading next data while current executes
- [[backpropagation|Backpropagation]] — Training algorithm using gradients
- [[hardware-design|Hardware Design]] — Creating digital logic for chips
- [[vpu|Vector Processing Unit]] — Unified module for element-wise operations

## Technical Details

### Systolic Array Operation
- 2x2 array for Tiny-TPU (vs. 256x256 in TPUv1)
- Each PE: multiply (input × weight) + add (partial sum) in one clock cycle
- Inputs move right every cycle, sums move down every cycle
- Outputs emerge at bottom row after appropriate delays

### Forward Pass
1. Rotate input matrix 90°, stagger rows
2. Transpose weight matrix, stagger rows
3. Flow through systolic array for X × W^T
4. Add bias vector (broadcast across rows)
5. Apply LeakyReLU activation element-wise

### Backward Pass
1. Compute loss derivative ∂L/∂H (final layer)
2. Compute activation derivative ∂L/∂Z
3. Use matrix identities for weight/input gradients
4. Systolic array computes gradient matrices
5. Tiling splits large matrices into 2×2 chunks
6. Gradient descent updates weights and biases

### Key Optimizations
- Travelling chip enable: Start signal propagates to activate modules in sequence
- Double buffering: Loads next weights during computation (halves cycle count)
- Unified Buffer: Multi-port memory minimizing data contention
- VPU pathway bits: Control signals enable/skip operations selectively

## XOR Problem Example

Network: 2 → 2 → 1 (multi-layer perceptron)
- Input: 4×2 matrix (4 possible XOR inputs, 2 features)
- Layer 1: 2×2 weight matrix + 2×1 bias
- Layer 2: 1×2 weight matrix + 1×1 bias
- Activation: LeakyReLU (α = 0.01 for negative inputs)

Forward pass demonstrates data flow through systolic array with specific numerical examples, bias addition, and activation. Backward pass shows gradient computation through chain rule, weight gradient calculation via systolic array, and gradient descent updates.

## Raw Notes

Design philosophy: "ALWAYS TRY THE HACKY WAY" — try dumb ideas before consulting sources. Goal: reinvent TPU, not reverse-engineer it. Cultivate thinking style rather than relying on AI tools.

Inspired by Sholto Douglas's message: "You don't need permission to make great things."

Learning method: Drawing everything out as first instinct. Visual explanations throughout article.

Hardware time unit: Clock cycle (picoseconds to nanoseconds). Operations execute BETWEEN cycles, not during.

Verilog example: Shows addition module with clock, reset, registers. Values update in sequential cycles, not immediately like software.

Important: This is NOT a 1-to-1 replica of Google's TPU—it's an attempt at re-inventing it from first principles.

Contributors actively seeking pull requests for bug fixes, improvements, and suggestions.

## References

- Understanding Deep Learning (free book, geometry-forward)
- Henry Ko — Technical blog on performant ML systems
- How to Scale Your Model (TPU/JAX guidance)
- How to Optimize a CUDA Matmul Kernel (kernel-level optimizations inspiration)
- Understanding Matrix Multiplication on Weight-Stationary Systolic Architecture
- Sholto Douglas YouTube short on making great things

## Questions / Follow-ups

- How would this design scale to larger models beyond XOR?
- What performance benchmarks compare to real TPUs or GPUs?
- How does tiling affect throughput for production-scale models?
- Could this approach work for transformer architectures?
- What are the limitations compared to Google's production TPU?