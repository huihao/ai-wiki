---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Gradient Boosting

## Definition

Gradient boosting is an ensemble machine learning technique that builds models sequentially, where each new model corrects the errors of the combined ensemble of previous models. It fits new models to the negative gradient (pseudo-residuals) of the loss function, gradually reducing prediction error. Gradient boosting machines (GBMs) are among the most powerful supervised learning algorithms for structured/tabular data.

## Key Aspects

- **Sequential Error Correction**: Each new weak learner (typically a shallow decision tree) is trained on the residual errors of the current ensemble, not the original targets
- **Gradient Descent in Function Space**: The algorithm performs gradient descent over the space of functions by fitting each step to the negative gradient of the loss
- **Regularization**: Learning rate (shrinkage), tree depth, subsampling, and feature sampling control overfitting; lower learning rates require more trees but generalize better
- **Visual Explanations**: explained.ai provides deep, visual explanations of gradient boosting using dtreeviz, showing how feature space is partitioned by successive trees
- **Applications**: XGBoost, LightGBM, and CatBoost are popular implementations; dominant in Kaggle competitions and production systems for tabular data

## Related Concepts
- [[gradient-flow]]
- [[gradient-magnitudes]]

## Sources
- [[explained-ai-source]]
