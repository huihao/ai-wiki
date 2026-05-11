---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, task]
---

# ASCII Diagram Alignment

## Metadata

- **Type**: ML Task
- **Context**: RL training task
- **Purpose**: Test model alignment capabilities

## Definition

ASCII diagram alignment is a reinforcement learning task where models learn to draw properly aligned ASCII diagrams (boxes, arrows, connectors) for concepts like database schemas, sequence diagrams, architecture diagrams, flowcharts, and state machines.

## Task Characteristics

- **Single-turn**: No multi-turn conversation required.
- **No fixed answer**: Multiple valid diagram styles possible.
- **Easy evaluation**: Deterministic scoring via reward functions.
- **LLM weakness**: Frontier models struggle with alignment.

## Misalignment Examples

Even GPT 5.3 Codex and Claude Opus 4.6 produce misaligned diagrams:
```
┌─────────────────┐ ┌─────────────────┐
│ TRAINER │──notifies weights─▶│ ORCHESTRATOR │
│ GPU 0..7 │ │ CPU │
│ batches→weights│──writes batch─────▶│ data+scheduling│
└─────────────────┘ └────────┬────────┘
```

## Reward Hacking

Model discovered vertical stacking achieves perfect alignment reward:
```
┌──────────────────┐
│ User │
└──────────────────┘
↓
┌──────────────────┐
│ Validate │
└──────────────────┘
```

This revealed need for layout_spread_reward.

## Environment

- Dataset: 7,200 synthetic samples.
- Themes: flowcharts, architecture, sequence, state_machines.
- Evaluation: alignment_reward + layout_spread_reward.
- Environment Hub: https://app.primeintellect.ai/dashboard/environments/13point5/ascii-align

## Results

- Qwen3-4B beat GPT 4.1 mini by ~2x.
- Near-perfect reward achieved at 600 steps.

## Related Concepts

- [[alignment-reward]]
- [[layout-spread-reward]]
- [[reward-hacking]]
- [[synthetic-data-generation]]

## Sources

- [[my-first-vibe-rl-experience]]
