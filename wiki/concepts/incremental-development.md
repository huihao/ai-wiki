---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Incremental Development

## Definition

Incremental development is a software engineering practice of building systems one small, verifiable piece at a time rather than generating the entire codebase in one shot. In the context of AI-assisted coding, it means breaking a task into tiny deliverables, asking the AI for each piece separately, running tests, and only moving on once correctness is confirmed.

## Key Aspects

- Contrasts with one-shot AI output, which produces a large unverified codebase requiring extensive review and debugging
- Follows a disciplined workflow: define the goal, write rules and examples, specify edge cases, then ask the AI for one small piece at a time
- Uses failing tests as a debugging flashlight -- failures indicate unclear or missing rules, which are then refined before regenerating code
- Builds trust incrementally: each passing test earns confidence in the implementation
- The prompt template includes a goal, rules (3-7 bullets), examples (input to output), edge cases, and a request for one runnable file with tests
- Fundamentals of software engineering -- data flow, decomposition, security, and verification -- become more important, not less, when using AI tools

## Related Concepts

- [[ai-coding-loop]]
- [[verification]]

## Sources

- [[ai-coding-loop]]
