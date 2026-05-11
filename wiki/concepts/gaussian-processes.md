---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Gaussian Processes

## Definition

A Gaussian process (GP) is a probabilistic model that defines a distribution over functions, where any finite collection of function values follows a multivariate Gaussian distribution. GPs are specified by a mean function and a covariance (kernel) function, enabling principled uncertainty quantification alongside predictions.

## Key Aspects

- **Non-parametric Model**: GPs make no assumptions about the functional form of the underlying relationship; complexity grows with data
- **Kernel Functions**: The choice of covariance kernel (RBF, Matérn, periodic) encodes prior beliefs about the smoothness and structure of the function
- **Uncertainty Quantification**: GPs naturally provide posterior variance (confidence intervals) with each prediction
- **Computational Cost**: Standard GP inference scales as O(n^3) due to matrix inversion, limiting direct application to large datasets
- **Applications in ML**: Hyperparameter optimization (Bayesian optimization), surrogate modeling, time series forecasting, and as a reference model in the Dive into Deep Learning textbook

## Related Concepts
- [[hyperparameter-optimization]]
- [[generative-modeling]]

## Sources
- [[dive-into-deep-learning]]
