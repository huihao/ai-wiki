---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Curriculum Learning

## Definition

Curriculum learning is a training strategy in machine learning where the model is exposed to training examples in a meaningful order -- typically from easy to hard -- rather than randomly shuffling all examples. This mirrors human learning patterns and can improve convergence speed, generalization, and final model performance, particularly for complex tasks.

## Key Aspects

- Training data is ordered by difficulty, starting with simpler examples and progressively introducing more complex ones
- Difficulty can be defined by various metrics: loss value, example length, label noise level, or task complexity
- In reinforcement learning, curriculum learning can involve gradually increasing task difficulty or environment complexity
- Online learning approaches adaptively select which examples to present next based on current model performance
- Particularly effective for tasks with imbalanced difficulty distributions where early training on hard examples wastes compute
- Has been shown to improve both convergence speed and final accuracy compared to random shuffling
- Related to self-paced learning, where the model itself determines the difficulty ordering during training

## Related Concepts

- [[online-learning]]
- [[reinforcement-learning]]
- [[self-paced-learning]]
- [[training-strategies]]
- [[data-ordering]]

## Sources

- [[online-learning]]
