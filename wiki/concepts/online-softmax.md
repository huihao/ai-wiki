---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Online Softmax

## Definition

Online softmax is an algorithm for computing the softmax function in a single pass over the input data without requiring a two-pass approach, maintaining running statistics (maximum and sum of exponentials) to produce numerically stable results efficiently.

## Key Aspects

- **Single-Pass Computation**: Unlike the standard two-pass softmax (first compute max, then exponentials and sum), online softmax processes elements sequentially while maintaining running maximum and sum, reducing memory bandwidth requirements
- **Numerical Stability**: By tracking the running maximum and rescaling accumulated sums when a new maximum is found, the algorithm avoids the overflow and underflow issues that afflict naive softmax implementations
- **Flash Attention Foundation**: Online softmax is the key insight enabling Flash Attention, where attention is computed in tiled blocks without materializing the full attention matrix, reducing memory from O(N^2) to O(N)
- **Memory Efficiency**: Critical for long-context transformer inference where the full attention matrix cannot fit in GPU memory, online softmax enables computation with constant memory overhead per block
- **Hardware Alignment**: The sequential, stateful nature of online softmax maps efficiently to streaming hardware architectures and GPU memory hierarchies

## Related Concepts

- [[flash-attention]] -- Attention algorithm built on the online softmax principle
- [[softmax]] -- The standard exponential normalization function that online softmax accelerates
- [[attention-mechanisms]] -- Transformer component where online softmax is most impactful
- [[pallas-kernels]] -- Custom JAX kernels often implementing online softmax for performance

## Sources

- [[index]]
