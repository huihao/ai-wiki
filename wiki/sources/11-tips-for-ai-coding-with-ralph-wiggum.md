---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 11 Tips For AI Coding With Ralph Wiggum

## Metadata

- **Author**: Matt Pocock
- **Date**: 2026-01-08
- **URL**: https://www.aihero.dev/tips-for-ai-coding-with-ralph-wiggum
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/ralpha/11 Tips For AI Coding With Ralph Wiggum.md`

## Summary

Matt Pocock shares 11 tips for using Ralph Wiggum, a loop-based autonomous coding agent harness. Ralph runs AI coding CLIs (Claude Code, Codex, etc.) in a loop, letting the agent choose tasks, implement features, run feedback loops, and commit code without human intervention.

## Key Takeaways

- **Ralph is a loop**, not a multi-phase plan. The agent chooses the next task from a PRD rather than the human writing a new prompt each phase.
- **Start with HITL, then go AFK**. Run single iterations while watching, then cap iterations (5–50) and let it run unsupervised.
- **Define scope explicitly**. Use structured PRD items with acceptance criteria and a `passes` field. Vague tasks lead to infinite loops or premature completion.
- **Track progress** in a `progress.txt` file committed to the repo. This gives future iterations context without burning tokens on exploration.
- **Use feedback loops** (types, tests, lint, Playwright MCP). The best setup blocks commits unless everything passes.
- **Take small steps**. Large tasks degrade output quality due to context rot. Prefer one logical change per commit.
- **Prioritize risky tasks first** (architecture, integration points, unknown unknowns). Save polish for later.
- **Explicitly define software quality** in `AGENTS.md` or the prompt. Agents amplify existing code quality—entropy compounds fast.
- **Use Docker sandboxes** for AFK runs to prevent runaway agents from touching system files.
- **Pay to play**. Local models are not yet good enough for Ralph; frontier APIs are necessary.
- **Alternative loops**: test coverage, duplication (jscpd), linting, entropy (code smell cleanup).

## Entities Mentioned

- Matt Pocock — Author.
- [[11-tips-for-ai-coding-with-ralph-wiggum|Ralph Wiggum]] — Loop-based autonomous coding harness.
- [[claude-code-source-leak-harness|Claude Code]] — Primary CLI used with Ralph.
- [[openai]] — Codex.
- [[anthropic]] — Claude Code; research on long-running agents.
- [[phi-4-microsoft-collection|Microsoft]] — Playwright MCP.
- Steve Yegge — Beads task management system.

## Concepts Mentioned

- [[11-tips-for-ai-coding-with-ralph-wiggum|Ralph Wiggum]] — Autonomous loop harness for AI coding agents.
- [[vibe-coding-is-dead-heres-what-replaced-it|Vibe coding]] — Letting AI write code without scrutiny.
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Human-in-the-loop]] — Interactive mode before going autonomous.
- Feedback loops — Automated checks that constrain agent behavior.
- [[context-rot]] — Degraded LLM output as context windows fill.
- [[stop-using-init-for-agents-md|AGENTS.md]] — Repository conventions for AI agents.
- [[docker|Docker sandbox]] — Isolated environment for agent execution.
- [[revolutionizing-software-testing-llm-powered-bug-catchers|Software entropy]] — Tendency of codebases to deteriorate over time.

## Raw Notes

- Ralph can pull tasks from GitHub Issues, Linear, or Beads instead of a local PRD.
- Each iteration can create branches/PRs instead of committing to main.
- The author built a WhatsApp notification for when Ralph finishes.
- Matt uses the Anthropic 5x Max plan (~£90/month) and mostly runs HITL rather than AFK.

## Questions / Follow-ups

- How does Ralph compare to DeepAgents or other agent harnesses?
- What monitoring/alerting should be added for overnight AFK runs?
