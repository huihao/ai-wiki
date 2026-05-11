---
created: 2026-04-29
updated: 2026-05-09
tags: [interpretability, machine-learning]
sources: 1
---

# Feature Importance

## Definition

Feature importance is a measure of how much each input variable contributes to a model's predictions, enabling practitioners to understand which features drive model behavior and to validate that the model is learning meaningful patterns rather than spurious correlations. In explainable AI, feature importance is a foundational technique for making black-box models interpretable and trustworthy.

## Key Aspects

- Multiple methods exist for measuring feature importance: permutation importance (how much accuracy drops when a feature is shuffled), SHAP values (Shapley Additive Explanations from game theory), LIME (local interpretable model-agnostic explanations), and model-specific measures (tree-based feature importance from Gini impurity or information gain)
- explained.ai provides visual tools (rfpimp, StratPD) for computing and visualizing feature importance in ways that are model-agnostic and statistically rigorous
- Feature importance helps detect data leakage: if a feature that shouldn't have predictive power shows high importance, it may indicate leakage or confounding
- Partial dependence plots (PDPs) and individual conditional expectation (ICE) plots show how the model's prediction changes as a single feature varies, revealing the functional relationship between feature and output
- In deep learning, feature importance is harder to compute due to distributed representations; techniques like Integrated Gradients and attention-based attribution provide approximation methods
- Feature importance is a critical component of model governance: regulators and stakeholders need to understand why a model makes specific decisions, especially in high-stakes domains (healthcare, finance, criminal justice)
- The distinction between global feature importance (which features matter overall) and local feature importance (which features matter for a specific prediction) is essential for both debugging and explanation

## Related Concepts

- [[explainable-ai]]
- [[shap-values]]
- [[model-interpretability]]

## Sources

- [[explained-ai-source]]
