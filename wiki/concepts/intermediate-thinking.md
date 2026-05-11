---
created: 2026-05-11
updated: 2026-05-11
tags: [agent, planning, best-practices]
sources: 0
---

# Intermediate Thinking

## Definition

A prompting technique for AI coding agents where the model is asked to plan in writing before editing files. The agent outlines its approach, identifies files to touch, calls out assumptions, and identifies risks — then waits for human approval before making any edits. Produces a predictable, reviewable plan at zero cost to the codebase.

## Key Aspects

- Plan before code: outline approach in 5-10 bullets
- List files to touch and why
- Call out assumptions and open questions
- Identify the riskiest part of the change
- Wait for approval before any edits

## When to Use

- Multi-file or cross-cutting changes
- Architecturally novel for the codebase
- Hard to test (diff is the only signal)
- High blast radius (auth, payments, data migrations)

## Related Concepts

- [[bounded-changes]] — intermediate thinking produces bounded change plans
- [[coding-agent]] — agents benefit from planning before execution

## Sources

- [[codex-handbook-practical-guide]] — intermediate thinking as a key technique
