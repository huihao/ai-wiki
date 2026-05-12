---
created: 2026-05-12
updated: 2026-05-12
tags: [entity]
sources: 1
---

# Jiayi Weng

## Summary

AI researcher and EnvPool maintainer who coined Heuristic Learning (HL), demonstrating that coding agents can iteratively build competitive programmatic policies for Atari, MuJoCo, and VizDoom without neural-network training. Argues HL is a candidate for the next paradigm after pretraining, RLHF, and large-scale RL/RLVR.

## Key Attributes

- Maintains [EnvPool](https://github.com/sail-sg/envpool) — high-performance vectorized environment library
- Website: https://trinkle23897.github.io/cv/
- Coined "Heuristic Learning" and "Heuristic System" terminology
- Experiments used Codex (gpt-5.4) as the coding agent
- Key results: Breakout 864/864, Ant 6146, HalfCheetah 11836.7, Atari57 median HNS 0.83
- Acknowledged collaborators: Costa Huang, Tairan He, Hao Sheng

## Related Entities

- [[openai]] — Codex/gpt-5.4 was the coding agent used in HL experiments

## Related Concepts

- [[heuristic-learning]] — HL paradigm coined by Weng
- [[heuristic-system]] — HS: the maintainable system HL produces
- [[reinforcement-learning]] — Deep RL baselines HL is compared against
- [[model-predictive-control]] — MPC used in Ant/HalfCheetah HL policies

## Sources

- [[learning-beyond-gradients]] — primary source introducing HL

## Contradictions / Open Questions

- HL's expressivity ceiling is untested on perception-heavy tasks (e.g., ImageNet-scale vision)
- Cost comparison of Codex iterations vs equivalent RL training compute is not provided
