---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Batch Normalization

## Definition
Batch normalization is a technique that normalizes the inputs to each layer of a neural network across a mini-batch, stabilizing and accelerating training. By reducing internal covariate shift — the change in layer input distributions during training — batch normalization enables higher learning rates, reduces sensitivity to initialization, and provides mild regularization.

## Key Aspects
- Normalizes activations across the batch dimension: subtracts batch mean and divides by batch standard deviation, then applies learnable scale and shift parameters
- Enables higher learning rates by making the optimization landscape smoother
- Reduces sensitivity to weight initialization, making deep networks easier to train
- Introduces a slight regularization effect because batch statistics add noise during training
- During inference, uses running averages of mean and variance computed during training
- Interactive implementations available on platforms like TensorTonic for hands-on learning

## Related Concepts
- [[ada-layernorm]]
- [[activation-recomputation]]

## Sources
- [[brandon-rohrer-blog]]
- [[tensortonic]]
