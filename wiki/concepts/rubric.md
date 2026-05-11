---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, rl]
---

# Rubric

## Metadata

- **Type**: ML Evaluation System
- **Context**: Reinforcement Learning
- **Related**: Reward functions

## Definition

A rubric is a set of reward functions used to score model performance during reinforcement learning training. It defines how model outputs are evaluated and provides the scoring criteria for optimization.

## Structure

```python
rubric = vf.Rubric(
    funcs=[format_reward, alignment_reward, layout_spread_reward],
    weights=[1.0, 1.0, 1.0],
)
```

## Components

- **Reward functions**: Individual scoring criteria (format, alignment, layout spread).
- **Weights**: Importance weighting for each function.
- **Error metrics**: Tracking different types of failures (arrow errors, connector errors, rectangle errors).

## Reward Function Types

### format_reward
- Binary check for text inside ```text``` blocks.
- Validates presence of expected output.

### alignment_reward
- Counts aligned vs misaligned boxes.
- Checks corners and closing edges.
- Validates connectors and arrows.
- Values from 0.0 to 1.0.

### layout_spread_reward
- Rewards 2D space utilization.
- Penalizes vertical stacking (reward hacking).
- Computes column distribution.
- Expected columns based on prompt metadata.

## Iteration Process

- Start with simple reward function as "golden skeleton".
- Add test cases to validate reward functions.
- Detect reward hacking through rollout inspection.
- Improve reward functions iteratively.
- Maintain test suite for confidence.

## Test Case Importance

- Prove reward function correctness.
- Validate against edge cases.
- Catch bugs before starting new runs.
- Inspired by real rollouts.

## Related Concepts

- [[reinforcement-learning]]
- [[reward-hacking]]
- [[rollouts]]
- [[alignment-reward]]
- [[layout-spread-reward]]

## Sources

- [[my-first-vibe-rl-experience]]
