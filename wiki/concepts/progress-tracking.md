---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Progress Tracking

## Definition
Progress tracking in autonomous AI coding workflows is the practice of maintaining a persistent file that records which tasks from a PRD have been completed, which are in progress, and which remain. It enables the agent to resume work across sessions and allows human supervisors to monitor autonomous development at a glance.

## Key Aspects
- In the Ralph loop, the agent reads both the PRD and a progress file at the start of each iteration
- After implementing and committing a task, the agent updates the progress file to reflect completion
- Enables autonomous operation across multiple sessions without losing context
- Provides a lightweight form of state management for stateless AI agents
- The completion sigil (`<promise>COMPLETE</promise>`) in the PRD signals when all tasks are done
- Progress files can be markdown, JSON, or any structured format that the agent can reliably parse
- Allows human-in-the-loop oversight: supervisors can review progress, intervene, or redirect the agent

## Related Concepts
- [[ralph]]
- [[prd]]
- [[ai-coding-loop]]

## Sources
- [[ralph]]
