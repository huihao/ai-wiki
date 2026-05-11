---
created: 2026-04-28
updated: 2026-04-28
tags: [data, machine-learning]
---

# Synthetic Data Generation

## Metadata

- **Type**: Data Generation Method
- **Context**: ML training data creation
- **Related**: Reinforcement Learning

## Definition

Synthetic data generation is the process of creating artificial training datasets using LLMs or other generative models instead of collecting real-world data. This is particularly useful for novel tasks where no existing datasets are available.

## Key Parameters

For ASCII diagram generation task:
- **theme**: flowcharts, architecture, sequence, state_machines.
- **use_case**: Combinations like "failure recovery path for payments platform involving queue".
- **audience**: new hires, engineers, product managers, executives, support agents, customers, students.
- **detail_level**: high level, medium detail, low level with edge cases.
- **style**: concise labels, clear step names, human-friendly phrasing.
- **constraint**: Prompts like "Include a retry loop and a timeout".
- **shape_budget**: 4, 6, 8, 10, 12, 16, 20 (complexity hints).

## Advantages

- Creates diverse, combinatorially-generated samples.
- Enables parameter testing quickly and cheaply.
- No need for expected outputs for single-turn tasks without fixed answers.
- Avoids using LLM-as-judge for tasks LLMs are bad at.

## Implementation Tips

- Use semaphores and retries for concurrency limiting.
- Design scripts with parameters to test quickly and cheaply.
- Use parameters/features to generate diverse data combinatorially and stochastically.
- Provide examples to the LLM generating the dataset.

## Example Scale

- 7,200 synthetic samples for ASCII diagram alignment.
- 200 initial samples for parameter testing.

## Quality Analysis

- Check for exact and semantic duplicates.
- Verify spread across themes and diagram types.
- Ensure good mix of difficulty levels.

## Related Concepts

- [[reinforcement-learning]]
- [[vibe-rl]]
- [[dataset-quality]]

## Sources

- [[my-first-vibe-rl-experience]]
