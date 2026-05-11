---
created: 2026-04-28
updated: 2026-05-09
tags: [mathematics, optimization, training]
sources: 4
---

# Gradient descent

## Definition

Gradient descent is an iterative optimization algorithm that finds the minimum of a function by repeatedly moving in the direction of the steepest descent, computed as the negative [[gradient]] of the loss function. In neural network training, it adjusts model weights proportionally to the gradient of the [[loss-function]] with respect to each weight, scaled by a [[learning-rate]] parameter. The three main variants are batch gradient descent (using the full dataset), stochastic gradient descent ([[stochastic-gradient-descent|SGD]], using one sample), and mini-batch gradient descent (using small subsets). SGD and its adaptive variants ([[adam-optimizer|Adam]], AdaGrad) are the workhorses of modern deep learning.

## Key Proponents / Critics

- [[richard-sutton]] — reinforcement learning pioneer whose work on optimization and the "bitter lesson" emphasizes the importance of compute-efficient optimization
- [[sebastian-raschka]] — has published extensive educational material on practical gradient descent and optimization
- [[geoffrey-hinton]] — pioneered backpropagation-based gradient descent for deep network training
- [[diederik-kingma]] — co-inventor of the [[adam-optimizer]], the most widely used adaptive gradient descent variant

## Related Concepts

- [[backpropagation]] — computes the gradients that gradient descent uses to update weights
- [[stochastic-gradient-descent]] — the mini-batch variant most commonly used in deep learning
- [[adam-optimizer]] — adaptive learning rate method that extends gradient descent
- [[learning-rate]] — the step size hyperparameter controlling how far gradient descent moves per iteration
- [[momentum]] — an enhancement to gradient descent that accelerates convergence
- [[gradient-clipping]] — a technique to prevent instability in gradient descent for deep or recurrent networks
- [[gradient-accumulation]] — simulates larger batch sizes by accumulating gradients before an update step
- [[loss-function]] — the function whose landscape gradient descent navigates
- [[automatic-differentiation]] — the technique that computes gradients for gradient descent
- [[exploding-gradients]] — instability when gradient descent takes too-large steps
- [[vanishing-gradients]] — difficulty when gradients become too small for effective descent
- [[overfitting]] — a risk when gradient descent minimizes training loss too aggressively without regularization

## Related Entities

- [[pytorch]] — framework that implements gradient descent via its autograd engine and optimizers
- [[tensorflow]] — Google's framework with built-in gradient descent optimizers in Keras
- [[jax]] — functional framework where gradient descent is expressed via `jax.grad` transformations

## Sources

- [[essential-ml-equations]] — mathematical formulation of gradient descent update rules
- [[deep-learning-fundamentals]] — foundational treatment of gradient descent in neural network training
- [[machine-learning-glossary]] — glossary entry defining gradient descent and its variants
- [[understanding-backpropagation]] — detailed explanation of how gradients flow for descent updates

## Evolution

- **1847**: Augustin-Louis Cauchy proposes steepest descent for optimization (not yet applied to learning)
- **1944**: Robbins and Monro introduce stochastic approximation, the basis for SGD
- **1986**: Rumelhart, Hinton, and Williams combine backpropagation with gradient descent for neural network training
- **1998**: LeCun demonstrates SGD with momentum for training convolutional networks
- **2010**: AdaGrad introduces adaptive per-parameter learning rates
- **2014**: [[adam-optimizer|Adam]] optimizer combines momentum with adaptive rates, becoming the default in deep learning
- **2015-2017**: LARS and LAMB enable effective gradient descent for very large batch sizes
- **2018-2025**: Nov optimizers (LION, Muon, Sophia) improve on Adam for specific training regimes
