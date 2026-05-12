---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
---

# An Overview of Gradient Descent Optimization Algorithms

**Author:** [[sebastian-ruder|Sebastian Ruder]]
**Published:** 2016-01-19
**URL:** https://www.ruder.io/optimizing-gradient-descent/

## Summary

Comprehensive survey of gradient descent variants (batch, stochastic, mini-batch) and optimization algorithms. Covers the challenges of learning rate selection, saddle points, and parameter-specific learning rates. Introduces Momentum, Nesterov Accelerated Gradient, Adagrad, Adadelta, RMSprop, Adam, AdaMax, Nadam, and AMSGrad. Also covers parallel/distributed SGD methods (Hogwild!, Downpour SGD, EASGD) and additional strategies (shuffling/curriculum learning, batch normalization, early stopping, gradient noise). Published as arXiv paper (1609.04747).

## Key Concepts

- [[sgd]] — stochastic gradient descent as the core algorithm
- [[adadelta]] — extension of Adagrad with decaying average
- [[rmsprop]] — adaptive learning rate method by Geoff Hinton
- [[nadam]] — Nesterov-accelerated Adam variant
- [[adamax]] — Adam variant using infinity norm
- [[amsgrad]] — fix for Adam's convergence issues
- [[nesterov-accelerated-gradient]] — look-ahead momentum variant
- [[early-stopping]] — "beautiful free lunch" regularization
- [[learning-rate-schedule]] — annealing and adaptive schedules
- [[hogwild]] — lock-free parallel SGD
- [[momentum]] — the core acceleration technique

## Related Entities

- [[sebastian-ruder]] — author
- [[geoffrey-hinton]] — proposed RMSprop
