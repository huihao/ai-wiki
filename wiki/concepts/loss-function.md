---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Loss Function

## Definition

A loss function is a mathematical function that quantifies the difference between a model's predictions and the true target values, providing the signal that drives training via gradient descent. In LLMs, the primary loss function is cross-entropy between the predicted token probability distribution and the actual next token. Minimizing this loss through backpropagation adjusts the model's weights to produce more accurate predictions over time.

## Key Aspects

- **Cross-Entropy for LLMs**: Measures the average negative log-likelihood of the correct token under the model's predicted distribution; minimizing it makes the model assign higher probability to correct next tokens
- **Gradient Descent**: The loss function's gradient with respect to each parameter indicates the direction to adjust that parameter to reduce error; backpropagation computes these gradients efficiently
- **Training Signal**: Loss provides the objective that shapes all learned representations -- embeddings, attention weights, MLP parameters -- during training
- **Loss Curves**: Monitoring loss over training steps reveals learning progress, overfitting, underfitting, and training stability
- **Mathematical Foundations**: Understanding loss functions requires calculus (partial derivatives, chain rule), linear algebra (matrix operations in backprop), and probability (cross-entropy, KL divergence)
- **Empirical Success**: The loss function approach works despite no theoretical proof that neural networks should generalize well; this is an empirical discovery, not a derived result
- **Connection to Embeddings**: Embedding values are adjusted based on loss; tokens in similar contexts end up close in vector space because they produce similar predictions (and similar loss contributions)
- **Beyond Cross-Entropy**: Other loss functions exist for different tasks (MSE for regression, contrastive loss for similarity learning, reward modeling loss for RLHF)

## Related Concepts

- [[kl-divergence]]
- [[machine-learning-math]]
- [[iterative-text-generation]]

## Sources

- [[high-school-math-to-ml-roadmap]]
- [[what-is-chatgpt-doing-and-why-does-it-work]]
