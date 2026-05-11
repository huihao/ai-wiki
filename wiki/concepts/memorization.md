---
created: 2026-04-29
updated: 2026-05-09
tags: [generative, machine-learning]
sources: 1
---

# Memorization

## Definition

Memorization in machine learning refers to the phenomenon where a model learns to reproduce specific training examples rather than learning generalizable patterns. In diffusion models, research from NeurIPS 2025 revealed that memorization follows a predictable two-phase dynamic: an early generalization phase (dataset-independent) followed by a later memorization phase (linear in dataset size), with implicit dynamical regularization naturally limiting memorization in overparameterized settings.

## Key Aspects

- Two timescales identified in diffusion training: early phase where the model generalizes, and later phase where memorization grows linearly with dataset size
- Implicit dynamical regularization: training dynamics naturally prevent overparameterized models from fully memorizing training data through an expanding generalization window
- The generalization window provides rigorous theoretical explanation for why diffusion models produce novel outputs despite being trained on finite datasets
- In LLMs, memorization manifests as verbatim reproduction of training data, raising copyright and privacy concerns
- The NeurIPS 2025 paper used random matrix theory and spectral analysis to provide rigorous theory for why practical diffusion models avoid full memorization
- Memorization vs. generalization is a fundamental tension in all of machine learning, with implications for model safety, fairness, and intellectual property
- Distinction between "useful recall" (learning patterns) and "harmful memorization" (reproducing exact training examples)

## Related Concepts

- [[llm]]
- [[llm-diversity-evaluation]]
- [[low-recall]]

## Sources

- [[diffusion-model-theory]]
