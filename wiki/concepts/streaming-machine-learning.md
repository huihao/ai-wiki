---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Streaming Machine Learning

## Definition

Streaming machine learning is the application of machine learning techniques to continuously arriving data streams, where models must learn, predict, and adapt in real time under constraints of limited memory, single-pass processing, and non-stationary distributions. Unlike traditional batch ML, streaming ML algorithms are designed to handle potentially infinite data sequences with constant resource usage while maintaining competitive predictive performance.

## Key Aspects

- **Regret minimization**: The core theoretical framework — algorithms aim to minimize regret, the cumulative difference between their losses and those of the best fixed model in hindsight, providing worst-case performance guarantees.
- **Online learning algorithms**: Methods like Online Gradient Descent (OGD), Follow the Regularized Leader (FTRL), and Multiplicative Weights Update (MWU) are designed for sequential decision-making with bandit or full-information feedback.
- **Adaptive forgetting**: Mechanisms like exponential decay weighting and sliding windows allow models to weight recent data more heavily, enabling adaptation to concept drift without catastrophic forgetting.
- **Scalability constraints**: Algorithms must operate with O(1) or O(log n) memory per example and sub-linear regret, making them suitable for deployment on edge devices and high-throughput systems.
- **Ensemble approaches**: Online bagging (Oza-Bagging), online boosting, and streaming random forests combine multiple weak learners to achieve robust predictions on non-stationary streams.
- **Evaluation metrics**: Prequential (predict-then-learn) evaluation, cumulative regret, throughput (instances per second), and adaptation speed to distribution changes.

## Related Concepts

- [[streaming-learning]]
- [[online-learning]]
- [[stochastic-gradient-descent]]

## Sources

- [[regret-minimization]]
