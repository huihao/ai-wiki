---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Catastrophic Forgetting

## Definition

The phenomenon where a neural network, upon learning new information, significantly forgets previously learned capabilities. Occurs because gradient-based updates to weights for new tasks overwrite the weight configurations that encoded old knowledge. A fundamental challenge in continual learning and multi-task learning.

## Related Concepts

- [[continual-learning]] — the broader challenge catastrophic forgetting impedes
- [[heuristic-learning]] — HL addresses forgetting by encoding old capabilities as explicit regression tests and rules rather than weights
- [[reinforcement-learning]] — RL agents suffer catastrophic forgetting when fine-tuned on new tasks
- [[fine-tuning]] — fine-tuning a pretrained model can cause forgetting of pretraining knowledge

## Sources

- [[learning-beyond-gradients]] — HL as an engineering-oriented solution to catastrophic forgetting

## Evolution

- **Identified (1990s)**: First observed in early neural networks — training on new data destroyed performance on old data
- **EWC (2017)**: Elastic Weight Consolidation protects important weights from overwriting
- **Replay methods**: Store and replay old examples during new training
- **Heuristic Learning (2026, Weng)**: Reframes catastrophic forgetting as an engineering problem. Old capabilities become regression tests, golden traces, failure videos, and version diffs — explicit, readable, deletable, and refactorable. Not compressed into weights but maintained as artifacts. Two required operations: (1) absorb feedback, (2) compress history into simpler representations
