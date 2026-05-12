---
created: 2026-04-29
updated: 2026-05-08
tags: [fundamentals, mathematics]
---

# Probability

## Definition

Probability theory is the mathematical framework for quantifying uncertainty. In machine learning, probability is essential for understanding random variables, distributions, expectation, variance, maximum likelihood estimation (MLE), and Bayesian inference. Probabilistic models form the foundation of many ML algorithms.

## Core Concepts

### Random Variables and Distributions

- **Discrete**: Bernoulli, Categorical, Poisson — describe countable outcomes
- **Continuous**: Gaussian (Normal), Uniform, Exponential — describe continuous outcomes
- **Joint distributions**: P(X, Y) — probability of combinations
- **Conditional distributions**: P(Y | X) — probability of Y given X

### Key Operations

- **Expectation**: E[X] = Σ x·P(x) — average value
- **Variance**: Var(X) = E[(X - μ)²] — spread of distribution
- **Covariance**: Cov(X, Y) — how two variables move together

### Markov Chains and Information Theory

- **Markov chains**: Model sequences of events where the next state depends only on the current state (memoryless property), foundational to sequence modeling
- **Entropy**: Measures the uncertainty of a distribution; the expected value of -log P(x)
- **Mutual information**: Quantifies shared information between variables; how much knowing one reduces uncertainty about the other
- **LLM connection**: Next-token prediction is conditional probability estimation — the model assigns probabilities to each possible next token given the context

### Bayes' Theorem

```
P(A|B) = P(B|A) · P(A) / P(B)
```
Foundational for classification, generative models, and Bayesian reasoning.

## Applications in Machine Learning

- **Loss functions**: Cross-entropy loss assumes a categorical distribution over classes
- **Generative models**: VAEs model P(X|Z); GANs learn implicit distributions
- **Classification**: Output layer produces a probability distribution via softmax
- **Bayesian inference**: Posterior = Likelihood × Prior / Evidence
- **Sampling**: Used in diffusion models, RL (policy sampling), and data augmentation

## Maximum Likelihood Estimation (MLE)

Find parameters θ that maximize the probability of observed data:
```
θ_MLE = argmax_θ P(data | θ)
```
Equivalent to minimizing negative log-likelihood. Standard training objective for most neural networks.

## Related Concepts

- [[calculus|Calculus]] — integration for continuous probability
- [[optimization|Optimization]] — MLE reduces to optimization
- [[linear-algebra|Linear Algebra]] — multivariate distributions use matrices
- [[loss-function|Loss Functions]] — cross-entropy is a probabilistic loss

## Sources

- [[072_math-for-machine-learning-resources]]
- [[mathematics-for-machine-learning-book]]
- [[auxiliary-material-mathematics-cse]]
- [[a-a-markov]] -- Markov chains, entropy, and mutual information

## Evolution

- **Classical (17th–19th c.)**: Frequency-based probability; gambling and actuarial math
- **Kolmogorov (1933)**: Formal axiomatic foundation
- **Bayesian revival (20th c.)**: Jaynes, Gelman — probability as belief, not just frequency
- **ML adoption**: MLE and Bayesian methods became standard in ML from 1990s onward
- **Current**: Probabilistic programming (Pyro, Stan), Bayesian deep learning, and diffusion models all build directly on probability theory
