---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
---

# Best Practices for Claude Code

**Author:** Anthropic
**URL:** https://code.claude.com/docs/en/best-practices

## Summary

Official best practices guide for Claude Code. Key patterns: (1) Always give Claude a way to verify its work (tests, screenshots); (2) Explore first with plan mode, then code; (3) Provide specific context with file references and constraints; (4) Configure CLAUDE.md with project conventions, skills, hooks, subagents, plugins; (5) Manage sessions aggressively with /clear, checkpoints, subagents for investigation; (6) Scale with parallel sessions, non-interactive mode (-p), auto mode, worktrees, agent teams; (7) Avoid common failures: kitchen sink sessions, over-correcting, over-specified CLAUDE.md, trust-then-verify gap, infinite exploration.

## Key Concepts

- [[claude-md]] — project-level instruction file
- [[auto-mode]] — classifier-mediated permission mode
- [[non-interactive-mode]] — headless CLI mode (-p flag)
- [[session-management]] — named sessions, resume, branch
- [[checkpointing]] — conversation/code restore points
- [[auto-compaction]] — context window management
- [[context-engineering]] — curating model context
- [[skills]] — domain knowledge extensions
- [[subagents]] — isolated context delegates

## Related Entities

- [[anthropic]] — developer of Claude Code
- [[claude-code]] — the product itself
