---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Max Margin

## Definition

Max margin is a principle in classification where the decision boundary is positioned to maximize the minimum distance (margin) between the boundary and the nearest data points from each class. This principle underlies Support Vector Machines (SVMs) and connects to the broader family of hinge loss functions used in linear classifiers.

## Key Aspects

- The margin is the distance between the decision boundary and the nearest training points (support vectors) from each class
- SVMs find the hyperplane that maximizes this margin, which provides the best generalization guarantee among linear classifiers
- Hinge loss: max(0, 1 - y * f(x)), where y is the true label and f(x) is the model output; zero when correctly classified with sufficient margin
- The max-margin principle provides implicit regularization: wider margins correlate with better generalization to unseen data
- Connection to logistic regression: hinge loss (max-margin) is non-smooth but convex; logistic loss (maximum likelihood) is smooth but does not enforce a hard margin
- Soft-margin SVMs allow some misclassifications by adding a penalty term controlled by parameter C, balancing margin width against training errors
- The dual formulation of SVMs enables kernel trick: implicit computation of high-dimensional feature spaces without explicit transformation

## Related Concepts

- [[logistic-regression]]
- [[maximum-likelihood]]
- [[lp-norm]]

## Sources

- [[svm-loss]]
