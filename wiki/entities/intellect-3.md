---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, model]
---

# INTELLECT-3

## Metadata

- **Type**: Language Model
- **Creator**: Prime Intellect
- **Purpose**: RL training model

## Description

INTELLECT-3 is a language model provided by Prime Intellect, initially used for reinforcement learning experiments before being replaced by Qwen3-4B for better performance and efficiency.

## Performance Issues

- Runs were slow.
- Completions were long (especially thinking tokens).
- Model iterated multiple times on diagrams, running out of context.
- Not optimal for ASCII diagram alignment tasks.

## Replacement

Codex autonomously proposed switching to Qwen3-4B-Instruct-2507 for:
- Faster training runs.
- Larger context window.
- No thinking mode overhead.
- Better LoRA config experimentation.

## Related Entities

- [[prime-intellect]] — Provider.
- [[qwen]] — Replacement model.

## Sources

- [[my-first-vibe-rl-experience]]
