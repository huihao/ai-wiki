---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, mathematics]
sources: 1
---

# Jacobian Matrix

## Definition

An m×n matrix containing all possible partial derivatives of m scalar-valued functions with respect to n parameters. When f is a vector of m functions of vector x with n elements, J_ij = ∂f_i/∂x_j. For the identity function f(x) = x, the Jacobian is the identity matrix.

## Key Details

- **Numerator layout**: Functions as rows, variables as columns (used in this wiki)
- **Denominator layout**: Transpose of numerator layout (used by most ML libraries)
- **Diagonal Jacobian**: When element-wise operations produce Jacobians with zero off-diagonals (each f_i depends only on x_i)
- **Shape**: m×n where m = number of functions, n = number of parameters
- **Vector chain rule**: ∂f/∂x = (∂f/∂g)·(∂g/∂x) — Jacobian multiplication

## Related Concepts

- [[gradient]] — Jacobian of a scalar function (horizontal vector)
- [[chain-rule]] — Composing Jacobians for nested functions
- [[partial-derivative]] — Individual element of the Jacobian

## Sources

- [[matrix-calculus-deep-learning]] — Matrix calculus paper by Parr & Howard
