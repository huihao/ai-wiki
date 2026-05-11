---
created: 2026-04-29
updated: 2026-05-09
tags: [data, machine-learning]
sources: 2
---

# Feature Engineering

## Definition
Feature engineering is the process of using domain knowledge to create, transform, and select input variables (features) from raw data that improve the performance of machine learning models. It bridges the gap between raw data representation and the mathematical requirements of ML algorithms, often having a larger impact on model performance than algorithm selection.

## Key Aspects
- Feature transformations include square root, logarithm, and other distribution-changing operations
- Feature cross-products create interaction terms by multiplying features to capture non-linear relationships
- One-hot encoding converts categorical variables into binary vectors for algorithm consumption
- Normalization scales features to [0,1] using min-max scaling; standardization centers to mean=0, std=1
- Robust scaling uses median and IQR to handle outlier-heavy datasets
- Forward selection and backward elimination are systematic feature selection strategies
- In recommendation systems, feature engineering drives content-based and collaborative filtering approaches
- Linear algebra provides the mathematical foundation for feature transformations and dimensionality reduction

## Related Concepts
- [[deliberate-practice]]
- [[eval-driven-development]]

## Sources
- [[data-representation]]
- [[linear-algebra-machine-learning]]
