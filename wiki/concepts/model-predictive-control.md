---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Model Predictive Control

## Definition

A control strategy that uses a model of the system to plan short-horizon action sequences, score them against an objective, execute only the first action, then reobserve and replan. The key insight is "think a short distance into the future while walking." In [[heuristic-learning]], MPC is used as a residual controller on top of a base reflex (e.g., CPG gait), correcting the policy at each step with short-horizon planning.

## Related Concepts

- [[heuristic-learning]] — MPC used in HL policies for Ant and HalfCheetah
- [[central-pattern-generators]] — CPG provides the base gait; MPC provides residual corrections
- [[reinforcement-learning]] — traditional RL learns a policy end-to-end; MPC plans at inference time

## Sources

- [[learning-beyond-gradients]] — MPC used in MuJoCo Ant (6146 score) and HalfCheetah (11836.7) HL policies

## Evolution

- **Classical MPC**: Model-based planning for robotics and industrial control. Requires an accurate dynamics model
- **MPC in RL**: Used as a planning component in model-based RL (e.g., MuZero)
- **MPC in Heuristic Learning (2026, Weng)**: MPC as a residual controller on top of CPG gait. At each step: sample dozens of small residual action sequences inside a local MuJoCo model, score them, execute only the first, then replan with warm-start from unfinished previous plan. Combines rhythmic reflex (CPG) with adaptive planning (MPC)
