---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
sources: 1
---

# Learning Beyond Gradients

## Metadata

- **Author**: Jiayi Weng
- **Published**: 2026-05
- **URL**: https://trinkle23897.github.io/learning-beyond-gradients/
- **Accessed**: 2026-05-12

## Summary

Introduces Heuristic Learning (HL), a paradigm where coding agents (Codex/gpt-5.4) iteratively build and maintain programmatic policies — no neural network training, no gradient updates. Demonstrates HL across Atari (Breakout 864/864, Atari57 median HNS 0.83 at 10M steps), MuJoCo (Ant 6146, HalfCheetah 11836), and VizDoom (D3 Battle mean 557) using only code edits driven by environment feedback, test failures, video replays, and experiment logs. Argues HL is a candidate for the next paradigm: anything that can be continuously iterated on starts to become solvable.

## Key Takeaways

- **Heuristic Learning (HL)**: Loop of state → action → feedback → code edit, where the object being updated is software structure rather than neural-network parameters. Feedback can come from environment reward, tests, logs, videos, replays, or human input
- **Heuristic System (HS)**: More than a policy file — contains programmatic policy, state representation, feedback channels, experiment records, replays/tests, memory, and an update mechanism. Rules, feedback, history, and update path must all connect
- **Key results without neural networks**: Breakout 864 (theoretical max), Ant 6146 (CPG + residual MPC), HalfCheetah 11836.7 (staged-tree MPC), VizDoom D3 mean 557 (screen CV + public game variables), Atari57 batch median HNS 0.83 at ~10M steps
- **Maintenance curve shift**: Coding agents change the maintenance economics of heuristics. Expert systems died because humans couldn't afford to maintain them; coding agents can continuously deliver intelligence into a Heuristic System
- **Coupling complexity**: Defined as the level of interdependent states, rules, tests, feedback signals, and historical constraints an update must account for simultaneously. Bounded by module boundaries, test coverage, observability on the code side; model capability, context length, memory quality on the agent side
- **HL failure modes mirror catastrophic forgetting**: New rules can break old scenarios, narrow tests can be exploited, patches can break shared interfaces, rules can pile up until maintenance capacity is exceeded. Solution: explicit regression tests, golden traces, compression into simpler representations
- **System 1/System 2 decomposition for robotics**: Specialized shallow NNs (fast perception) + HL (rules, tests, replays, safety) + LLM agent (System 2, periodic feedback and self-update). Hierarchical HL: joint → limb → whole-body → task level
- **Expressivity limits**: Some environments (Montezuma's Revenge) need composable macro-actions, recoverable search state, and long-term memory beyond plain `if else`. HL is bounded by what code can express — cannot imagine pure Python solving ImageNet without a neural network

## Entities Mentioned

- [[jiayi-weng]] — author, EnvPool maintainer, coined Heuristic Learning

## Concepts Mentioned

- [[heuristic-learning]] — HL: the learning process where coding agents update code, not weights
- [[heuristic-system]] — HS: the maintainable software system that HL produces and evolves
- [[catastrophic-forgetting]] — classical NN forgetting; HL converts this to an engineering problem
- [[continual-learning]] — the broader challenge HL aims to address
- [[model-predictive-control]] — MPC used in Ant/HalfCheetah policies (short-horizon planning)
- [[central-pattern-generators]] — CPG oscillators for rhythmic locomotion in Ant/HalfCheetah
- [[online-learning]] — learning from live interaction; HL as a candidate approach
- [[reinforcement-learning]] — Deep RL baseline that HL is compared against

## Questions / Follow-ups

- How does HL scale to tasks with high-dimensional perceptual input (vision-heavy environments)?
- What is the computational cost of Codex iterations compared to equivalent RL training compute?
- Can HL and neural-network RL be combined in a single system where each handles what it does best?
