---
created: 2026-04-28
updated: 2026-04-28
tags: [source, notes, deep-learning, mathematics, jax, rl]
sources: 1
---

# ickma.dev — Deep Learning and Math Notes

## Metadata

- **Author**: ickma
- **Date**: 2026-04-27
- **URL**: https://ickma2311.github.io/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/math/On this page.md`

## Summary

A growing collection of structured study notes and visual explanations on deep learning and mathematics. Focuses on clarity, reproducibility, and long-term memory. Covers Deep Learning book, research papers, JAX ecosystem, RL, hardware-software codesign, and mathematical foundations.

## Content Areas

### Deep Learning Book (Goodfellow)

64 chapters of notes on Ian Goodfellow, Yoshua Bengio, and Aaron Courville's Deep Learning book.

**Recent Chapters**:
- **Chapter 20**: Deep Generative Models - RBMs, VAEs, GANs, autoregressive models
- **Chapter 19**: Approximate Inference - ELBO optimization, EM, variational updates
- **Chapter 18**: Partition Function - Energy-based models, contrastive divergence, score matching
- **Chapter 17**: Monte Carlo Methods - Importance sampling, Gibbs sampling, tempering

### Papers in Deep Learning

6 notes focusing on key ideas, math intuition, and practical takeaways.

**Papers Covered**:
- Generative Adversarial Networks (GANs) - minimax game, optimal discriminator
- Why TPU Is Fast for Dot Product - systolic-array MMU, ASIC specialization
- Transformer: Attention Is All You Need - positional encoding, multi-head attention
- Attention: The Origin - learnable alignment, dynamic context vectors

### JAX Ecosystem

2 notes on JAX and its libraries.

**Topics**:
- Introducing Flax NNX - stateful model API with explicit RNG/JIT/gradients
- JAX AI Stack - How JAX, XLA, Flax, Optax, Orbax, Grain fit together

### Reinforcement Learning

6 course notes from classical RL to LLM alignment.

**Lectures**:
- David Silver RL Course Lecture 5: Model-Free Control - epsilon-greedy, Sarsa, Q-learning
- CMU Advanced NLP: RL for Language Models - reward functions, PPO, KL regularization
- David Silver RL Course Lecture 4: Model-Free Prediction - Monte Carlo, TD learning
- David Silver RL Course Lecture 3: Planning by Dynamic Programming - policy/value iteration

### ML Hardware-Software Codesign

6 notes on efficient AI systems with compression, deployment, and specialized hardware.

**Topics**:
- Neural Architecture Search (Part I) - search spaces, elastic scaling, RL/evolution methods
- Quantization (Part II) - PTQ granularity, AdaRound, QAT, binary/ternary quantization
- Quantization (Part I) - Low-bit arithmetic, numeric formats, K-means/linear quantization
- Pruning and Sparsity (Part II) - Layer-wise ratios, AMC, NetAdapt, hardware systems
- Pruning and Sparsity (Part I) - L0 constraint, unstructured vs structured sparsity

### Theory-to-Repro

1 note on low-level ML understanding through derivations and code.

**Example**: Linear Regression via Three Solvers (pseudo-inverse, convex optimization, SGD)

### Mathematics Foundations

105 items covering probability, information theory, calculus, linear algebra, optimization.

**Topics**:
- MIT 6.041 Probability: Counting - binomial coefficients, partition-based counting
- Oxford Information Theory - entropy, KL divergence, mutual information, Gibbs inequality
- MIT 6.041 Probability: Independence - pairwise vs mutual independence

## Key Themes

- **Structured Notes**: Organized for long-term memory and reproducibility
- **Visual Explanations**: Focus on clarity through diagrams and intuition
- **Deep Understanding**: Derivations and math intuition over quick tutorials
- **Comprehensive Coverage**: From foundations to frontier research
- **Practical Focus**: Hardware-software codesign, real implementations

## Related Concepts

- [[deep-learning]]
- [[generative-models]]
- [[transformer]]
- [[gan]]
- [[jax]]
- [[flax]]
- [[reinforcement-learning]]
- [[quantization]]
- [[pruning]]
- [[neural-architecture-search]]
- [[information-theory]]

## Related Entities

- [[ickma]]
- [[ian-goodfellow]]
- [[yoshua-bengio]]
- [[aaron-courville]]
- [[david-silver]]

## Sources

- [ickma.dev Notes](https://ickma2311.github.io/)

## Evolution

- 2026-04-28: Initial creation from personal notes site