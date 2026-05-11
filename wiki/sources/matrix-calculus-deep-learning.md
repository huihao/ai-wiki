---
created: 2026-04-29
updated: 2026-04-29
url: "https://explained.ai/matrix-calculus/"
title: "The Matrix Calculus You Need For Deep Learning"
tags: [source, mathematics, deep-learning, calculus]
source: unknown
---

# The Matrix Calculus You Need For Deep Learning

**Authors:** Terence Parr (Google, ex-USF) and Jeremy Howard (fast.ai)
**URL:** https://explained.ai/matrix-calculus/
**Printable version:** https://arxiv.org/abs/1802.01528

## Summary

A comprehensive yet accessible explanation of the matrix calculus needed to understand deep neural network training. Starting from calculus 1 prerequisites, the paper derives key rules for computing partial derivatives with respect to vectors, building up to the vector chain rule that underpins backpropagation. The authors emphasize that matrix calculus is "really not that hard" — just a couple of key concepts.

## Key Takeaways

1. **Gradient = vector of partials**: The gradient ∇f organizes all partial derivatives of a scalar function f with respect to a vector x into a horizontal vector.
2. **Jacobian = stack of gradients**: For m functions of n parameters, the Jacobian is an m×n matrix of all possible partial derivatives. Numerator layout (functions vertical, variables horizontal) vs denominator layout (transpose).
3. **Element-wise diagonal condition**: When element-wise operations on vectors produce Jacobians where off-diagonal elements are zero (because fi depends only on wi, not wj), the Jacobian simplifies to a diagonal matrix.
4. **Three chain rules**:
   - **Single-variable**: dy/dx = (dy/du)·(du/dx) — one path from x to y
   - **Single-variable total derivative**: Handles multiple paths; sums contributions from all intermediate variables that are functions of x
   - **Vector chain rule**: ∂f/∂x = (∂f/∂g)·(∂g/∂x) — Jacobian multiplication, the most general form
5. **Automatic differentiation mirrors this process**: Introducing intermediate variables and chaining derivatives is exactly what PyTorch's autograd does under the hood.
6. **Neuron activation derivative**: For a = max(0, w·x + b), the gradient w.r.t. w is either 0 (when ReLU clips) or x (when active).
7. **Loss function gradient**: The gradient of MSE loss w.r.t. weights is a weighted average of inputs, weighted by error terms (target - prediction).
8. **Bias merging**: Append 1 to input vector x̃ = [x, 1], merge w and b into w̃, simplifying activation to f = max(0, w̃·x̃).

## Entities Mentioned

- **Terence Parr** — Google tech lead, ANTLR creator, ex-USF professor
- **Jeremy Howard** — fast.ai founder, deep learning educator
- **Yannet Interian** — USF MS data science faculty (acknowledgement)
- **David Uminsky** — USF MS data science director (acknowledgement)

## Concepts Mentioned

- [[jacobian]] — Matrix of all partial derivatives for vector-valued functions of vectors
- [[gradient]] — Vector of partial derivatives for a scalar function of a vector
- [[chain-rule]] — Decomposing derivatives of composed functions into intermediate derivatives
- [[partial-derivative]] — Derivative with respect to one variable, holding others constant
- [[total-derivative]] — Accounts for all dependencies when intermediate variables are functions of the parameter
- [[element-wise-operations]] — Operations applied independently to each vector element
- [[matrix-calculus]] — Extension of calculus to vector and matrix derivatives
- [[automatic-differentiation]] — Computational method mirroring the chain rule process

## Raw Notes

- Denominator layout (used by most ML libraries) is just the transpose of numerator layout
- The vector chain rule automatically handles total derivatives while maintaining simple notation
- Forward mode: differentiate from x to y; backward mode: differentiate from y to x (what PyTorch uses)
- The derivative operator is distributive and lets us pull out constants
- Mean-squared-error loss gradient: weighted average of inputs, weights are error terms
- Gradient descent recurrence: w = w - α∇w (step opposite to direction of higher cost)
- Reference section at end summarizes all key rules and terminology

## Questions / Follow-ups

- How does this extend to matrix-matrix derivatives (not just vector)?
- How does backpropagation in multi-layer networks chain these Jacobian multiplications?
- Connection to the "matrix calculus" section in the original paper's appendix
