---
created: 2026-04-29
updated: 2026-05-09
tags: [hardware, machine-learning]
sources: 2
---

# Processing Elements

## Definition

Processing Elements (PEs) are the fundamental computational units within a systolic array, each performing a multiply-accumulate operation (multiply input by weight, add to partial sum) in a single clock cycle. In TPUs and similar ML accelerators, PEs are arranged in a grid where data flows rhythmically through the array, enabling efficient matrix multiplication -- the operation that accounts for 80-95% of compute in transformers and 70-80% in CNNs.

## Key Aspects

- Each PE performs multiply (input x weight) + add (partial sum) in one clock cycle
- In a weight-stationary design, weights stay in PEs while inputs flow through and accumulated sums move downward
- Google's TPUv1 uses a 256x256 array of PEs; educational Tiny-TPU uses a 2x2 array
- Inputs and weights must be staggered (delayed by clock cycles) for correct systolic operation
- PEs work in concert: outputs emerge at the bottom row after appropriate delays
- The same PE architecture handles both forward pass (inference) and backward pass (training/backpropagation)
- Tiling splits larger matrices into PE-sized chunks for processing
- Double buffering allows loading next-layer weights into shadow PEs while current layer computes

## Related Concepts

- [[systolic-array]]
- [[matrix-multiplication]]
- [[tpu]]
- [[pipelining]]
- [[backpropagation]]

## Sources

- [[systolic-array]]
- [[tiny-tpu-the-why-and-how]]
