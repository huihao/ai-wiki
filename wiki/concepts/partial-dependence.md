---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Partial Dependence

## Definition

Partial dependence is a model-agnostic interpretability technique that shows the marginal effect of one or two features on the predicted outcome of a machine learning model, marginalizing over the values of all other features to isolate the relationship between the feature of interest and the model's prediction.

## Key Aspects

- **Marginal Effect Isolation**: By averaging over all other features, partial dependence plots reveal how the model's prediction changes as a single feature varies, independent of correlations with other variables
- **Model-Agnostic**: Works with any predictive model (random forests, gradient boosting, neural networks) without requiring access to internal model structure beyond the prediction function
- **StratPD Implementation**: The explained.ai toolkit provides Stratified Partial Dependence (StratPD) curves computed directly from data, enabling more reliable estimates than grid-based methods for heterogeneous datasets
- **Feature Interaction Detection**: Two-dimensional partial dependence plots reveal interactions between feature pairs that would be invisible in one-dimensional analysis
- **Visualization for Communication**: Partial dependence plots provide intuitive graphical explanations of model behavior that can be communicated to non-technical stakeholders, supporting the "illuminate not impress" philosophy of interpretable ML

## Related Concepts

- [[feature-importance]] -- Global measures of feature contribution that complement partial dependence's local view
- [[explainable-ai]] -- Broader field of making ML models interpretable
- [[decision-trees]] -- Tree-based models where partial dependence is particularly interpretable
- [[shap-values]] -- Alternative feature attribution method providing individual prediction explanations

## Sources

- [[explained-ai]]
