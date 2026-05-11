---
created: 2026-04-28
updated: 2026-04-28
tags: [source, federated-learning, privacy, google]
sources: 1
---

# Federated Learning

## Metadata

- **Author**: Google (educational comic)
- **Date**: N/A
- **URL**: N/A
- **Fetched**: 2026-04-24
- **Raw file**: `raw/ai/Federated Learning.md`

## Summary

An educational comic from Google explaining Federated Learning — a machine learning approach where models are trained across decentralized devices holding local data samples, without exchanging raw data. Central aggregation (e.g., FedAvg) combines locally computed updates.

## Key Takeaways

- **Decentralized training**: Data stays on-device; only model updates are shared.
- **Privacy by design**: Raw data never leaves the user's device.
- **FedAvg**: The foundational aggregation algorithm that averages client model updates weighted by local dataset size.
- **Challenges**: Communication costs, heterogeneity (non-IID data), and Byzantine/malicious clients.

## Entities Mentioned

- [[google]] — pioneered and popularized federated learning

## Concepts Mentioned

- [[google|Federated learning]] — decentralized ML training paradigm
- FedAvg — canonical federated averaging algorithm
- Differential privacy — often combined with FL for stronger privacy guarantees
- [[ai-data-engineer-return-to-basics|Non-IID data]] — statistical heterogeneity across clients

## Raw Notes

See raw file for the comic-style walkthrough.

## Questions / Follow-ups

- How does secure aggregation (SecAgg) work in practice?
- What are the latest advances in personalization within FL?
