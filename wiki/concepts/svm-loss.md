# SVM Loss (Hinge Loss)

**Type**: Loss Function
**Category**: Supervised Learning, Classification

## Description

Multiclass Support Vector Machine loss function. Encourages correct class score to be higher than incorrect classes by a fixed margin $\Delta$.

## Mathematical Formulation

$$L_i = \sum_{j\neq y_i} \max(0, s_j - s_{y_i} + \Delta)$$

### Components
- $s_j$: Score for class $j$
- $s_{y_i}$: Score for correct class
- $\Delta$: Margin hyperparameter (usually 1.0)
- Sum over all incorrect classes

## Interpretation

- **Desired outcome**: Correct class score > incorrect scores + $\Delta$
- **Loss**: How much margin is violated
- **Zero loss**: Margin satisfied for all classes
- **Hinge**: Thresholded at zero

## Properties

### Margin-Based
- Only cares about margin, not exact scores
- Once margin satisfied, doesn't optimize further
- "Local" objective

### Hyperparameter $\Delta$
- Safe to set $\Delta = 1.0$
- Tradeoff controlled by regularization $\lambda$
- Magnitude of $W$ affects score differences

## Regularization

Add L2 penalty:
$$L = \frac{1}{N} \sum_i L_i + \lambda \sum_k\sum_l W_{k,l}^2$$

- Encourages smaller weights
- Improves generalization
- Max margin property

## Variants

- **Linear hinge**: $\max(0, -)$ (standard)
- **Squared hinge**: $\max(0, -)^2$ (L2-SVM)
- Squared penalizes violations more strongly

## Comparison to Softmax

- **SVM**: Local, margin-based, sometimes zero loss
- **Softmax**: Global, probabilistic, never zero loss
- Similar performance in practice
- Different interpretations

## Implementation

```python
def svm_loss(scores, y, delta=1.0):
    correct_score = scores[y]
    margins = np.maximum(0, scores - correct_score + delta)
    margins[y] = 0  # Ignore correct class
    return np.sum(margins)
```

## Related Sources

- [[cs231n-deep-learning-computer-vision]] - SVM loss chapter

## Related Concepts

- [[loss-function]]
- [[regularization]]
- [[multiclass-classification]]
- [[max-margin]]