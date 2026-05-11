---
created: 2026-04-29
updated: 2026-05-08
tags: [machine-learning, mathematics]
---

# Optimization

## Definition

Optimization is the process of finding the best parameters for a model according to some objective function (loss function). In machine learning, optimization typically involves gradient-based methods like gradient descent, stochastic gradient descent (SGD), and adaptive optimizers like Adam. The goal is to minimize the loss function by iteratively updating model parameters in the direction that reduces the loss.

## Key Methods

### Gradient Descent

Computes the full gradient over the entire dataset before a single parameter update:
- Guarantees convergence to a local minimum (for convex problems)
- Computationally expensive for large datasets

### Stochastic Gradient Descent (SGD)

Updates parameters using a single sample or mini-batch:
- Faster, noisier updates
- The noise can help escape local minima
- Learning rate scheduling is critical (step decay, cosine annealing, warm-up)

### Adam (Adaptive Moment Estimation)

Combines momentum (first moment) with RMSProp-style adaptive learning rates (second moment):
- Default optimizer for most deep learning tasks
- Hyperparameters: β₁ (0.9), β₂ (0.999), ε (1e-8)
- Variants: AdamW (decoupled weight decay), LAMB (for large-batch training)

### Second-Order Methods

Use curvature information (Hessian) for faster convergence:
- L-BFGS, Natural Gradient, K-FAC
- Computationally expensive; rare in deep learning at scale

## Learning Rate

The most important hyperparameter in optimization:
- **Too high**: Training diverges or oscillates
- **Too low**: Training is slow or stalls in poor minima
- **Schedules**: Constant, step decay, cosine annealing, linear warm-up + decay
- **Warm-up**: Gradually increase LR at start of training (critical for large Transformers)

## Key Proponents

- [[yann-le-cun|Yann LeCun]] — co-developed backpropagation training methods
- [[diederik-kingma|Diederik Kingma]] — co-inventor of Adam optimizer (2014)

## Related Concepts

- [[calculus|Calculus]] — derivative foundation for gradient computation
- [[loss-function|Loss Functions]] — the objective being minimized
- [[matrix-multiplication|Matrix Multiplication]] — core compute in gradient computation
- [[backpropagation|Backpropagation]] — how gradients flow through networks

## Sources

- [[072_math-for-machine-learning-resources]]
- [[tensortonic|TensorTonic]]
- [[brandon-rohrer-blog|Brandon Rohrer Blog]]

## Evolution

- **Pre-2012**: SGD with manual learning rate tuning was standard
- **2012**: Adam (2014) simplified hyperparameter tuning; became default
- **2017+**: Warm-up schedules became essential for Transformer training
- **2020+**: LAMB/LARS for large-batch distributed training; SAM for better generalization
- **Current**: Optimization research focuses on training stability at scale (100B+ parameters), mixture-of-experts routing, and learning rate transfer across model sizes
