---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Optimization Methods

## Definition

Optimization methods are mathematical algorithms for finding the best solution to a problem by systematically improving candidate solutions according to an objective function, forming the computational backbone of machine learning model training and mathematical modeling.

## Key Aspects

- **Mathematical Framework for LLMs**: DeepSeek Engram explores the mathematical formulations and optimization techniques underlying large language model training, connecting theoretical foundations to practical training methodologies
- **Gradient-Based Methods**: The dominant paradigm for neural network training, including SGD, Adam, and AdamW optimizers that use computed gradients to navigate loss landscapes toward minima
- **Second-Order Methods**: Approaches using curvature information (Hessian, Fisher information) for faster convergence but higher computational cost per iteration
- **Convex Optimization**: Well-understood theoretical foundations for problems with guaranteed global optima, including linear programming, quadratic programming, and constrained optimization
- **Non-Convex Landscape**: Neural network training operates in non-convex loss landscapes where local minima, saddle points, and plateaus complicate optimization, requiring techniques like learning rate scheduling and momentum
- **Model-Specific Techniques**: DeepSeek's approaches demonstrate domain-specific optimization innovations tailored to transformer architectures and large-scale training scenarios

## Related Concepts

- [[neural-network-training]] -- The primary application of optimization methods in deep learning
- [[numerical-algorithms]] -- The computational primitives that optimization methods rely on
- [[neural-scaling-laws]] -- Empirical observations about optimization outcomes at scale
- [[regularization]] -- Techniques that shape the optimization landscape to improve generalization

## Sources

- [[deepseek-engram]]
