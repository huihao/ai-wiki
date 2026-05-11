---
created: 2026-04-29
updated: 2026-05-09
tags: [numerical, systems]
sources: 2
---

# Floating-Point Arithmetic

## Definition
Floating-point arithmetic is the representation and manipulation of real numbers using a fixed number of bits with a floating radix point, following the IEEE 754 standard. It enables computers to approximate real-number calculations across a wide dynamic range, but introduces rounding errors and precision limitations that affect numerical reproducibility and batch invariance in machine learning.

## Key Aspects
- IEEE 754 defines formats: FP32 (1 sign + 8 exponent + 23 mantissa), FP16, BF16, FP8
- Floating-point addition and multiplication are not associative: (a + b) + c may differ from a + (b + c)
- This non-associativity causes non-deterministic results in parallel reductions across GPU threads
- Batch invariance (same output regardless of batch size or ordering) is not guaranteed by default
- Reproducibility requires deterministic algorithms: fixed reduction order, synchronized operations, or compensating summation
- FP8 training trades precision for speed and memory, requiring careful loss scaling to prevent underflow
- Catastrophic cancellation occurs when subtracting nearly equal numbers, losing significant digits
- Denormalized numbers handle values too small for normal representation but compute slowly on some hardware

## Related Concepts
- [[fp8-training]]
- [[cuda-kernels]]

## Sources
- [[batch-invariance]]
- [[reproducibility]]
