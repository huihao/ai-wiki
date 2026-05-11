---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, coding, testing]
sources: 1
---

# Failing Tests

## Definition

Failing tests are automated test cases that do not pass, serving as diagnostic signals that illuminate gaps, ambiguities, or contradictions in the specification provided to an AI coding agent. In the AI coding loop, failing tests function as a "flashlight" — they don't just indicate bugs, they reveal which rule was unclear, missing, or contradictory in the original prompt, enabling targeted iteration.

## Key Aspects

- "Tests pass: You earned confidence. Tests fail: You earned clarity" — failing tests are not failures but sources of information about specification quality
- When an AI-generated implementation fails tests, the correct diagnostic question is: "Which rule was unclear, missing, or contradictory?" rather than simply retrying with the same specification
- Failing tests enable incremental development: write a small piece, test it, fix the specification based on what the test reveals, regenerate only that piece
- The AI coding loop workflow: define goals → write rules → provide examples → identify edge cases → ask AI for small piece → ask for tests → run them → if fail, improve prompt and repeat
- Failing tests close the evaluation loop that makes agent-generated code trustworthy: "If you can't verify it, you don't own it"
- On failure, adjust by: adding a stricter rule, adding an example that removes ambiguity, adding an edge case that forces correct behavior, then regenerating only the small affected piece
- The discipline of writing tests before (or alongside) generation ensures the evaluation function exists before the agent runs, preventing the "big pile of code you didn't write" problem

## Related Concepts

- [[ai-coding-loop]]
- [[evaluation-function]]
- [[incremental-development]]

## Sources

- [[ai-coding-loop]]
