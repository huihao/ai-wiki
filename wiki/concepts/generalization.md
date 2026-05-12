---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning, theory]
sources: 2
---

# Generalization

## Definition
Generalization is the ability of a machine learning model to perform well on unseen data that differs from the training set. It is the central goal of machine learning: a model that perfectly memorizes training data but fails on new inputs has not learned the underlying patterns, while a model that generalizes captures the true structure of the data-generating process.

## Key Aspects
- The bias-variance tradeoff governs generalization: overly simple models underfit (high bias), overly complex models overfit (high variance)
- Regularization techniques (dropout, weight decay, early stopping, data augmentation) improve generalization by constraining model complexity
- Diffusion models achieve generalization through iterative denoising, learning the score function of the data distribution
- Training on more diverse data generally improves generalization but increases computational cost
- Distribution shift between training and deployment data is the primary cause of generalization failure
- Cross-validation provides estimates of generalization performance during development
- The double descent phenomenon shows that very overparameterized models can generalize well, challenging classical bias-variance intuition
- LLMs generalize through in-context learning: performing tasks from examples in the prompt without weight updates

## Related Concepts
- [[dropout]]
- [[cross-entropy-loss]]

## Sources
- [[diffusion-model-theory]]
- [[regularization]]
