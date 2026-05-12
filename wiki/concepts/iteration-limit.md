---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Iteration Limit

## Definition

An iteration limit is a cap on the number of times an autonomous agent loop repeats its core cycle before stopping, preventing runaway costs or infinite execution. In the context of the Ralph autonomous coding technique, the iteration limit is the maximum number of PRD-task-and-commit cycles the agent will perform before halting for human review.

## Key Aspects

- The `afk-ralph.sh` script accepts a max-iteration parameter that stops the loop after a predefined number of task implementations
- Serves as a safety mechanism: without a cap, an autonomous agent could consume excessive API credits or enter an unproductive loop
- Each iteration follows the cycle: read PRD and progress file, pick the next unimplemented task, implement it, commit, update progress
- The loop can also exit early when the agent signals completion using the `<promise>COMPLETE</promise>` sigil
- Choosing an appropriate limit balances autonomy (letting the agent run unsupervised) against cost control and the need for human checkpoints
- Iteration limits are a general pattern across agentic systems: they bound autonomous behavior while preserving the benefits of unattended execution

## Related Concepts

- [[ralph]]
- [[autonomous-coding-agents]]
- [[cost-control]]

## Sources

- [[ralph]]
