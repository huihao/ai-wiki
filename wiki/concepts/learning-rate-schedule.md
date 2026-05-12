---
tags: [concept]
sources: [[overview-gradient-descent-optimization]]
related_concepts: [[gradient-descent]], [[sgd]], [[regularization]]
---

# Learning Rate Schedule

A strategy for adjusting the learning rate during training to improve convergence behavior.

## Overview

The learning rate controls the step size taken during each parameter update in [[gradient-descent]]. A fixed learning rate forces a compromise: too large and the optimizer overshoots minima or diverges; too small and training stalls or converges excruciatingly slowly. Learning rate schedules address this trade-off by varying the learning rate over the course of training -- large early for fast exploration, small later for fine-grained convergence near minima.

## Common Schedules

### Step Decay

Reduce the learning rate by a fixed factor every N epochs:

```
lr = lr_initial * (drop_rate ^ floor(epoch / drop_every))
```

Simple and widely used. The drop rate and interval are hyperparameters that require tuning.

### Exponential Decay

Continuously reduce the learning rate by a constant factor each epoch:

```
lr = lr_initial * decay_rate ^ epoch
```

Provides smoother reduction than step decay but can reduce too aggressively if the decay rate is misconfigured.

### Cosine Annealing

Follows a cosine curve from the initial learning rate down to a minimum:

```
lr = lr_min + 0.5 * (lr_max - lr_min) * (1 + cos(pi * epoch / total_epochs))
```

Popular in modern deep learning. Provides slow decay near the start and end of training with faster reduction in the middle.

### Warm-Up Then Decay

Start with a very small learning rate, linearly increase it over a warm-up period, then decay:

```
lr = lr_max * min(1, epoch / warmup_epochs) * decay(epoch - warmup_epochs)
```

Critical for stabilizing training of large models, especially [[transformer-architecture]]-based architectures. The warm-up phase prevents large initial gradients from destabilizing early parameter updates.

### ReduceLROnPlateau

Reduce the learning rate when a monitored metric (e.g., validation loss) stops improving:

```
if no improvement for patience_epochs:
    lr *= factor
```

Adaptive to actual training progress rather than following a fixed schedule. Common in PyTorch via `torch.optim.lr_scheduler.ReduceLROnPlateau`.

## Interaction with Adaptive Methods

Learning rate schedules are orthogonal to adaptive optimizers like [[adam-optimizer]]. Adam adjusts per-parameter learning rates based on gradient statistics; a global schedule further modulates the base learning rate on top of that adaptation. Combining both provides two levels of learning rate control: the optimizer handles per-parameter scaling, while the schedule handles temporal scaling.

## Practical Considerations

- **Warm-up is essential for large models**: Without it, early gradients from randomly initialized large models can cause divergence.
- **Cosine annealing with warm restarts**: Restarting the cosine schedule periodically can help escape local minima.
- **Monitor the learning rate**: Logging the actual learning rate per step helps diagnose whether a schedule is working as intended.
- **Batch size interaction**: Larger batch sizes often pair with larger learning rates; adjust the schedule accordingly when changing batch size.
