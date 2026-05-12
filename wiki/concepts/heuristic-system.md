---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Heuristic System

## Definition

The maintainable software system produced and evolved by [[heuristic-learning]]. Unlike an isolated policy file, an HS contains: a programmatic policy, state representation, feedback channels, experiment records, replays or tests, memory, and an update mechanism executed by a coding agent. Rules, feedback, history, and the update path must all connect for it to qualify as an HS.

## Key Proponents / Critics

- [[jiayi-weng]] — defined HS as the artifact HL maintains

## Related Concepts

- [[heuristic-learning]] — the process that maintains and evolves a Heuristic System
- [[coupling-complexity]] — the level of interdependent states, rules, tests, and feedback signals an HS can sustain
- [[model-predictive-control]] — one program form HS can use for continuous control
- [[continual-learning]] — HS addresses forgetting via regression tests and compression rather than weight preservation

## Sources

- [[learning-beyond-gradients]] — primary source defining HS

## Evolution

- **Pre-coding-agent era**: Heuristic systems existed as expert systems, but were too expensive for humans to maintain. They decayed into "big balls of mud" — systems that remember many things but in forms nobody dares touch
- **2026 (Weng)**: Coined "Heuristic System" to distinguish the maintainable artifact from a simple policy. Key properties: explicit memory (trials, summaries, failure reasons, version diffs), regression-testability, and the need for both absorption (ingest feedback) and compression (fold patches into simpler representations)
- **Design principle**: A healthy HS requires two operations: (1) absorb feedback — write new failures, logs, rewards back into the system; (2) compress history — fold local patches into simpler, more maintainable representations. An HS that only grows will exceed maintenance capacity
