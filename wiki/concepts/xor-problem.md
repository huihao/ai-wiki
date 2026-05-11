---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, neural-network]
sources: 1
---

# XOR Problem

## Definition

The XOR problem is a classic example demonstrating the limitations of single-layer neural networks (perceptrons). The XOR (exclusive-or) function outputs 1 when the inputs differ and 0 when they are the same. A single-layer perceptron cannot learn XOR because the problem is not linearly separable, requiring at least one hidden layer with non-linear activation to solve it.

## Key Aspects

- XOR truth table: inputs (0,0) and (1,1) map to 0; inputs (0,1) and (1,0) map to 1.
- A single-layer perceptron cannot find a linear decision boundary that separates the two output classes, proving that non-linear activation functions are necessary.
- Solved by a two-layer feed-forward network (one hidden layer) with sigmoid activation; backpropagation computes the required weight updates.
- Historically significant: the XOR problem contributed to the first "AI winter" when Minsky and Papert (1969) showed perceptrons could not solve it, discouraging neural network research for years.
- Serves as a standard pedagogical example for teaching backpropagation: the full forward-backward pass can be traced numerically by hand.
- Modern networks solve XOR trivially, but it remains a canonical example of why depth and non-linearity matter in neural network design.

## Related Concepts

- [[backpropagation]] -- the algorithm used to train networks that solve XOR
- [[activation-function|Activation Functions]] -- sigmoid/ReLU non-linearity required for the solution
- [[feed-forward-network|Feed-Forward Network]] -- the architecture used to solve XOR
- [[vanishing-gradients|Vanishing Gradients]] -- a challenge when training on deeper variants

## Sources

- [[understanding-backpropagation]]
