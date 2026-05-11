---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# VPU

## Definition

The Vector Processing Unit (VPU) is a specialized hardware module within a TPU (Tensor Processing Unit) that handles element-wise operations -- bias addition, activation functions, loss computation, and gradient calculations -- unifying functions that would otherwise require separate dedicated hardware blocks.

## Key Aspects

- In the Tiny-TPU design, the VPU replaces what would traditionally be separate bias addition, activation function, loss computation, and gradient computation modules with a single unified vector processing unit.
- The VPU operates on vectors (1D arrays of values) rather than matrices, making it well-suited for element-wise operations that follow matrix multiplications computed by the systolic array.
- Forward pass operations performed by the VPU include: bias addition (broadcasting a bias vector across rows), and activation function application (e.g., LeakyReLU applied element-wise).
- Backward pass operations include: computing activation derivatives, loss derivatives, and weight/input gradient vectors using chain rule computations.
- The weight-stationary systolic array handles matrix multiplications (the bulk of compute), while the VPU handles the vector operations that complete each layer's computation.
- The VPU architecture enables pipelining: while the systolic array computes the next matrix multiplication, the VPU can process element-wise operations for the current layer in parallel.
- In Google's production TPUs, the VPU equivalent handles similar element-wise operations but is scaled to match the much larger systolic array dimensions (256x256 vs. the Tiny-TPU's 2x2).

## Related Concepts

- [[systolic-array]] -- the matrix multiplication engine that the VPU complements
- [[tpu]] -- the overall Tensor Processing Unit architecture containing the VPU
- [[verilog]] -- the HDL used to implement the VPU in hardware

## Sources

- [[tiny-tpu-the-why-and-how]]
