---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Adversarial Training

## Definition

Adversarial training is a defense technique where neural networks are explicitly trained on adversarially perturbed examples to improve their robustness against adversarial attacks. By incorporating adversarial examples into the training process, models learn to maintain correct predictions even when inputs contain malicious perturbations.

## Key Aspects

- Involves generating adversarial examples during training and labeling them with correct targets
- pioneered in part by Ian Goodfellow, whose work on GANs and adversarial methods shaped the field
- Creates models that are more robust to input perturbations at the cost of slightly reduced accuracy on clean data
- One of the most effective known defenses against adversarial attacks
- Trade-off between robustness and standard accuracy remains an active research challenge
- Extended to domains beyond images, including text, audio, and tabular data

## Related Concepts

- [[adversarial-attacks]]
- [[alexnet]]
- [[llm-benchmarks]]

## Sources

- [[ian-goodfellow]]
