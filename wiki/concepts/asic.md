---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# ASIC

## Definition
An ASIC (Application-Specific Integrated Circuit) is a custom-designed chip optimized for a single, specific task rather than general-purpose computing. In machine learning, TPUs (Tensor Processing Units) are the most prominent ASICs, purpose-built to accelerate the matrix multiplications that dominate 80-95% of transformer compute and 70-80% of CNN compute.

## Key Aspects
- **Purpose-built**: Unlike general-purpose GPUs, ASICs are designed from the ground up for one workload, achieving much higher efficiency for that task
- **Systolic array core**: ML ASICs like TPUs use a grid of Processing Elements (PEs) performing multiply-accumulate operations in a weight-stationary dataflow
- **Custom ISA**: The Tiny-TPU project demonstrates a 94-bit custom instruction set controlling data flow through the systolic array, unified buffer, and vector processing unit
- **Double buffering**: Shadow buffers load the next layer's weights while the current layer computes, hiding latency
- **Training and inference**: ASICs can support both forward and backward passes, as demonstrated by the Tiny-TPU project solving XOR via backpropagation
- **Tradeoff**: ASICs deliver exceptional performance per watt for their target workload but cannot be repurposed, unlike GPUs

## Related Concepts
- [[systolic-array]] -- the computational heart of ML ASICs
- [[tpu]] -- Google's production ASIC for machine learning
- [[matrix-multiplication]] -- the core operation ASICs are optimized for

## Sources
- [[tiny-tpu-the-why-and-how]]
