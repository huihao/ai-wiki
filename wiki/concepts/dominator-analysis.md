---
created: 2026-05-09
updated: 2026-05-09
tags: []
sources: 1
---

# Dominator Analysis

## Definition

In graph theory, a node A **dominates** node B if every path from the start node to B must pass through A. Dominator analysis computes these relationships across a directed graph, producing a *dominator tree* where each node's parent is its *immediate dominator* — the last mandatory node before it on any path.

Originally developed for compiler optimization (identifying mandatory execution points in control-flow graphs), dominator analysis has been applied to **agent validation** to automatically distinguish essential from optional agent states.

## Application to Agent Validation

When agent execution traces are modeled as directed graphs (Prefix Tree Acceptors), dominator analysis automatically extracts the *minimal definition of correctness*:

- **Essential states** = dominators of the goal state — milestones every successful run must pass through
- **Optional states** = non-dominators — states that appear in some paths but not others (loading screens, intermediate states)
- **Convergent paths** = branches that rejoin after the dominator, indicating the agent recovered from a non-deterministic detour

### Example

In a VS Code search workflow:
- "Open Search Dialog" **dominates** "Search Results" (every path to results goes through it) → **essential**
- "Loading screen" does **not** dominate anything (it's absent in faster runs) → **optional**

This allows validation to focus exclusively on essential states, ignoring incidental environmental noise.

## Technical Details

### Dominator Tree Construction

For a control-flow graph G = (V, E, start):
- `idom(v)` = immediate dominator of v (the unique node that dominates v and is dominated by all other dominators of v)
- The dominator tree has edges `(idom(v), v)` for all v ≠ start
- Can be computed in O(V²) naively or O(V × α(V)) using the Lengauer-Tarjan algorithm

### Subsequence Matching

To validate a new trace against the dominator tree:
1. Extract the sequence of essential states from the new trace
2. Check they appear in the correct topological order
3. Extra non-essential states are ignored (A → X → B → Y → C passes if reference is A → B → C)

## Related Concepts

- [[agent-validation|Agent Validation]] — the broader discipline where dominator analysis is applied
- [[prefix-tree-acceptor|Prefix Tree Acceptor]] — graph model for execution traces that dominator analysis operates on
- [[control-flow-graph|Control Flow Graph]] — the classic application domain for dominator analysis

## Sources

- [[validating-agentic-behavior-github-blog|Validating Agentic Behavior When "Correct" Isn't Deterministic]] — GitHub blog introducing dominator analysis for agent validation
