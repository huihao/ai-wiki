---
created: 2026-04-29
updated: 2026-04-29
tags: [information-theory, mathematics]
sources: 1
---

# Entropy

## Definition

A measure of the average number of bits needed to encode events from a probability distribution. Higher entropy means more uncertainty. It is the foundational quantity in information theory, with cross-entropy and KL divergence built upon it.

## Key Equation

H(P) = -Σ P(x) log₂ P(x)

## Properties

- Fair coin (0.5, 0.5): H = 1 bit (maximum uncertainty for binary)
- Biased coin (0.9, 0.1): H = 0.469 bits (less uncertainty)
- Certain outcome: H = 0 bits (no uncertainty)

## Role in ML

- Baseline for cross-entropy loss: H(P,Q) = H(P) + D_KL(P||Q)
- Cross-entropy loss = entropy of true distribution + KL divergence
- Minimizing cross-entropy = minimizing KL divergence (since H(P) is constant)

## Related Concepts

- [[cross-entropy-loss]] — Bits needed using wrong distribution for encoding
- [[kl-divergence]] — Extra bits when using Q instead of P

## Sources

- [[essential-ml-equations]] — ML equations reference guide
