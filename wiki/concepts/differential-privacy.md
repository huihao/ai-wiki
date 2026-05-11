---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Differential Privacy

## Definition

Differential privacy is a mathematical framework providing formal privacy guarantees by limiting how much a model's parameters can depend on any single contributor's data. Achieved by limiting individual contributions and adding noise to obscure rare or unique data points.

## Key Proponents / Critics

- Cynthia Dwork and Aaron Roth (canonical textbook authors)
- [[google-ai|Google AI]] — Applied to federated learning
- Research community (2018 papers on measuring memorization)

## Related Concepts

- [[federated-learning|Federated Learning]] — Application area
- [[secure-aggregation|Secure Aggregation]] — Complementary encryption technique
- [[privacy-preserving-ml|Privacy-Preserving ML]] — Broader category

## Sources

- [[federated-learning-google-comic|Federated Learning Google Comic]]

## Evolution

Differential privacy addresses model memorization risk where shared parameters might be too influenced by single contributor. Techniques include pre-filtering rare/sensitive information and differentially private training algorithms. Google's 2018 papers explored measuring memorization ("The Secret Sharer") and learning private recurrent language models. Canonical textbook "The Algorithmic Foundations of Differential Privacy" provides mathematical foundation. In federated learning, differential privacy prevents models from memorizing rare data unique to single users by limiting contribution magnitude and adding noise.