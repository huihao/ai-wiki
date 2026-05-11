---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, rl]
---

# Layout Spread Reward

## Metadata

- **Type**: Reward Function
- **Context**: Reinforcement Learning, ASCII diagrams
- **Purpose**: Prevent vertical stacking reward hacking

## Definition

Layout spread reward is a reward function that encourages models to use 2D space effectively in ASCII diagrams, penalizing vertical stacking (a common reward hacking strategy) and promoting proper diagram aesthetics.

## Calculation Process

1. Parse fenced ```text``` diagram, reject missing/empty output.
2. Normalize grid and detect valid boxes.
3. Compute each box's horizontal center.
4. Cluster centers into columns (threshold=2.0 chars).
5. Compute expected columns from prompt metadata.
6. Calculate component scores.
7. Apply anti-stack and density penalties.
8. Clamp final score to [0.0, 1.0].

## Expected Columns Logic

- `box_count <= 2`: expected = 2
- `theme == "sequence"`: expected = 3
- `shape_budget >= 10`: expected = 3
- `shape_budget <= 4`: expected = 2
- `box_count >= 6`: expected = 3
- Default: expected = 2

## Component Scores

```
column_score = clamp((unique_columns - 1) / (expected_columns - 1), 0, 1)
normalized_span = (max_center - min_center) / (width - 1)
span_target = 0.22 (when expected_columns >= 3), else 0.12
span_score = min(1, normalized_span / span_target)
```

## Penalties

### Stack Penalty
- Single column: `stack_penalty = 0.0`
- Dominant column has >=85% of boxes and `box_count >= 4`: `stack_penalty = 0.75`
- Otherwise: `stack_penalty = 1.0`

### Column Density Penalty
```
boxes_per_column = box_count / unique_columns
desired_boxes_per_column:
  - sequence: 1.6
  - state_machines: 2.0 (if shape_budget >= 12), else 2.3
  - other themes: 2.2 (if shape_budget >= 12), else 2.8
column_density_penalty = min(1.0, desired / max(1.0, boxes_per_column))
```

## Final Score

```
layout_spread_reward = (0.7 * column_score + 0.3 * span_score) * stack_penalty * column_density_penalty
```

## Test Cases

- Architecture with side branch: score >= 0.55
- Sequence horizontal layout: score >= 0.9
- Sequence vertical stack: score == 0.0 (penalized)

## Purpose

- Reward proper diagram "taste" and aesthetics.
- Prevent vertical stacking reward hacking.
- Encourage 2D layout utilization.

## Related Concepts

- [[rubric]]
- [[reward-hacking]]
- [[alignment-reward]]
- [[ascii-diagram-alignment]]

## Sources

- [[my-first-vibe-rl-experience]]
