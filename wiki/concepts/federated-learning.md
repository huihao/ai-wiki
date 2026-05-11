---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Federated Learning

## Definition

Federated learning is a machine learning approach that trains centralized models on decentralized data. Training computations are brought to devices where data resides, and only model updates (not raw data) are sent to central servers for aggregation, preserving privacy by default.

## Key Proponents / Critics

- [[google-ai|Google AI]] — Pioneered federated learning for deep networks
- [[google-research|Google Research]] — Team developing foundational technologies
- Academic researchers (McMahan et al., 2016 paper)

## Related Concepts

- [[differential-privacy|Differential Privacy]] — Privacy guarantee mechanism
- [[secure-aggregation|Secure Aggregation]] — Cryptographic aggregation protocol
- [[privacy-preserving-ml|Privacy-Preserving ML]] — Broader category
- [[on-device-ml|On-Device ML]] — Local training aspect

## Sources

- [[federated-learning-google-comic|Federated Learning Google Comic]]

## Evolution

Federated learning emerged from distributed optimization and privacy research heritage (MapReduce, TensorFlow, RAPPOR). Google articulated the approach for deep networks in 2016 paper "Communication-Efficient Learning of Deep Networks from Decentralized Data." Now deployed across Google products (Gboard, Messages, Assistant, Private Compute Core). Process involves sending small models to eligible devices (charging, WiFi, idle), training locally, returning encrypted deltas via secure aggregation. Differential privacy prevents model memorization of individual contributions. Extensions beyond phones: self-driving cars learning from aggregated driver behavior, hospitals improving diagnostics while maintaining patient privacy. Enables learning from everyone without learning about any one individual.