---
created: 2026-05-11
updated: 2026-05-11
tags: [source, codex, openai, coding-agent, enterprise, guide]
sources: 1
url: "https://www.freecodecamp.org/news/the-codex-handbook-a-practical-guide-to-openai-s-coding-platform/"
title: "The Codex Handbook: A Practical Guide to OpenAI's Coding Platform"
---

# The Codex Handbook: A Practical Guide to OpenAI's Coding Platform

## Summary

A comprehensive handbook covering OpenAI's Codex coding agent — not a single model but a product/workflow layer wrapping frontier models with file access, shell execution, sandboxes, approval flows, and code review. Covers setup across CLI, IDE extensions, Codex app, and Codex Cloud; effective usage patterns; comparison with Claude Code, GitHub Copilot, and self-hosted alternatives; pricing; enterprise governance; and GPT-5.5 release details (April 2026).

## Key Takeaways

- Codex is a workflow layer, not a single model — it wraps models with file access, execution, sandboxes, and approval flows
- Four surfaces: CLI (terminal-first), IDE extension (VS Code/Cursor/Windsurf), Codex app (parallel tasks with worktrees), Codex Cloud (background GitHub tasks)
- GPT-5.5 launched April 2026 as the new flagship, ~2x per-token cost of GPT-5.4, with major benchmark gains (MRCR v2 1M tokens: 36.6% → 74.0%)
- Highest-leverage adoption: start on small bounded tasks, use as pre-merge reviewer, separate admin/user RBAC, track token consumption not prompt count
- Codex Cloud sandboxes have no internet by default — admins can allowlist registries
- Bounded changes are key: small surface area, clear acceptance criterion, reviewable in minutes, easily revertible
- Intermediate thinking (planning before editing) is critical for multi-file or high-blast-radius tasks

## Key Best Practices

- Give concrete objectives with verifiable outcomes ("Fix failing test X" not "improve codebase")
- Provide structured context: file, current behavior, desired behavior, task, constraints, verification
- Use intermediate thinking for multi-file/architecturally novel/high-risk changes
- Prefer bounded changes over unbounded ones
- Use Codex as a code reviewer, not just a code generator
- Treat token consumption as the cost driver, not prompt count

## Surfaces Comparison

| Surface | Best For |
|---------|----------|
| CLI | Terminal-heavy local work, scriptable multi-step tasks |
| IDE Extension | In-flow editing while already in editor |
| Codex App | Multiple parallel tasks with worktree isolation |
| Codex Cloud | Background work, long-running tasks, PR-style review |

## Entities Mentioned

- [[openai]] — parent company
- [[openai-codex]] — the product
- [[gpt-5-5]] — newest flagship model (April 2026)
- [[gpt-5-4]] — previous flagship, now cheaper default
- [[tatev-aslanyan]] — author
- [[github-copilot]] — competitor in IDE space
- [[anthropic]] — Claude Code competitor in terminal space

## Concepts Mentioned

- [[coding-agent]] — agent that navigates repos, edits files, runs tests
- [[codex-cloud]] — background execution mode with sandboxes
- [[approval-flows]] — human-in-the-loop permission system
- [[bounded-changes]] — small, reviewable, revertible modifications
- [[intermediate-thinking]] — planning before editing
- [[rbac]] — role-based access control for enterprise
