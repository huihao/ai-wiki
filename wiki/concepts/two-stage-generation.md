---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Two-Stage Generation

## Definition

Two-stage generation is a text generation pattern where the model first produces an intermediate representation or draft in one pass, then refines, validates, or completes it in a second pass, separating the creative or planning phase from the execution or verification phase.

## Key Aspects

- The first stage handles high-level planning, outline creation, or draft generation without worrying about exact formatting or constraints.
- The second stage takes the intermediate output and applies refinement, constraint checking, or detailed completion, producing a polished final result.
- In the context of AI coding agents, two-stage generation separates problem analysis (understanding the task, identifying edge cases) from code synthesis (writing the actual implementation).
- This pattern mirrors human writing processes: outline first, then fill in details, which tends to produce more coherent and complete output than attempting everything in a single pass.
- CodeMode in MCP uses an analogous two-stage approach: first discover and retrieve tool schemas (planning), then write and execute a composition script (execution).
- Two-stage approaches can also separate reasoning from verification: the first stage generates a candidate answer, and the second stage checks it against constraints or tests.
- The pattern reduces errors compared to single-pass generation because each stage can focus on a narrower set of concerns.

## Related Concepts

- [[transforms]] -- the code-composition approach that exemplifies two-stage tool use
- [[chain-of-thought]] -- single-pass reasoning that two-stage generation extends
- [[verification]] -- the second-stage checking that ensures output correctness

## Sources

- [[stop-calling-tools-code-mode]]
