---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Hyperparameter Optimization

## Definition

Hyperparameter optimization (HPO) is the process of finding the best configuration of hyperparameters — parameters set before training that are not learned from data — to maximize model performance. Common hyperparameters include learning rate, batch size, number of layers, hidden dimensions, and regularization strength. HPO is a core topic in the Dive into Deep Learning curriculum.

## Key Aspects

- **Search Space**: The set of all possible hyperparameter combinations; grows exponentially with the number of hyperparameters, making exhaustive search infeasible
- **Grid Search**: Exhaustive search over a predefined grid of values; simple but does not scale to high-dimensional spaces
- **Random Search**: Randomly sample hyperparameter combinations; often more efficient than grid search because some hyperparameters matter more than others
- **Bayesian Optimization**: Build a surrogate model (often a Gaussian process) of the objective function and use it to intelligently select the next configuration to evaluate
- **Learning Rate Scheduling**: The most impactful hyperparameter in many deep learning models; warmup, cosine annealing, and cyclical schedules are common strategies
- **Early Stopping**: Abort training runs that show poor performance early, saving compute for more promising configurations

## Related Concepts
- [[gaussian-processes]]
- [[adaptive-learning-rates]]

## Sources
- [[dive-into-deep-learning]]
