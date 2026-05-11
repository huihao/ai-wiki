---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Unlabeled Data

## Definition

Unlabeled data is training data that lacks human-assigned annotations or target labels, constituting the vast majority of available data in most domains. Leveraging unlabeled data is a central challenge in machine learning, addressed by techniques including semi-supervised learning, self-supervised pretraining, and transductive learning.

## Key Aspects

- Unlabeled data is abundant and cheap to collect, while labeled data is expensive and time-consuming to produce, creating an asymmetric resource landscape that motivates many ML research directions.
- Self-supervised learning (the foundation of modern LLMs and vision models) creates artificial labels from unlabeled data through objectives like next-token prediction, masked language modeling, and contrastive learning.
- Transductive online learning is a theoretical framework where the learner receives unlabeled test examples in advance and must make predictions with provable mistake bounds, as resolved in the NeurIPS 2025 best paper showing the optimal bound is Theta(sqrt(d)) for Littlestone dimension d.
- Semi-supervised methods (label propagation, self-training, consistency regularization) exploit the structure of unlabeled data to improve predictions on labeled examples.
- Unlabeled data is critical for pretraining foundation models: GPT, BERT, and their successors learn general-purpose representations from trillions of unlabeled text tokens before being fine-tuned on smaller labeled datasets.
- The quality and distribution of unlabeled data significantly impact downstream performance, leading to careful curation of pretraining corpora.
- Data contamination -- where evaluation benchmarks leak into pretraining corpora -- is a growing concern as unlabeled data sources become harder to audit.

## Related Concepts

- [[self-supervised-learning]] -- creating training signal from unlabeled data
- [[transductive-learning]] -- making predictions with advance access to unlabeled test data
- [[data-contamination]] -- evaluation data appearing in unlabeled pretraining corpora

## Sources

- [[neurips-2025-best-paper-awards]]
