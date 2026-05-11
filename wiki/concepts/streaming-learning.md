---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Streaming Learning

## Definition

Streaming learning (also called online learning) is a machine learning paradigm where models are continuously updated as new data arrives one observation at a time or in small batches, without requiring access to the full historical dataset. This approach is essential for applications where data is generated continuously (e.g., sensor feeds, financial markets, clickstream analytics) and where models must adapt to distribution drift in real time.

## Key Aspects

- **Single-pass processing**: Each data point is processed once and then discarded, enabling constant memory usage regardless of dataset size — critical for resource-constrained or high-velocity environments.
- **Incremental model updates**: Parameters are updated after each example or mini-batch using online variants of gradient descent, eliminating the need for expensive full-dataset retraining.
- **Concept drift adaptation**: Streaming learners naturally adapt to changes in the underlying data distribution over time, making them robust to non-stationary environments where batch models would degrade.
- **Regret minimization framework**: Theoretical analysis often uses the regret framework, measuring the difference between the learner's cumulative loss and the best fixed decision in hindsight — driving the design of algorithms like online gradient descent and multiplicative weights.
- **Trade-offs**: Streaming methods trade some statistical efficiency (compared to batch methods that see all data) for computational efficiency, memory economy, and adaptability.
- **Applications**: Real-time recommendation systems, fraud detection, network intrusion detection, financial trading, IoT sensor analytics, and adaptive A/B testing.

## Related Concepts

- [[online-learning]]
- [[streaming-machine-learning]]
- [[stochastic-gradient-descent]]

## Sources

- [[online-learning]]
