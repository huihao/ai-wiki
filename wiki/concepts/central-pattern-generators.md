---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 0
---

# Central Pattern Generators

## Definition

Neural circuits (or their programmatic equivalents) that produce rhythmic motor patterns without requiring sensory feedback. In robotics and locomotion, CPGs generate basic gait patterns — periodic oscillations of joint angles that produce walking, running, or crawling motions. In [[heuristic-learning]], CPGs are implemented as programmatic phase oscillators with PD controllers, forming the base reflex layer that MPC corrects residually.

## Related Concepts

- [[heuristic-learning]] — CPGs used as base reflexes in HL locomotion policies
- [[model-predictive-control]] — MPC corrects CPG output residually
- [[reinforcement-learning]] — traditional RL learns gaits end-to-end; HL builds them programmatically

## Sources

- [[learning-beyond-gradients]] — CPG+PD used in Ant (score 6146) and HalfCheetah (11836.7) HL policies

## Evolution

- **Biological CPGs**: Discovered in invertebrate nervous systems (lamprey swimming, crayfish escape). Neural circuits that produce rhythmic patterns without brain input
- **Programmatic CPGs in robotics**: Implemented as phase oscillators with sinusoidal target angles and PD controllers. Left/right legs in opposite phase, hip/ankle joints tracking oscillating targets
- **CPGs in Heuristic Learning (2026, Weng)**: Codex designed four-leg phase oscillators with stance/swing phases, yaw feedback, second/third harmonics, and speed-adaptive phase — reaching Ant score 6146 when combined with residual MPC
