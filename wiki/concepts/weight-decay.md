---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Weight Decay

## Definition

Weight decay is a regularization technique that adds a penalty proportional to the magnitude of the model's weights to the loss function, encouraging smaller weight values and thereby reducing model complexity, preventing overfitting, and improving generalization to unseen data.

## Key Aspects

- Mathematically, weight decay adds a term lambda * ||w||^2 to the loss function, where lambda is the decay coefficient and ||w|| is the L2 norm of the weight vector, causing the gradient to include an additional term that pushes weights toward zero.
- Weight decay is equivalent to L2 regularization in standard gradient descent, but differs from L2 regularization when combined with adaptive optimizers (Adam, AdaGrad): in AdamW, decoupled weight decay applies the penalty directly to weights rather than through the gradient, avoiding the interaction between learning rate adaptation and regularization.
- The effect is analogous to the momentum coefficient (alpha) in stochastic gradient descent: both weight decay and momentum use historical information to smooth weight updates, with weight decay pushing toward zero and momentum preserving velocity.
- Too much weight decay (large lambda) causes underfitting by overly constraining model capacity; too little allows overfitting. The optimal value is typically found through validation-set experimentation or learning rate schedules.
- Weight decay interacts with learning rate: they can often be jointly tuned via a single learning rate schedule, since both scale the weight update magnitude.
- Weight decay is distinct from dropout (which randomly zeros activations during training) and from early stopping (which halts training before overfitting). These techniques are complementary and often combined.
- In modern practice, weight decay is a standard hyperparameter in nearly all neural network training configurations, typically set to 1e-4 or 1e-2 depending on model size and architecture.

## Related Concepts

- [[weight-initialization]] -- setting starting weights, complementary to weight decay's ongoing constraint
- [[regularization]] -- the broader category of overfitting-prevention techniques
- [[adam-optimizer]] -- the optimizer where decoupled weight decay (AdamW) is particularly important

## Sources

- [[attention-is-all-you-need-discussion]]
