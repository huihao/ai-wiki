---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Heuristic Learning

## Definition

A learning paradigm in which a coding agent iteratively builds and maintains a programmatic policy through direct code edits — no gradient updates, no neural-network training. The agent reads environment feedback, test failures, logs, videos, and replay traces, then edits rules, state detectors, controllers, tests, and memory. The object being updated is software structure rather than model weights.

## Key Proponents / Critics

- [[jiayi-weng]] — coined the term, demonstrated HL across Atari, MuJoCo, and VizDoom

## Related Concepts

- [[heuristic-system]] — the maintainable system HL produces and evolves
- [[reinforcement-learning]] — the gradient-based alternative HL compares against
- [[continual-learning]] — the broader challenge HL aims to address via engineering rather than weight updates
- [[online-learning]] — learning from live interaction; HL as a candidate approach
- [[model-predictive-control]] — MPC used in HL policies for continuous control
- [[central-pattern-generators]] — CPG oscillators for rhythmic locomotion in HL policies
- [[catastrophic-forgetting]] — HL converts this from a weight-space problem to an engineering problem with regression tests

## Sources

- [[learning-beyond-gradients]] — primary source introducing HL

## Evolution

- **Before coding agents**: Expert systems and rule-based systems had brutal maintenance costs. "Add one rule today to fix case A; tomorrow case B breaks." Humans couldn't afford to maintain growing heuristic sets
- **2026 (Weng)**: Coined HL after observing Codex (gpt-5.4) iteratively building competitive policies for Atari Breakout (864/864), MuJoCo Ant (6146), HalfCheetah (11836.7), and VizDoom (mean 557) — all without neural-network training
- **Key insight**: Coding agents change the maintenance curve for heuristics. Rules, tests, logs, memory, and patches that were scattered engineering materials can now become a continuously updated system
- **Proposed next paradigm**: "Anything that can be continuously iterated on starts to become solvable" — positioned as complementary to (not replacement for) neural-network approaches, especially for online and continual learning
