---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Label Smoothing

## Definition

A regularization technique that replaces hard one-hot target labels with a weighted average of the true label and a uniform distribution over all classes. Instead of training the model to output probability 1.0 for the correct class, it trains toward 1−ε (e.g., 0.9) with ε distributed uniformly across all classes. Prevents the model from becoming overconfident and improves generalization.

## Related Concepts

- [[cross-entropy-loss]] — label smoothing modifies the target distribution used in cross-entropy
- [[transformers]] — label smoothing is used in "Attention is All You Need" during training
- [[regularization]] — label smoothing is a form of output regularization

## Sources

- [[transformers-a-primer]] — label smoothing mentioned as used in "Attention is All You Need"

## Evolution

- **Rethinking the Inception Architecture (2015)**: Introduced label smoothing for image classification. Showed it improves calibration and modestly improves accuracy
- **Attention is All You Need (2017)**: Adopted label smoothing (ε=0.1) during Transformer training. The authors noted it improved model quality and convergence speed
- **Modern practice**: Label smoothing is widely used in classification tasks but less commonly applied in LLM language modeling, where cross-entropy is computed over the full vocabulary at each position
