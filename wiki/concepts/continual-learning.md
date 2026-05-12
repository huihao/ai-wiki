---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Continual Learning

## Definition

Learning from a continuous stream of tasks or data without catastrophic forgetting of previously learned capabilities. A fundamental challenge in machine learning: new information tends to overwrite old knowledge stored in neural network weights. Classical approaches include replay buffers, elastic weight consolidation, and progressive neural networks.

## Related Concepts

- [[heuristic-learning]] — HL addresses continual learning by encoding old capabilities as regression tests and explicit rules rather than weights
- [[catastrophic-forgetting]] — the core problem continual learning aims to solve
- [[online-learning]] — closely related: learning from live interaction
- [[reinforcement-learning]] — RL agents face continual learning when environments change

## Sources

- [[learning-beyond-gradients]] — HL positioned as a candidate approach to continual learning

## Evolution

- **Classical ML**: Models trained on fixed datasets. Retraining from scratch on new data
- **Online learning**: Models update from streaming data but remain vulnerable to forgetting
- **Replay buffers (off-policy RL)**: Store past experiences and interleave with new data during training
- **Elastic weight consolidation (2017)**: Protects important weights from being overwritten by new learning
- **Heuristic Learning (2026, Weng)**: Shifts continual learning from "how do we update parameters?" to "how do we maintain a software system that keeps absorbing feedback?" Old capabilities become explicit regression tests, golden traces, and version diffs rather than compressed weight values
