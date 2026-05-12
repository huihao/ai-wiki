---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# What is Claude Code?

## Metadata

- **Author**: Vishwas Gopinath
- **Date**: 2026-03-02
- **URL**: https://www.builder.io/blog/what-is-claude-code
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/What is Claude Code_.md`

## Summary

A comprehensive overview of Claude Code as of early 2026, covering installation, pricing, features, and comparisons. Claude Code is Anthropic's agentic coding tool available across terminal CLI, VS Code extension, JetBrains IDEs, desktop app, and web.

## Key Takeaways

- Agentic loop: describe task → read context → plan → execute → verify → self-correct.
- Default model: Sonnet 4.6; Opus 4.6 for complex reasoning. Switchable mid-session.
- Auto-compaction summarizes earlier conversation when sessions run long.
- Permission model defaults to asking before writes/runs; configurable auto-approval.
- Advanced features: MCP, subagents, agent teams (experimental), custom skills/slash commands, hooks, GitHub integration, Remote Control.
- Pricing: Pro $20/mo, Max 5x $100/mo, Max 20x $200/mo, API pay-per-use. Teams average $6/dev/day.
- Installation: native installer (`curl -fsSL claude.ai/install.sh | bash`) replaced npm; includes auto-updates.
- Cursor comparison: Cursor is best AI-powered IDE; Claude Code is best agentic coding experience.

## Entities Mentioned

- Vishwas Gopinath — author
- [[anthropic]] — creator of Claude Code
- [[builder-io]] — publisher
- [[cursor]] — competing AI coding tool
- [[openai]] — Codex CLI competitor
- OpenCode — open-source competitor
- [[google]] — Gemini CLI competitor

## Concepts Mentioned

- [[claude-code-source-leak-harness|Claude Code]] — agentic coding tool from Anthropic
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Agentic loop]] — act-observe-adjust cycle
- [[model-context-protocol|MCP]] — external tool integration
- [[subagents|Subagent]] — specialized helpers within sessions
- [[8-factor-agent-breakdown|Agent teams]] — parallel multi-session coordination
- [[agent-skill|Skills]] — reusable workflows via SKILL.md
- [[hooks]] — event-driven automation
- [[genai-output-control-design-patterns|Remote Control]] — manage sessions from phone/browser

## Questions / Follow-ups

- How does agent teams' token consumption scale with team size?
- What is the practical difference between subagents and agent teams for typical workflows?
