---
created: 2026-04-28
updated: 2026-05-09
tags: [machine-learning, optimization, probabilistic-modeling]
sources: 0
---

# Bayesian Optimization

## Definition

Bayesian optimization is a sequential design strategy for the global optimization of black-box functions that are expensive to evaluate. It builds a probabilistic surrogate model (typically a Gaussian process) of the objective function, then uses an acquisition function to decide where to evaluate next by balancing exploration of uncertain regions with exploitation of promising regions. This makes it particularly effective for hyperparameter optimization of machine learning models, where each evaluation requires a full training run.

## Key Proponents / Critics

- Jasper Snoek — Co-author of influential work on practical Bayesian optimization for deep learning (Hyperband and related work)
- Ryan Adams — Co-author with Snoek on scalable Bayesian optimization methods
- The approach is broadly endorsed but sometimes replaced by simpler methods (random search, early stopping) when computational budgets are tight

## Related Concepts

- [[gaussian-processes]] — The most common surrogate model used in Bayesian optimization
- [[hyperparameter-optimization]] — Bayesian optimization is widely used for tuning hyperparameters of ML models
- [[machine-learning]] — Bayesian optimization is a key tool in the ML practitioner's toolkit
- [[gradient-descent]] — Complementary to gradient-based methods; Bayesian optimization handles non-differentiable objectives
- [[optimization-methods]] — Bayesian optimization is one of many optimization strategies in the broader family

## Related Entities

- [[google-deepmind]] — Researchers at Google Brain/DeepMind have contributed significantly to scalable Bayesian optimization

## Sources

- No wiki source pages currently cover Bayesian optimization directly.

## Evolution

- **1978**: Kushner introduces the basic framework of Bayesian optimization using Gaussian processes
- **2010**: Snoek, Larochelle, and Adams publish "Practical Bayesian Optimization of Machine Learning Algorithms," making the approach widely accessible
- **2012-2015**: Tools like Spearmint and Hyperopt popularize Bayesian optimization for ML hyperparameter tuning
- **2018**: Bayesian optimization integrated into AutoML frameworks (Auto-sklearn, H2O)
- **2020s**: Remains popular but competes with multi-fidelity methods (BOHB, ASHA) that combine Bayesian optimization with early stopping
