---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Vector Calculus

## Definition

Vector calculus is the branch of mathematics that extends calculus to vector and matrix-valued functions, providing the notation and rules (gradients, Jacobians, divergence, curl, chain rule) needed to differentiate loss functions with respect to model parameters during neural network training.

## Key Aspects

- The gradient is a vector of all partial derivatives of a scalar function with respect to a vector of parameters, pointing in the direction of steepest ascent.
- The Jacobian matrix generalizes the gradient to vector-valued functions, containing all possible first-order partial derivatives arranged in an m-by-n matrix.
- Vector calculus is essential for understanding gradient descent: the weight update w = w - alpha * nabla_w moves parameters opposite to the direction of increasing loss.
- The vector chain rule (df/dx = (df/dg)(dg/dx) as Jacobian multiplication) is the mathematical foundation of backpropagation, enabling efficient gradient computation through arbitrarily deep compositions.
- The MSE loss gradient with respect to weights is a weighted average of inputs, with error terms (target minus prediction) as weights, a result that follows directly from applying vector calculus rules.
- Resources like the "Mathematics for Machine Learning" textbook and 3Blue1Brown's Essence of Calculus series provide accessible introductions to the vector calculus needed for ML.
- Understanding vector calculus helps practitioners debug training failures: knowing that exploding gradients arise from Jacobian products exceeding unit norm motivates techniques like gradient clipping and careful initialization.

## Related Concepts

- [[total-derivative]] -- accounting for all dependency paths when differentiating composed functions
- [[jacobian]] -- the matrix of partial derivatives for vector-valued functions
- [[gradient-descent]] -- the optimization algorithm that uses vector calculus to minimize loss

## Sources

- [[072_math-for-machine-learning-resources]]
