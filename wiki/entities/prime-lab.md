---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, platform, ml]
---

# Prime Lab

## Metadata

- **Type**: ML Platform
- **Provider**: Prime Intellect
- **Purpose**: Hosted RL training, evaluation, inference

## Definition

Prime Lab is a full-stack hosted platform for LLM post-training, providing agentic RL, evaluation, and inference without requiring users to manage GPU infrastructure.

## Key Features

- **Hosted Training**: Managed GPU infrastructure for RL runs.
- **Evaluation**: Built-in evaluation tools and metrics.
- **Inference**: Model serving and deployment.
- **Visualization**: Run overview dashboards, rollout tables.
- **Checkpoint Resume**: Resume failed/incomplete runs.

## Components

- Environment configuration (dataset, harness, rubric).
- TOML config files for RL runs.
- Realtime metrics visualization (rewards, error metrics).
- Rollout samples at validation intervals.
- Checkpoint comparison and management.

## Workflow

1. Build environment using Verifiers.
2. Define TOML configuration.
3. Run: `prime rl run config.toml`.
4. Monitor via Prime Lab UI and CLI.
5. Evaluate checkpoints.
6. Deploy best model.

## Example Config

```toml
name = "ascii-layout-alpha-128-qwen3-4b-instruct-2507"
model = "Qwen/Qwen3-4B-Instruct-2507"
max_steps = 300
batch_size = 512
rollouts_per_example = 16
trajectory_strategy = "interleaved"
learning_rate = 1e-6
lora_alpha = 128
```

## Benefits

- No GPU infrastructure management.
- Quick iteration on configurations.
- Accessible via CLI for agent integration.
- Visual dashboards for human review.

## Related Concepts

- [[prime-cli]]
- [[verifiers]]
- [[vibe-rl]]
- [[reinforcement-learning]]

## Related Entities

- [[prime-intellect]]

## Sources

- [[my-first-vibe-rl-experience]]
