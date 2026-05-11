---
created: 2026-05-11
updated: 2026-05-11
tags: [concept]
sources: 0
---

# RLHF (Reinforcement Learning from Human Feedback)

## Definition

A training pipeline for aligning large language models to human preferences through three stages: Supervised Fine-Tuning (SFT) on demonstrations, Reward Modeling from human preference comparisons, and Proximal Policy Optimization (PPO) to optimize the policy against the learned reward. RLHF bridges the gap between "capable" and "helpful, harmless, and honest" by training models to maximize human-approved outputs.

## Related Concepts

- [[scaling-laws]] — RLHF interacts with model scale; larger models benefit more from alignment
- [[optimization]] — PPO optimization technique used in RLHF's final stage
- [[next-word-prediction]] — Pre-training objective that RLHF builds upon
- [[prompting]] — RLHF improves model response to prompts

## Sources

Referenced across multiple AI alignment and training methodology sources.
