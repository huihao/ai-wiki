---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Your Coding Agent Keeps Making the Same Mistakes. I Built a Fix

## Metadata

- **Author**: Matteo Collina
- **Date**: 2026-03-08
- **URL**: https://adventures.nodeland.dev/archive/your-coding-agent-keeps-making-the-same-mistakes/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Your Coding Agent Keeps Making the Same Mistakes. I Built a Fix.md`

## Summary

Matteo Collina introduces `pi-self-learning`, a Pi extension that gives coding agents git-backed memory. After each task, it extracts what went wrong, appends to daily markdown files, updates a ranked CORE.md with durable learnings, and commits everything to a dedicated memory git repository.

## Key Takeaways

- Core problem: coding agents have zero memory; every session is a fresh start.
- Memory folder layout: `.pi/self-learning-memory/` with daily/, monthly/, core/CORE.md, long-term-memory.md.
- core/CORE.md ranks learnings by frequency and recency.
- Configurable context injection: includeCore, includeLatestMonthly, instructionMode (strict/advisory/off).
- Commands: /learning-now, /learning-month, /learning-daily, /learning-toggle, /learning-status.
- Installation: `pi install npm:pi-self-learning` or copy extension locally.

## Entities Mentioned

- [[matteo-collina]] — author, creator of pi-self-learning
- [[pi-agent|Pi]] — coding agent platform

## Concepts Mentioned

- [[machine-learning|pi-self-learning]] — git-backed memory extension for Pi
- [[agent-builder-memory-system|Agent memory]] — durable learning system for coding agents
- [[self-improving-agent]] — agent that learns from past mistakes
- [[agent-builder-memory-system|Memory git repository]] — version-controlled agent memory

## Questions / Follow-ups

- How does this compare to Claude Code's built-in memory/MEMORY.md system?
- What is the optimal balance between memory injection and context window limits?
