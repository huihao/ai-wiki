# Regularization

**Type**: Technique
**Category**: Machine Learning, Optimization

## Description

Technique to prevent overfitting and improve generalization. Adds penalty term to loss function that discourages complex or extreme parameter values.

## Purpose

- **Prevent overfitting**: Reduce training data memorization
- **Improve generalization**: Better test performance
- **Remove ambiguity**: Unique parameter solutions
- **Encourage simplicity**: Smaller, diffuse weights

## Common Forms

### L2 Regularization (Weight Decay)
$$R(W) = \sum_k\sum_l W_{k,l}^2$$

- Penalizes large weights
- Encourages diffuse weight distribution
- Most common choice

### L1 Regularization
$$R(W) = \sum_k\sum_l |W_{k,l}|$$

- Encourages sparsity
- Feature selection effect
- Some weights become zero

### Elastic Net
- Combination of L1 and L2
- Both sparsity and diffusion

## Mathematical Formulation

Total loss = Data loss + Regularization:
$$L = \frac{1}{N} \sum_i L_i + \lambda R(W)$$

- $L_i$: Loss for example $i$
- $R(W)$: Regularization penalty
- $\lambda$: Regularization strength (hyperparameter)

## Intuition

### Weight Distribution Preference
- Prefer $w_2 = [0.25, 0.25, 0.25, 0.25]$ over $w_1 = [1, 0, 0, 0]$
- Both give same dot product
- L2 prefers smaller, diffuse weights

### Influence Control
- No single input dimension dominates
- All inputs contribute somewhat
- Better generalization

## Effects

- **Generalization**: Better test performance
- **Max margin**: SVM property (L2)
- **Unique solution**: Remove parameter ambiguity
- **Smoothness**: Avoid sharp variations

## Hyperparameter Selection

$\lambda$ typically determined by:
- Cross-validation
- Grid search
- Validation set performance

## What Not to Regularize

- Biases usually not regularized
- They don't control input influence
- Minimal impact on overfitting
- Regularizing weights suffices

## Related Sources

- [[cs231n-deep-learning-computer-vision]] - Regularization chapter

## Related Concepts

- [[overfitting]]
- [[generalization]]
- [[l2-penalty]]
- [[weight-decay]]