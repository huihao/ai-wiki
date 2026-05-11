---
created: 2026-05-11
updated: 2026-05-11
tags: [git, isolation, parallelism]
sources: 0
---

# Git Worktrees

## Definition

A Git feature that allows multiple working trees associated with the same repository, enabling parallel development on different branches without stashing or switching. In the context of AI coding agents, Git worktrees allow multiple Ralph loops to run simultaneously on different features, each with its own working directory.

## Key Aspects

- Multiple working directories for one repository
- Each worktree has its own branch
- Enables parallel agent loops on different features
- Avoids stashing/switching overhead

## Related Concepts

- [[ralph-loop]] — Ralph loops can run in parallel via worktrees
- [[sandbox-execution]] — worktrees provide feature-level isolation

## Sources

- [[what-is-ralph-loop-bash-coding-pattern]] — Git worktrees for parallel Ralph loops
