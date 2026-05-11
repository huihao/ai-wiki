---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, rl]
---

# Rollouts

## Metadata

- **Type**: ML Concept
- **Context**: Reinforcement Learning
- **Related**: Model outputs

## Definition

Rollouts are model outputs sampled during reinforcement learning training at various checkpoints. They represent the model's attempts at completing tasks and are used to evaluate performance, detect reward hacking, and iterate on reward functions.

## Purpose

- **Performance evaluation**: Measuring model quality at different training steps.
- **Reward hacking detection**: Identifying when models exploit reward function flaws.
- **Rubric validation**: Testing reward functions against live outputs.
- **Checkpoint comparison**: Comparing model behavior across training steps.

## Analysis Methods

- **Visual inspection**: Reviewing outputs in RL Studio UI.
- **Automated testing**: Running reward test suites against rollouts.
- **Export**: Copying rollouts in agent-friendly markdown for further prompting.
- **Metrics tracking**: Monitoring reward curves, error metrics, advantages.

## Access Methods (Prime Intellect CLI)

```bash
prime rl rollouts <run_id> --step <step>
prime rl rollouts <run_id> --step <step> --limit 100 --page 1
prime rl distributions <run_id> --type rewards --step 50
prime rl progress <run_id>
```

## RL Studio Features

- Select multiple rollouts at once.
- "Copy Rollouts" button to export agent-friendly markdown.
- View across different checkpoints.
- Inspect rewards, sample info, and detailed outputs.

## Related Concepts

- [[reinforcement-learning]]
- [[vibe-rl]]
- [[reward-hacking]]
- [[rubric]]
- [[checkpoints]]

## Sources

- [[my-first-vibe-rl-experience]]
