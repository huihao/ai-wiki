---
url: "https://www.mathsisfun.com/algebra/matrix-multiplying.html"
title: "How to Multiply Matrices"
date: "2025-01-01"
description: "Fundamental tutorial on matrix multiplication explaining dot product computation with practical real-world examples."
---

# How to Multiply Matrices

Tutorial covering matrix multiplication fundamentals from scalar multiplication to matrix-matrix operations, with practical examples demonstrating why dot product computation matters.

## Core Operations

### Scalar Multiplication
Single number scaling all matrix elements: scalar × matrix

### Matrix-Matrix Multiplication
**Dot product** of rows and columns:
- Match corresponding elements, multiply, then sum
- 1st row × 1st column → element at position [row 1, col 1]
- Row count of first matrix must match column count of second

### Dimension Rules
- Multiply m×n by n×p → result is m×p
- Inner dimensions (n) must match
- Order matters: AB ≠ BA (non-commutative)

### Identity Matrix
Square matrix with 1s on diagonal, 0s elsewhere:
- A × I = A (preserves original)
- I × A = A

## Why This Method?

**Real-world example**: Pie sales calculation
- Prices matrix [apple $3, cherry $4, blueberry $2]
- Daily sales matrix [Monday: 13,8,6; Tuesday: 9,7,4; etc.]
- Dot product naturally matches price × quantity → total revenue
- Monday: $3×13 + $4×8 + $2×6 = $83

This matching-multiply-sum pattern is fundamental to:
- Attention mechanisms (QK^T computation)
- Linear transformations
- Neural network operations

## Related Concepts

- [[dot-product]] — Core operation matching elements, multiplying, and summing
- [[matrix-multiplication]] — Fundamental operation for linear transformations
- [[scaled-dot-product-attention]] — Attention computation using matrix multiplication

## Applications in Transformers

Matrix multiplication is the foundational operation for:
- Query-Key attention scores: QK^T
- Attention-Value weighted sum: Attention × V
- Weight transformations: W_q × X, W_k × X, W_v × X