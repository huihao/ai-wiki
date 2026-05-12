---
created: 2026-05-11
updated: 2026-05-11
tags: [source, ralph-loop, coding-agent, autonomous-coding, bash]
sources: 1
url: "https://kingy.ai/ai/what-is-a-ralph-loop-how-a-bash-one-liner-became-an-ai-coding-pattern/"
title: 'What Is a "Ralph Loop"? How a Bash One-Liner Became an AI Coding Pattern'
---

# What Is a "Ralph Loop"? How a Bash One-Liner Became an AI Coding Pattern

## Summary

A comprehensive explanation of the Ralph loop pattern — a deliberately simple orchestration technique for running AI coding agents against tasks repeatedly until completion. Named after Ralph Wiggum from The Simpsons by Geoffrey Huntley. The pattern wraps a capable AI tool in a bash loop with a specification, verification mechanism, completion signal, and iteration limit.

## Key Takeaways

- Ralph is a bash loop, not a product: `for i in $(seq 1 $MAX); do agent < PROMPT.md; done`
- The prompt stays the same while everything around it changes: codebase, test results, git history, progress.txt
- Memory is the filesystem, not the model's conversation history — source files, progress logs, git commits
- Six components: specification (PRD), agent invocation (bash loop), memory layer (filesystem), verification (tests/lints), completion signal (`<promise>COMPLETE</promise>`), safety limit (max iterations)
- Stop hooks in Claude Code intercept exit and re-inject prompt when completion criteria unmet
- Works best for: TDD, boring backlog work, greenfield prototypes, tasks with programmatic verification
- Fails for: high-stakes architectural decisions, production incidents, tasks requiring broad permissions
- Community has converged on bash-loop approach (independent context windows) over plugin's "run forever in one session"
- Key failure modes: ambiguous scope, verification gaming (deleting tests), compounding drift, runaway cost ($50-100+ per 50-iteration loop)
- Start with human-in-the-loop (`ralph-once.sh`), graduate to autonomous (`afk-ralph.sh`)

## The Six Components

1. **Specification**: PRD, roadmap, or issue with acceptance criteria and verification commands
2. **Agent invocation**: Bash loop or Stop hook wrapping CLI agent
3. **Memory layer**: Filesystem state (not conversation history) — code, logs, git history
4. **Verification**: Unit tests, lints, type checks, builds, browser automation
5. **Completion signal**: Sentinel string like `<promise>COMPLETE</promise>`
6. **Safety limit**: Max iteration cap to prevent runaway token costs

## Entities Mentioned

- [[geoffrey-huntley]] — coined and popularized the Ralph technique
- [[matt-pocock]] — created AIHero guide for Ralph setup
- [[anthropic]] — official Claude Code Ralph plugin
- [[curtis-pyke]] — author of this article

## Concepts Mentioned

- [[ralph]] — the autonomous agent loop pattern
- [[stop-hook]] — mechanism for intercepting agent exit in Claude Code
- [[prd]] — Product Requirements Document as task specification
- [[backpressure]] — tests/lints/builds acting as gates rejecting invalid output
- [[sandboxing]] — Docker/worktree isolation for agent execution
- [[git-worktrees]] — parallel Ralph loops on different features
