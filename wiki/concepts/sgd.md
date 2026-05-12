---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[gradient-descent]], [[momentum]], [[learning-rate-schedule]], [[batch-normalization]]
---

# Stochastic Gradient Descent

A variant of gradient descent that updates parameters using a single training example (or mini-batch) at a time, introducing noise that can help escape local minima but causes oscillation. Full gradient descent computes the gradient over the entire dataset before each update, which is slow for large datasets. SGD trades convergence stability for speed by computing gradients per-example. Mini-batch SGD uses small batches (50-256 examples) to reduce variance while maintaining computational efficiency. With a decreasing learning rate schedule, SGD converges to local/global minima.
