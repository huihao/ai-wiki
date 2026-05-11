---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Checkpoints

## Definition
Checkpoints are saved snapshots of a model's state (weights, optimizer state, training step) during the training or reinforcement learning process, enabling resumption from a known good state after failure, experimentation from intermediate points, or deployment of the best-performing version. In reasoning model training (e.g., GRPO), checkpoints allow evaluation of intermediate policy states and selection of the best checkpoint for distillation or deployment.

## Key Aspects
- **State preservation**: A checkpoint typically saves model weights, optimizer state (momentum, variance for Adam), learning rate scheduler state, and the current step number
- **Failure recovery**: Training runs can crash due to hardware failures, OOM errors, or preemption; checkpoints enable resuming from the last save rather than restarting from scratch
- **Intermediate evaluation**: During GRPO training for reasoning models, checkpoints at regular intervals allow evaluation on benchmarks (e.g., MATH-500) to identify the optimal policy before overfitting
- **Best-model selection**: Not the final checkpoint is always best -- RL training can overshoot optimal policy; checkpoints enable selecting the checkpoint with highest benchmark performance
- **Storage tradeoff**: Full checkpoints for large models are expensive (multi-GB); techniques like sharded checkpoints, incremental saves, and weight-only saves reduce storage overhead
- **Distillation source**: When distilling from a trained reasoning model to a smaller student, the teacher checkpoint used as the source significantly affects distillation quality

## Related Concepts
- [[grpo]] -- the RL training method where checkpoints are critical for policy selection
- [[distillation]] -- uses teacher model checkpoints as the knowledge source
- [[reinforcement-learning-from-human-feedback]] -- the training paradigm where checkpoint management is essential

## Sources
- [[rollouts]]
