---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# My First Vibe RL Experience

## Metadata

- **Author**: Sriraam (13point5)
- **Date**: 2026-03-05
- **URL**: https://www.sriraam.me/blog/vibe-rl
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/rl/My first Vibe RL experience.md`

## Summary

An experimental walkthrough using Prime Intellect and OpenAI Codex to perform "Vibe RL" - a semi-autonomous reinforcement learning workflow where an AI agent generates synthetic data, monitors experiment results in realtime, spots reward hacking, iterates on reward functions, and builds custom interfaces. The author trained Qwen3-4B to beat GPT 4.1 mini by ~2x at ASCII diagram alignment tasks.

## Key Takeaways

- **Vibe RL Definition**: Post-training with RL where an agent generates synthetic data, observes results in realtime, inspects rollouts, finds bugs, spots reward hacking, improves reward functions, proves iterations with test cases, builds bespoke UI, and iterates with varying autonomy.
- **Critical requirements**: RL stack must have CLI/MCP/API access (used Prime Intellect), agent needs access to all tools/platforms a human would use.
- **Key workflow steps**:
  1. Synthetic data generation with diverse parameters (theme, use_case, audience, detail_level, style, constraint, shape_budget).
  2. Build environment with simple reward function as "golden skeleton".
  3. Vibecode an RL Studio to inspect rollouts, rubric bugs, reward hacking.
  4. Maintain test cases for reward functions to gain confidence in rubric.
  5. Write scripts for repetitive tasks (processing rollouts, running test suites, analyzing dataset diversity).
- **Reward hacking discovery**: Model found that stacking all blocks vertically achieved perfect reward, revealing the need to reward for "diagramness/taste" via layout_spread_reward.
- **Technical findings**:
  - Minimum LoRA alpha of 128 needed for this task (lower values stayed in local minima).
  - Batch size 512 was optimal (128 too small).
  - Learning rate needed increase from 1e-6 to 2e-6 for stability.
  - Scaling to 600 steps achieved near-zero error metrics.

## Entities Mentioned

- [[prime-intellect]] — RL stack platform with CLI access (Verifiers, Prime RL, Prime Lab, Prime CLI).
- [[openai-codex]] — Coding agent (GPT 5.3 Codex X-high) used for Vibe RL.
- [[qwen]] — Model trained (Qwen3-4B-Instruct-2507).
- [[13point5]] — Author's entity/handle.
- [[hugging-face]] — Dataset management.
- [[weights-and-biases]] — Experiment tracking.
- [[shadcn]] — UI library for RL Studio.
- [[intellect-3]] — Initial model used before switching to Qwen.

## Concepts Mentioned

- [[vibe-rl]] — Semi-autonomous RL workflow with realtime agent interaction.
- [[vibe-coding]] — Agent-driven code generation with minimal prompting.
- [[reinforcement-learning]] — Post-training method used.
- [[reward-hacking]] — Model exploiting reward function flaws (vertical stacking).
- [[synthetic-data-generation]] — Creating diverse training data via LLM.
- [[lora]] — Low-rank adaptation for efficient fine-tuning.
- [[rollouts]] — Model outputs sampled during RL training.
- [[rubric]] — Set of reward functions scoring model performance.
- [[layout-spread-reward]] — Rewarding 2D space utilization in diagrams.
- [[alignment-reward]] — Rewarding proper box/arrow alignment in ASCII art.
- [[prime-cli]] — CLI for interacting with RL runs in realtime.
- [[prime-lab]] — Hosted platform for RL training, evaluation, inference.
- [[verifiers]] — Python library for building RL environments.
- [[ascii-diagram-alignment]] — Task: drawing aligned ASCII diagrams.

## Raw Notes

- 7,200 synthetic samples generated using GPT 4.1 mini.
- No LLM-as-judge because LLMs are bad at both generating and judging aligned diagrams.
- RL Studio feature: "Copy Rollouts" button to export agent-friendly markdown.
- Scripts sync Prime CLI output to JSON for RL Studio.
- Codex autonomously proposed switching from INTELLECT-3 to Qwen3-4B based on performance observations.
- Chatan (by Christian from Prime Intellect) and NeMo Data Designer (NVIDIA) mentioned for dataset analysis.

## Questions / Follow-ups

- How does Vibe RL scale to multi-turn tasks with fixed answers?
- Can Vibe RL workflows be standardized into reusable "RL meta-skills"?
- What are the failure modes when agents have too much autonomy in RL loops?
