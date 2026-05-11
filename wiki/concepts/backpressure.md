---
created: 2026-05-11
updated: 2026-05-11
tags: [agent, feedback, reliability]
sources: 0
---

# Backpressure

## Definition

In the context of AI coding agents, backpressure refers to external feedback signals (test failures, compile errors, linter warnings, build failures) that act as gates rejecting invalid agent output. Unlike vague human instructions, backpressure provides concrete, actionable signals that agents can use to repair their own work iteratively.

## Key Aspects

- Tests, type checks, lints, builds act as rejection gates
- More informative than vague instructions
- Concrete signals enable self-repair
- Foundation of the Ralph loop's iteration mechanism

## Related Concepts

- [[ralph-loop]] — Ralph loops use backpressure to drive iteration
- [[test-driven-development]] — tests provide backpressure for implementation

## Sources

- [[what-is-ralph-loop-bash-coding-pattern]] — backpressure as a core loop mechanism
