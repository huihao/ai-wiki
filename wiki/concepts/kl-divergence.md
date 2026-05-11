---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# KL Divergence

## Definition

KL (Kullback-Leibler) divergence is a measure of how one probability distribution differs from a second, reference probability distribution. In machine learning, it quantifies the information lost when approximating one distribution with another -- fundamental to variational autoencoders, policy optimization in reinforcement learning, knowledge distillation, and the theoretical foundations of how LLMs model language distributions.

## Key Aspects

- **Asymmetric Measure**: KL(P||Q) measures the divergence of distribution P from distribution Q; it is not symmetric (KL(P||Q) != KL(Q||P))
- **Non-Negative**: KL divergence is always >= 0, with 0 indicating identical distributions; it is zero if and only if the distributions are equal almost everywhere
- **Information-Theoretic Interpretation**: Measures the expected extra bits needed to encode samples from P using an optimal code for Q; related to entropy and cross-entropy
- **Connection to Cross-Entropy**: KL(P||Q) = H(P,Q) - H(P), where H(P,Q) is cross-entropy and H(P) is entropy of P
- **Variational Inference**: In VAEs, KL divergence between the learned latent distribution and the prior guides the encoder to produce distributions close to the prior
- **Knowledge Distillation**: KL divergence between a teacher model's soft labels and a student model's predictions drives the distillation process
- **t-SNE Connection**: t-SNE uses KL divergence (specifically the student-t distribution version) to measure similarity between high-dimensional and low-dimensional distributions for visualization
- **LLM Training**: The loss function used to train LLMs (cross-entropy between predicted and true token distributions) is directly related to KL divergence

## Related Concepts

- [[loss-function]]
- [[machine-learning-math]]
- [[llm-training-scaling]]

## Sources

- [[entropy]]
- [[tsne]]
