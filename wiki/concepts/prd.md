---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# PRD (Product Requirements Document)

## Definition
A PRD (Product Requirements Document) is a structured document that defines the goals, features, constraints, and expected behavior of a product or feature before development begins. In AI-assisted coding workflows like the Ralph loop, the PRD serves as the primary input that the agent reads to understand what to implement, acting as the single source of truth for autonomous development.

## Key Aspects
- Defines the "what" and "why" of a feature, leaving implementation details to the developer or agent
- In the Ralph autonomous coding loop, the agent reads the PRD, picks one task, implements it, commits, and updates a progress file before repeating
- PRDs can be sourced from GitHub Issues, Linear tickets, or local markdown files
- A well-structured PRD includes a clear goal, rules (constraints), examples (expected behavior), and edge cases
- Enables human-in-the-loop oversight: the human writes the PRD, the agent executes iteratively
- The completion sigil `<promise>COMPLETE</promise>` signals to the loop when all PRD tasks are done
- PRDs serve as context that persists across agent sessions, preventing the "lobotomy" problem of stateless AI interactions

## Related Concepts
- [[ralph-loop]]
- [[prompt-template]]
- [[ai-coding-loop]]

## Sources
- [[ralph]]
