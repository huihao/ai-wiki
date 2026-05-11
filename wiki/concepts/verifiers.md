---
created: 2026-04-28
updated: 2026-04-28
tags: [library, machine-learning]
---

# Verifiers

## Metadata

- **Type**: Python Library
- **Platform**: Prime Intellect
- **Purpose**: Build RL environments

## Definition

Verifiers is a Python library for building reinforcement learning environments with datasets, harnesses, rubrics, and evaluation configurations. It provides the foundation for RL training on Prime Intellect platform.

## Environment Structure

```python
def load_environment() -> vf.Environment:
    rubric = vf.Rubric(
        funcs=[format_reward, alignment_reward, layout_spread_reward],
        weights=[1.0, 1.0, 1.0],
    )
    return vf.SingleTurnEnv(
        dataset=train_dataset,
        eval_dataset=eval_dataset,
        system_prompt=SYSTEM_PROMPT,
        rubric=rubric,
    )
```

## Components

- **Dataset**: Training and evaluation samples.
- **Harness**: Prompts, tools, vector DBs, sandboxes.
- **Rubric**: Set of reward functions for scoring.
- **Environment**: Single-turn or multi-turn task wrapper.

## Environment Hub

- Push environments to Prime Intellect Hub for sharing.
- Example: https://app.primeintellect.ai/dashboard/environments/13point5/ascii-align

## Related Concepts

- [[rubric]]
- [[prime-lab]]
- [[prime-cli]]
- [[reinforcement-learning]]

## Related Entities

- [[prime-intellect]]

## Sources

- [[my-first-vibe-rl-experience]]
