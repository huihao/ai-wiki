---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, rl]
---

# Alignment Reward

## Metadata

- **Type**: Reward Function
- **Context**: Reinforcement Learning, ASCII diagrams
- **Purpose**: Score box/arrow alignment

## Definition

Alignment reward is a reward function that evaluates how well ASCII diagram boxes, connectors, and arrows are aligned. It counts aligned vs misaligned elements and returns a score from 0.0 to 1.0.

## Components Evaluated

- **Rectangles**: Corners (┌, ┐, └, ┘) and edges (─, │).
- **Connectors**: Junctions (├, ┤, ┬, ┴, ┼).
- **Arrows**: Direction indicators (▶, ▀, etc.).

## Allowed Characters

For box structure: `┌┐ └ ┘ ─ │ ├ ┤ ┬ ┴ ┼`

## Algorithm

1. Detect valid boxes by checking for corners and closing edges.
2. Count aligned vs misaligned boxes.
3. Validate connectors and arrows.
4. Check incoming/outgoing sides for arrows.
5. Compute final score based on alignment ratio.

## Error Metrics

- `arrow_error_metric`: Count of arrow alignment errors.
- `connector_error_metric`: Count of connector errors.
- `rectangle_error_metric`: Count of rectangle errors.
- `misaligned_total_metric`: Total misalignment count.

## Test Cases

```python
def test_arrow_right_wrong_incoming_side():
    diagram = """┌────┐ ┌────┐
│ A │▶──│ B │
└────┘ └────┘"""
    stats = detect_misaligned(diagram)
    assert stats["arrow_errors"] == 1
    assert stats["misaligned"] >= 1
```

## Score Range

- Perfect alignment: 1.0
- Partial alignment: 0.0 to 1.0
- Complete misalignment: 0.0

## Limitation

Does not reward for diagram "taste" or aesthetics (led to vertical stacking reward hacking). Complemented by layout_spread_reward.

## Related Concepts

- [[rubric]]
- [[layout-spread-reward]]
- [[ascii-diagram-alignment]]
- [[reward-hacking]]

## Sources

- [[my-first-vibe-rl-experience]]
