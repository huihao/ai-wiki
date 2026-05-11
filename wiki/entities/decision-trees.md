---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/method]
sources: 1
---

# Decision Trees

## Summary
Decision trees are a supervised machine learning model that makes predictions by learning a tree-like structure of if-then-else decision rules derived from features in the data. Each internal node represents a test on a feature, each branch represents the outcome of the test, and each leaf node represents a class label or regression value. Decision trees are interpretable, non-parametric models used for both classification and regression.

## Key Attributes
- **Type**: concept/method
- **Notable for**: providing highly interpretable models where the decision logic can be visualized and explained
- **Other facts**: algorithms include ID3, C4.5, and CART; prone to overfitting, which is mitigated by ensemble methods like random forests and gradient boosting; splits are chosen to maximize information gain or minimize Gini impurity; hierarchical agent systems draw inspiration from tree-structured decision processes

## Related Entities
- [[scikit-learn]] -- scikit-learn provides decision tree implementations
- [[databricks]] -- Databricks platforms support tree-based model training

## Related Concepts
- [[gradient-boosting]] -- ensemble method that builds multiple decision trees sequentially
- Random Forests -- ensemble method that trains multiple decision trees on random subsets
- [[feature-importance]] -- decision trees naturally provide feature importance rankings
- [[entropy]] -- information-theoretic measure used in tree splitting criteria
- Classification -- one of the primary tasks for decision tree models
- [[hierarchical-agents]] -- hierarchical agent architectures mirror tree-structured decision-making

## Sources
- [[hierarchical-agents]] -- discusses hierarchical decision-making structures inspired by tree-based approaches

## Contradictions / Open Questions
- Decision trees offer high interpretability but generally underperform compared to ensemble methods and deep learning on complex tasks. The trade-off between interpretability and predictive power is a central consideration when choosing between tree-based and black-box models.
