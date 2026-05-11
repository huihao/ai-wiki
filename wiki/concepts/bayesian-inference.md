---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Bayesian Inference

## Definition
Bayesian inference is a statistical method for updating beliefs about unknown parameters as new data becomes available, using Bayes' Theorem to compute posterior distributions. Unlike frequentist statistics, which treats parameters as fixed unknowns, Bayesian inference treats parameters as random variables with probability distributions, enabling natural incorporation of prior knowledge and uncertainty quantification.

## Key Aspects
- **Prior -> Likelihood -> Posterior**: Start with a prior distribution P(theta), observe data D, compute posterior P(theta|D) = P(D|theta) * P(theta) / P(D)
- **Prior distribution**: Encodes existing belief about parameters before observing data; can be informative (strong prior knowledge) or uninformative (diffuse, letting data speak)
- **Posterior distribution**: The updated belief after observing data; represents the full uncertainty about parameters, not just point estimates
- **Conjugate priors**: Certain prior-likelihood combinations yield analytically tractable posteriors (e.g., Beta-Binomial, Gaussian-Gaussian), enabling closed-form solutions
- **MCMC and variational inference**: When posteriors cannot be computed analytically, Markov Chain Monte Carlo (e.g., NUTS, HMC) or variational methods approximate the posterior
- **Credible intervals**: Bayesian analog of confidence intervals; a 95% credible interval means there is a 95% probability the parameter lies within that range

## Related Concepts
- [[bayes-theorem]] -- the mathematical foundation of Bayesian inference
- [[probability-distributions]] -- the distributions used as priors and posteriors
- [[machine-learning]] -- Bayesian methods applied to learning from data

## Sources
- [[brandon-rohrer-blog]]
