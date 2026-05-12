---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Getting Started With Ralph

## Metadata

- **Author**: Matt Pocock
- **Date**: 2026-01-08
- **URL**: https://www.aihero.dev/getting-started-with-ralph
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Getting Started With Ralph.md`

## Summary

A step-by-step guide to setting up the Ralph loop — a technique for running AI coding agents autonomously by repeatedly executing the same prompt. The agent picks tasks from a PRD, commits after each feature, and updates progress so the human can return to working code.

## Key Takeaways

- Ralph is a loop technique, not a product: the agent reads a PRD and progress file, implements one task, commits, and updates progress.
- Uses Claude Code in Docker sandbox for isolation.
- `ralph-once.sh` runs a single iteration with human oversight; `afk-ralph.sh` loops autonomously with a max-iteration cap.
- Key flags: `--permission-mode acceptEdits` (auto-accept file edits), `-p` (print/non-interactive mode).
- Completion sigil `<promise>COMPLETE</promise>` lets the script detect when the PRD is finished.
- Tasks can be sourced from GitHub Issues, Linear, or beads instead of a local PRD.

## Entities Mentioned

- Matt Pocock — author
- [[geoffrey-huntley]] — creator of the Ralph technique
- [[anthropic]] — Claude Code
- [[docker]] — sandbox environment

## Concepts Mentioned

- [[ralph]] — autonomous agent loop using PRD + progress file
- [[claude-code-source-leak-harness|Claude Code]] — the agentic coding tool used
- [[stop-calling-tools-start-writing-code-mode|Plan mode]] — Claude Code feature for iterating on plans
- [[docker|Docker sandbox]] — isolated execution environment

## Questions / Follow-ups

- How does Ralph compare to other autonomous coding loops like OpenAI Codex's harness?
- What are the cost implications of running Ralph loops for extended periods?
