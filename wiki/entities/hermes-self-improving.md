---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Hermes Self-Improving

## Summary

Hermes Self-Improving refers to the self-improvement loop implemented in NousResearch's Hermes Agent (106k+ GitHub stars), where the agent automatically distills experience from completed tasks into reusable Skills. Unlike agents with manually curated skills, Hermes implements a three-subsystem architecture — Memory, Skill, and Nudge Engine — that enables autonomous learning, knowledge accumulation, and progressive capability growth across sessions.

## Key Aspects

- **Three Subsystems**: Memory (facts about user/environment) + Skill (procedural knowledge with pitfalls) + Nudge Engine (background review triggers) form a unified learning loop
- **Memory Design**: Two files (MEMORY.md + USER.md) with hard character limits (2,200 / 1,375) that force the agent to compress and curate information when full
- **Frozen Snapshots**: Memory is snapshotted at session start and never changes during the session, protecting prefix cache and preventing API re-billing
- **Skill Auto-Creation**: Skills are automatically created for complex tasks with 5+ tool calls, error recovery, user corrections, or non-trivial discovered workflows
- **Skill Self-Patching**: Fuzzy find-and-replace with security scan and automatic rollback; pitfalls are appended, not pre-written
- **Nudge Engine**: Two counters trigger background forked review agents (memory every 10 user turns, skills every 10 iterations)
- **Case Study**: K8s deployment scenario showed tool calls dropping from 12 to 6 and errors from 2 to 0 over three sessions

## Related Concepts
- [[git-backed-memory]]
- [[harness-engineering-claude-code]]

## Sources
- [[hermes-agent-self-improving]]
