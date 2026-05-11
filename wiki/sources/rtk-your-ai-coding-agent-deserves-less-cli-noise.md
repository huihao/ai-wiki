---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# rtk — Your AI coding agent deserves less CLI noise

## Metadata

- **Author**: rtk-ai.app
- **Date**: 2014-01-01 (site default; product is 2025-2026)
- **URL**: https://www.rtk-ai.app/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/rtk — Your AI coding agent deserves less CLI noise.md`

## Summary

rtk is a CLI proxy written in Rust that compresses command outputs before they reach the AI agent's context window. It reports 60–90% token savings across common commands like find, git status, grep, and cargo test.

## Key Takeaways

- Problem: CLI output pollutes context window; 70% of API bills can be noise.
- Solution: rtk compresses command outputs transparently via an auto-rewrite hook.
- Token savings: 89.2% average across 2,900+ real commands; 138M tokens saved in one developer's usage.
- Per-command savings: cargo test 91.8%, git status 80.8%, find 78.3%, grep 49.5%.
- RTK Cloud: team analytics, savings reports, rate limit alerts, enterprise controls.
- Install: `curl -fsSL ... | sh` or `brew install rtk`; activate with `rtk init --global`.
- Pricing: free for open-source; teams from $15/dev/month.

## Entities Mentioned

- [[rtk-your-ai-coding-agent-deserves-less-cli-noise|rtk-ai]] — creator of rtk

## Concepts Mentioned

- [[context-engineering|Context pollution]] — CLI noise filling context windows
- Token compression — reducing tokens sent to LLM
- [[gemini-cli-cheatsheet|CLI proxy]] — transparent command rewriting
- PreToolUse hook — intercepting agent tool calls

## Questions / Follow-ups

- How does rtk's compression affect the agent's ability to understand command output?
- Can similar compression be applied to non-CLI contexts (e.g., file reads, web fetch)?
