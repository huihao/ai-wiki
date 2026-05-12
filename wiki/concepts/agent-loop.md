---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 3
---

# Agent Loop

## Definition
An agent loop is the core execution pattern for autonomous coding agents: a continuous cycle of reading context, deciding on an action, executing it (via tool calls to a filesystem or shell), validating the result, and resetting before the next iteration.

## Key Aspects
- **Ralph Wiggum technique**: An iterative loop where the agent picks a small atomic task, implements it, validates with tests/linting, commits, and resets context—designed for overnight autonomous operation.
- **Five primitives**: Every coding agent needs at minimum: read file, list files, bash, edit file, and search tools; the entire agent is roughly "300 lines of code running in a loop."
- **Context window management**: The loop must clear context between tasks since context windows behave like limited memory (a "Commodore 64"), with performance degrading past ~60% utilization.
- **Compound loops**: Analysis, planning, and execution phases can be chained together, each with their own iteration cycle.
- **Validation gates**: Each iteration includes unit tests, type checking, linting, CI integration, and optionally AI self-evaluation before committing and resetting.
- **Risk management**: Loops should run on feature branches, use whitelisted commands, enforce max iteration limits, and require human QA via pull requests.

## Loop Types

### Single Agent Loop
Sequential task processing: Pick task → Implement → Validate → Commit → Repeat. Stateless execution with context reset each iteration.

### Compound Loops
Multi-phase agent orchestration:
1. Analysis loop: Read reports, identify priorities
2. Planning loop: Generate PRD and tasks
3. Execution loop: Implement tasks

### Parallel Loops
Concurrent agent execution with planner-worker hierarchy, coordination via locks or queues.

## Components

1. Task selection mechanism
2. Implementation engine
3. Validation suite (tests, linting)
4. Commit integration
5. Progress tracking
6. Stop conditions

## Best Practices

- Atomic tasks with clear criteria
- Fresh context per iteration
- Automated validation required
- Max iteration limits
- Human override capability
- Progress logging

## Stop Conditions

- All tasks complete
- Max iterations reached
- Time limit exceeded
- Idle detection (no commits for N iterations)
- Error loop detected

## Related Concepts
- [[coding-agent]]
- [[agents-md]]
- [[auto-memory]]
- [[context-bloat]]

## Sources
- [[coding-agent]]
- [[mihail-eric]]
- [[the-emperor-has-no-clothes-claude-code]]
