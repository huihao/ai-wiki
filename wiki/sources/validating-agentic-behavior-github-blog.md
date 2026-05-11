---
created: 2026-05-09
updated: 2026-05-09
tags: [source, agent-validation, github-copilot, computer-use]
sources: 1
---

# Validating Agentic Behavior When "Correct" Isn't Deterministic

## Metadata

- **Author**: Gaurav Mittal, Reshabh Kumar Sharma
- **Date**: 2026-05-07
- **URL**: https://github.blog/ai-and-ml/generative-ai/validating-agentic-behavior-when-correct-isnt-deterministic/
- **Fetched**: 2026-05-09
- **Raw file**: Clippings/Validating agentic behavior when "correct" isn't deterministic.md

## Summary

GitHub blog post introducing a "Trust Layer" framework for validating non-deterministic agent behavior. Addresses the fundamental problem that traditional step-by-step testing fails for autonomous agents (like GitHub Copilot Coding Agent with Computer Use), since agents can complete the same task via multiple valid paths. Proposes a graph-based approach using Prefix Tree Acceptors and dominator analysis from compiler theory to learn "essential states" from just 2–10 successful traces, automatically distinguishing must-have milestones from incidental noise.

## Key Takeaways

- **Agent validation gap**: Traditional assertion-based, record-replay, and visual regression tests all break for non-deterministic agents because they assume fixed execution paths. The agent succeeds but the test fails ("false negatives").
- **Essential vs optional states**: Agent behavior decomposes into *essential states* (milestones that must occur for success), *optional variations* (loading spinners, timing differences), and *convergent paths* (different step sequences rejoining at the same outcome).
- **Prefix Tree Acceptor (PTA)**: Execution traces are modeled as directed graphs where nodes are observable states (screenshots, code snapshots) and edges are actions (clicks, keystrokes). Multiple traces are merged into a unified graph using semantic merging.
- **Dominator analysis**: Borrowed from compiler theory — a state A "dominates" state B if every path from start to B must go through A. Applied to the merged graph, this automatically identifies essential vs optional states.
- **Three-tier equivalence detection**: (1) Fast visual metrics (perceptual hashes, SSIM), (2) multimodal LLM semantic analysis for ambiguous cases, (3) conservative merging — only merge when certain.
- **Validation via topological subsequence matching**: New traces pass if essential states appear in correct relative order; extra incidental states are tolerated.
- **Evaluation results**: Dominator Tree achieved 100% accuracy, precision, recall, and F1 vs. agent self-assessment (CUA) at 82.2% accuracy and 69.8% F1. CUA scored 0% F1 on "not a bug" identification; Trust Layer achieved 52.2%.
- **Requirements**: Algorithm needs 2–10 successful traces to build ground truth; cannot learn from failure logs alone.

## Entities Mentioned

- [[github-copilot|GitHub Copilot]] — Copilot Coding Agent (with Computer Use) used as the test subject
- [[vs-code|VS Code]] — Visual Studio Code, the UI environment where agents were tested
- [[github-actions|GitHub Actions]] — CI/CD pipeline integration point for agent validation

## Concepts Mentioned

- [[agent-validation|Agent Validation]] — validating non-deterministic agent behavior via structural methods
- [[dominator-analysis|Dominator Analysis]] — compiler theory technique applied to identify mandatory agent states
- [[prefix-tree-acceptor|Prefix Tree Acceptor]] — directed graph model for execution traces
- [[agent-trust|Agent Trust]] — frameworks for establishing and calibrating trust in autonomous systems
- [[computer-use|Computer Use]] — agents interacting with UIs, browsers, and IDEs
- [[ai-coding-agent|AI Coding Agent]] — autonomous coding assistants

## Key Findings

| Metric | CUA Self-Assessment | Dominator Tree |
|--------|---------------------|----------------|
| Accuracy | 82.2% | 100% |
| Precision | 83.3% | 100% |
| Recall | 60.0% | 100% |
| F1-Score | 69.8% | 100% |

## Current Limitations

- Requires 2–10 successful traces (cannot learn from failures alone)
- LLM dependency for semantic equivalence checking (external API latency)
- Temporal blind spots (cannot flag states persisting too long)

## Questions / Follow-ups

- How does the framework scale to hundreds of essential states across complex multi-app workflows?
- Can dominator analysis be extended with negative examples to learn failure paths?
- How does this compare with programmatic spec-based validation (e.g., spec-driven development)?
