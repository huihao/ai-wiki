---
created: 2026-05-09
updated: 2026-05-09
tags: []
sources: 1
---

# Agent Validation

## Definition

Agent Validation is the discipline of verifying that autonomous agents achieve correct outcomes in non-deterministic environments, where the same task can be completed via multiple valid execution paths. Unlike traditional software testing (which asserts fixed execution sequences), agent validation focuses on whether *essential milestones* were reached, tolerating incidental variation in path, timing, and intermediate states.

## The Problem

Autonomous agents — particularly those using Computer Use to interact with UIs — produce non-deterministic execution traces. Loading screens appear or don't; the agent clicks a button vs. uses a keyboard shortcut; network latency causes timing drift. Step-by-step assertion tests fail even when the agent succeeds, producing costly false negatives in CI pipelines.

### Why Traditional Testing Breaks

| Approach | Limitation for Agents |
|----------|----------------------|
| Assertion-based | Requires manual specification of every check; cannot account for valid alternative paths |
| Record-and-replay | Fragile to timing, rendering, and environmental noise |
| Visual regression | Pixel-level comparison without semantic understanding |
| ML oracles | Black-box, requires thousands of training examples, not explainable |

## Structural Validation via Dominator Analysis

The most promising approach to agent validation uses **dominator analysis** (from compiler theory) combined with **Prefix Tree Acceptors (PTAs)**:

1. **Capture**: Collect 2–10 successful execution traces, model as directed graphs (PTAs)
2. **Generalize**: Merge traces into a unified graph using three-tier equivalence detection (visual metrics → LLM semantic analysis → conservative merging)
3. **Extract**: Apply dominator analysis to identify *essential states* (states every successful path must pass through)
4. **Validate**: New traces checked via topological subsequence matching — only essential states must appear in order; incidental states are ignored

### Essential vs Optional States

- **Essential states**: Dominators — milestones that *must* occur for success to be real (e.g., "Search Results" screen)
- **Optional variations**: Incidental states like loading spinners or decorative UI changes that vary by environment
- **Convergent paths**: Different step sequences that rejoin at the same outcome (hotkey vs. menu)

## Evaluation Results

GitHub's Trust Layer framework (Dominator Tree method) achieved 100% accuracy on agent validation, compared to agent self-assessment (CUA) at 82.2% — demonstrating that structural validation significantly outperforms self-reported success.

## Related Concepts

- [[dominator-analysis|Dominator Analysis]] — the compiler theory technique underlying agent validation
- [[agent-trust|Agent Trust]] — broader frameworks for establishing trust in autonomous systems
- [[trust-boundaries|Trust Boundary]] — security concept separating trusted/untrusted domains
- [[computer-use|Computer Use]] — agents that interact with UIs, creating non-deterministic validation challenges
- [[output-validation|Output Validation]] — validation of model outputs (complementary to behavioral validation)

## Sources

- [[validating-agentic-behavior-github-blog|Validating Agentic Behavior When "Correct" Isn't Deterministic]] — GitHub blog introducing the Trust Layer framework
