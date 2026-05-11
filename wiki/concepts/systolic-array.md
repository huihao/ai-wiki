---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Systolic Array

## Definition

A systolic array is a grid-like hardware structure consisting of Processing Elements (PEs) connected in a regular pattern, designed for efficient matrix multiplication. Data flows through the array in waves (like systolic blood pressure from heart contractions), with multiple elements computed simultaneously across different PEs.

## Key Proponents / Critics

- [[google|Google]] — Implemented in TPU architecture
- [[tiny-tpu-team|Tiny-TPU Team]] — Educational implementation explaining mechanics

## Architecture

### Processing Elements (PEs)
- Each PE performs multiply-accumulate operation
- Operation: (input × weight) + partial_sum in one clock cycle
- Weights are stationary (weight-stationary design)
- Inputs flow from left to neighboring PE each cycle
- Partial sums flow downward each cycle
- Outputs emerge at bottom row

### Data Flow
- Input matrix: rotated 90°, staggered rows (delayed by clock cycles)
- Weight matrix: transposed, staggered rows
- Staggering ensures correct timing for multiply-accumulate operations
- No mathematical significance to rotation/staggering—purely mechanical requirements

### Example Sizes
- TPUv1: 256×256 systolic array
- Tiny-TPU: 2×2 array for educational purposes

## Related Concepts

- [[tpu|TPU]] — Hardware using systolic arrays
- [[processing-elements|Processing Elements]] — Individual units in the array
- [[matrix-multiplication|Matrix Multiplication]] — Operation optimized
- [[hardware-design|Hardware Design]] — Discipline for creating arrays
- [[pipelining|Pipelining]] — Efficiency technique enabled by array structure

## Sources

- [[tiny-tpu-the-why-and-how|Tiny-TPU: the why and how]]

## Evolution

The name "systolic array" draws inspiration from the human heart: systolic blood pressure results from coordinated heart contractions pushing blood in waves. Similarly, systolic arrays process data through coordinated computational "beats" pushing information through PEs in waves.

Key efficiency: Multiple output matrix elements calculated every clock cycle through parallel processing across PEs. This maximizes throughput compared to sequential computation.

Weight-stationary vs. non-weight-stationary:
- Weight-stationary: Weights stay in PEs, don't move. Used in TPUs.
- Non-weight-stationary: Weights move with inputs. Different trade-offs.

Staggering implementation note: Many online illustrations incorrectly pad consecutive rows with zeros instead of delaying by clock cycles. Correct approach delays data flow without wasting memory on unused zeros.

## Contradictions / Open Questions

**Size vs. flexibility**: Larger arrays (256×256) enable bigger matrix operations but require more hardware. How does array size affect flexibility for various model architectures?

**Communication overhead**: How do communication costs scale with array size?

**Alternative configurations**: Are there better geometric arrangements than grids for specific operations?

**Beyond matrices**: Can systolic arrays efficiently handle operations beyond matrix multiplication?