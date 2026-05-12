---
created: 2026-04-28
updated: 2026-05-09
tags: [activation-function, classification, mathematics]
sources: 3
---

# Softmax

## Definition

Softmax is a mathematical function that converts a vector of raw scores (logits) into a probability distribution where each output is in the range (0, 1) and all outputs sum to 1. It is defined as softmax(z_i) = exp(z_i) / sum(exp(z_j)) for all j. Softmax amplifies differences between logits, making the largest value dominate the output distribution. It is used as the final activation function in classification networks, in the output layer of language models for [[next-token-prediction|token prediction]], and within the [[attention-mechanisms]] to convert attention scores into weights.

## Key Proponents / Critics

- [[geoffrey-hinton]] — contributed to the widespread adoption of softmax in neural network classifiers
- [[jurgen-schmidhuber]] — researcher whose LSTM work uses softmax for output generation
- [[sebastian-raschka]] — has published detailed explanations of softmax mechanics and numerical stability

## Related Concepts

- [[cross-entropy-loss]] — softmax outputs are typically paired with cross-entropy loss for training
- [[logits-masking]] — masking applied to logits before softmax in transformer attention computation
- [[temperature-parameter]] — scales logits before softmax to control output distribution sharpness
- [[attention-mechanisms]] — transformer attention uses softmax to convert scores into probability weights
- Classification — softmax is the standard output function for multi-class classification
- [[logistic-regression]] — softmax generalizes logistic regression to multiple classes
- [[neural-networks]] — softmax serves as the output layer in most neural network classifiers
- [[probability-distributions]] — softmax produces a valid probability distribution from arbitrary real-valued vectors
- [[top-k-sampling]] — sampling strategy applied after softmax to select from the output distribution
- [[top-p-sampling]] — nucleus sampling applied to the softmax output distribution

## Related Entities

- [[pytorch]] — provides `nn.Softmax` and `F.softmax` functions
- [[tensorflow]] — provides `tf.keras.activations.softmax`

## Sources

- [[essential-ml-equations]] — mathematical formulation of the softmax function
- [[machine-learning-glossary]] — glossary entry defining softmax and related probability concepts
- [[deep-learning-fundamentals]] — foundational treatment of softmax in neural network output layers

## Evolution

- **1959**: softmax-like normalization used in statistics and probability theory (Boltzmann distribution)
- **1989**: Bridle uses softmax in neural network classifiers for multi-class problems
- **2006**: Deep learning resurgence makes softmax the default output for neural network classifiers
- **2014**: Attention mechanisms adopt softmax to normalize attention weights
- **2017**: [[transformers]] uses scaled dot-product with softmax as the core attention computation
- **2020-2025**: Softmax remains ubiquitous in LLM output layers and attention mechanisms; online softmax variants improve memory efficiency
