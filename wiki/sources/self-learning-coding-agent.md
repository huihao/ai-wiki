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
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/Your Coding Agent Keeps Making the Same Mistakes. I Built a Fix.md

## Summary

Introduction of pi-self-learning extension that gives coding agents git-backed memory, extracting mistakes and fixes from completed tasks and maintaining a durable learning system.

## Key Takeaways

### The Problem

Coding agents have zero memory:
- Every session is fresh start
- Same errors repeated in different files
- Lessons taught yesterday forgotten
- No accumulation of experience

### pi-self-learning Solution

**Automatic Process After Each Task**:
1. Extract what went wrong and how it was fixed
2. Append entry to daily markdown file (YYYY-MM-DD.md)
3. Update core/CORE.md with top-ranked durable learnings
4. Write full history to long-term-memory.md
5. Commit everything to dedicated memory git repository

**Memory Folder Structure**:
```
.pi/self-learning-memory/
├── .git/
├── daily/YYYY-MM-DD.md
├── monthly/YYYY-MM.md
├── long-term-memory.md
└── core/CORE.md
```

### Memory Loading Configuration

Inject memory into each turn:
- **includeCore**: Inject CORE.md (enabled by default)
- **includeLatestMonthly**: Inject monthly summaries
- **instructionMode**: strict/advisory/off — enforces checking memory logs

### Commands

- `/learning-now`: Generate reflection now
- `/learning-month [YYYY-MM]`: Generate monthly summary
- `/learning-daily`: Show today's daily file path
- `/learning-toggle`: Enable/disable for current branch
- `/learning-status`: Show effective config

### Installation

```bash
pi install npm:pi-self-learning
```

Or local copy:
```bash
cp extensions/self-learning.ts ~/.pi/agent/extensions/
```

## Entities Mentioned

- [[matteo-collina|Matteo Collina]] — Node.js expert and extension creator
- [[pi|pi]] — Minimal coding agent framework

## Concepts Mentioned

- [[self-learning|Self-Learning]] — Agent memory and learning from mistakes
- [[git-backed-memory|Git-Backed Memory]] — Using Git for memory persistence
- [[durable-learnings|Durable Learnings]] — Long-lasting knowledge extraction
- [[reflection|Reflection]] — Process of analyzing mistakes and fixes
- [[memory-hierarchy|Memory Hierarchy]] — Daily, monthly, long-term, core structure
- [[learning-frequency|Learning Frequency]] — Ranking by frequency and recency

## Raw Notes

Memory is the missing piece for long-term agent usefulness. Without it, even the smartest agent just makes the same mistakes repeatedly.

## Questions / Follow-ups

- How effective is the learning in practice?
- What types of mistakes get captured best?
- How does instruction mode affect agent behavior?
- Can this work with other agent frameworks?
