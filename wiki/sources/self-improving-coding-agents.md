---
created: 2026-04-28
updated: 2026-04-28
tags: [source, guide]
sources: 1
---

# Self-Improving Coding Agents

## Metadata

- **Author**: Addy Osmani
- **Date**: 2026-01-31
- **URL**: https://addyosmani.com/blog/self-improving-agents/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/Self-Improving Coding Agents.md`

## Summary

A comprehensive guide to setting up autonomous coding agent loops that continuously improve code while you sleep. Covers task orchestration, AGENTS.md memory, validation, scaling, monitoring, and risk management.

## Key Takeaways

- **Ralph Wiggum technique**: iterative agent loop picking small tasks, implementing, validating, committing, and resetting context.
- Tasks should be atomic user stories with unambiguous pass/fail criteria.
- Compound loops: analysis → planning → execution chained together.
- AGENTS.md acts as persistent memory across iterations, accumulating conventions and gotchas.
- Four memory channels: git history, progress log, task state (JSON), and AGENTS.md knowledge.
- Validation: unit tests, type checking, linting, CI integration, optional AI self-evaluation.
- Scaling: planner-worker model with hundreds of agents; Cursor's team built a web browser with 1M+ lines in a week.
- Risk management: run on feature branches, whitelist safe commands, sandboxing, max iteration limits, human QA via PRs.

## Entities Mentioned

- Addy Osmani — author
- Ryan Carson — Compound Product / Ralph loop creator
- Geoffrey Huntley — coined "Ralph Wiggum" technique
- Eric J. Ma — real-time feedback technique
- Wilson Lin (Cursor) — planner-worker scaling research
- Simon Willison — testing best practices for agents

## Concepts Mentioned

- [[context-engineering|Coding agents]] — autonomous development loops
- [[stop-using-init-for-agents-md|AGENTS.md]] — persistent agent memory
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Test-driven development]] — validation in loops
- [[8-factor-agent-breakdown|Multi-agent systems]] — planner-worker scaling
- [[sandboxing]] — security for generated code

## Questions / Follow-ups

- What is the cost per night for running these autonomous loops at scale?
