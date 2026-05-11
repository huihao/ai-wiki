---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Secure Aggregation

## Definition

Secure aggregation is an interactive cryptographic protocol for computing sums of masked vectors (like model weights) while preventing servers from seeing individual contributions. Uses zero-sum masks that cancel out when sufficient inputs are combined.

## Key Proponents / Critics

- [[google-ai|Google AI]] — Developed practical secure aggregation
- Google researchers (2017 paper "Practical Secure Aggregation for Privacy-Preserving Machine Learning")

## Related Concepts

- [[federated-learning|Federated Learning]] — Primary application
- [[differential-privacy|Differential Privacy]] — Complementary privacy technique
- [[privacy-preserving-ml|Privacy-Preserving ML]] — Broader category

## Sources

- [[federated-learning-google-comic|Federated Learning Google Comic]]

## Evolution

Secure aggregation enables server to combine encrypted results and only decrypt the aggregate. Protocol works by coordinating exchange of random masks among participating client pairs, such that masks cancel when sufficient inputs received. Each device adds zero-sum masks before sending, scrambling training results. When aggregated, masks exactly cancel out, revealing only collective update. Encryption uses keys server doesn't possess. Google's 2017 paper established practical approach. Extension: "Secure Single-Server Aggregation with (Poly)Logarithmic Overhead." Critical for federated learning where individual device updates must remain invisible even to aggregating server.