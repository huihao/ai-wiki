---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Mental Model

## Definition

A mental model is an internal representation of how a system works, used by developers to reason about code behavior, diagnose bugs, and make architectural decisions. In the context of AI-assisted development, maintaining accurate mental models becomes critical as agents can obscure system complexity.

## Key Aspects

- Debugging relies on forming hypotheses based on mental models of how code should behave, then testing those hypotheses against observed behavior
- Rubber duck debugging works by articulating mental models aloud, forcing the developer to surface implicit assumptions and find gaps in their understanding
- When working with AI agents, developers risk losing their mental model of the codebase as agents make changes the developer did not fully track
- The "merchants of complexity" problem arises when agents introduce architectural decisions that degrade the developer's ability to maintain accurate mental models
- Effective agent usage requires maintaining mental models through deliberate code review, even when agents handle implementation details
- Slowing down and writing architecture by hand helps developers build and preserve mental models through the friction of manual construction

## Related Concepts

- [[mental-model]]
- [[merchants-of-complexity]]

## Sources

- [[debugging-techniques]]
- [[rubber-duck-debugging]]
