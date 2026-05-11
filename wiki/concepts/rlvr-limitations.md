---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# RLVR Limitations

## Definition

RLVR (Reinforcement Learning with Verifiable Rewards) limitations refer to the findings, particularly from the NeurIPS 2025 runner-up paper "Does RL Really Incentivize Reasoning Capacity in LLMs?", that demonstrate RLVR enhances sampling efficiency but does not genuinely expand reasoning capacity beyond what the base model already possesses.

## Key Aspects

- RLVR improves sampling efficiency: the model gets better at finding correct solutions faster, but cannot solve problems beyond the base model's capability
- RL narrows exploration while amplifying rewarded trajectories, creating an illusion of improvement
- The base model already contains the reasoning capacity; RL merely surfaces and concentrates existing capabilities
- Suggests that current RL paradigms need fundamental redesign to genuinely expand reasoning
- Masterfully executed negative finding: rigorous experimental design that challenges a widely accepted assumption in the field
- One of three runner-up papers at NeurIPS 2025, recognized for its important corrective contribution
- Implications for the AI safety and alignment community: RLHF may not make models more capable, just more focused
- Points to need for new training paradigms that can genuinely grow reasoning capacity rather than merely optimize existing capacity

## Related Concepts

- [[reinforcement-learning-from-human-feedback]] -- Reinforcement Learning from Human Feedback, the broader training paradigm
- [[reward-model]] -- The learned proxy for human judgment used in RLHF
- [[reasoning-capacity]] -- The genuine ability to solve novel problems
- [[neural-scaling-laws]] -- Related question of how model capabilities grow with scale

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
