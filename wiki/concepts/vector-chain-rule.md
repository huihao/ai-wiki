---
created: 2026-04-29
updated: 2026-04-29
tags: [deep-learning, mathematics]
sources: 2
---

# Chain Rule (Vector Form)

## Definition

The general rule for differentiating composed functions: the Jacobian of the outer function multiplied by the Jacobian of the inner function. Generalizes the single-variable chain rule to handle functions with multiple parameters and multiple outputs, automatically accounting for all dependency paths.

## Key Details

- **Vector chain rule**: ∂f/∂x = (∂f/∂g)·(∂g/∂x) — Jacobian multiplication
- **Single-variable degeneracy**: When all intermediates are functions of one variable, reduces to dy/dx = (dy/du)·(du/dx)
- **Total derivative variant**: When x affects y through multiple paths, sum contributions from all intermediate variables
- **Element-wise simplification**: When each f_i depends only on g_i and g_i only on x_i, Jacobians become diagonal
- **Foundation of backpropagation**: Neural network training chains Jacobians layer by layer

## Related Concepts

- [[jacobian-matrix]] — Matrix used in the vector chain rule multiplication
- [[gradient]] — Vector of partials propagated via chain rule
- [[automatic-differentiation]] — Computational implementation of the chain rule

## Sources

- [[matrix-calculus-deep-learning]] — Matrix calculus paper by Parr & Howard
