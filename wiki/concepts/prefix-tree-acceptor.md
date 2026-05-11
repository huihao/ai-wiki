---
created: 2026-05-09
updated: 2026-05-09
tags: []
sources: 1
---

# Prefix Tree Acceptor (PTA)

## Definition

A Prefix Tree Acceptor (PTA) is a directed graph structure used to model execution traces of non-deterministic agents. In a PTA, **nodes** represent observable states (such as UI screenshots or code snapshots) and **edges** represent actions (clicks, keystrokes, API calls) taken to transition between states.

When multiple successful execution traces are collected and merged, the resulting PTA captures all valid paths through the task — including branching (non-deterministic variations) and convergence (where different paths rejoin at the same outcome).

## Role in Agent Validation

PTAs serve as the input representation for **dominator analysis** in agent validation workflows:

1. **Construction**: Collect 2–10 successful traces, build individual PTAs
2. **Semantic merging**: Combine into a unified graph using three-tier equivalence detection (visual metrics → LLM semantic analysis → conservative merging)
3. **Analysis**: Apply dominator analysis to extract essential states from the merged PTA
4. **Validation**: New traces checked against the dominator subtree via topological subsequence matching

### Why Graphs Over Linear Scripts

Linear execution traces cannot represent branching or convergence — two concepts essential to non-deterministic agent behavior. PTAs naturally model:
- **Branching**: Different paths the agent can take (with/without loading screen)
- **Convergence**: Points where divergent paths rejoin (agent returns to main flow after detour)
- **Shared subpaths**: Common milestones across all successful executions

## Related Concepts

- [[dominator-analysis|Dominator Analysis]] — technique applied to PTAs to identify essential states
- [[agent-validation|Agent Validation]] — the broader discipline
- [[control-flow-graph|Control Flow Graph]] — related graph representation from compiler theory

## Sources

- [[validating-agentic-behavior-github-blog|Validating Agentic Behavior When "Correct" Isn't Deterministic]]
