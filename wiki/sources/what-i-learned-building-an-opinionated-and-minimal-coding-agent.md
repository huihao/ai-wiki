---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# What I learned building an opinionated and minimal coding agent

## Metadata

- **Author**: Mario Zechner
- **Date**: 2025-11-30
- **URL**: https://mariozechner.at/posts/2025-11-30-pi-coding-agent/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/What I learned building an opinionated and minimal coding agent.md`

## Summary

Mario Zechner details the architecture and philosophy behind Pi, his minimal coding agent. Key principles: minimal system prompt (<1000 tokens), only 4 core tools (read, write, edit, bash), YOLO mode by default, no MCP, no built-in todos, no plan mode, no background bash, no subagents. The result outperforms Claude Code and Codex on Terminal-Bench 2.0.

## Key Takeaways

- Four packages: pi-ai (unified LLM API), pi-agent-core (agent loop), pi-tui (terminal UI), pi-coding-agent (CLI).
- pi-ai supports 8+ providers with cross-provider context handoff and best-effort token tracking.
- Unified LLM API abstracts OpenAI Completions/Responses, Anthropic Messages, Google Generative AI.
- TUI uses differential rendering with synchronized output escape sequences to minimize flicker.
- Minimal system prompt: ~1000 tokens total (prompt + tools). Compare to Claude Code's 10K+ tokens.
- Only 4 tools by default: read, write, edit, bash. Optional read-only tools: grep, find, ls.
- YOLO by default: unrestricted filesystem and command access. Security theater is worse than honest YOLO.
- No MCP: CLI tools with READMEs are more token-efficient (progressive disclosure).
- No subagents: spawn pi itself via bash if needed; fix workflows to avoid mid-session context gathering.
- Terminal-Bench 2.0: Pi + Claude Opus 4.5 outperforms Codex, Cursor, Windsurf, and other harnesses.

## Entities Mentioned

- [[mario-zechner]] — author, creator of Pi
- [[anthropic]] — Claude Code (contrasted)
- [[openai]] — Codex (contrasted)
- [[cursor]] — IDE with agent mode (contrasted)
- [[vercel]] — Vercel AI SDK (criticized)
- DataCrunch — self-hosting platform mentioned
- TypeBox — schema validation library used
- [[simon-willison]] — dual LLM pattern reference

## Concepts Mentioned

- [[pi-agent]] — minimal coding agent philosophy
- [[context-engineering]] — controlling what goes into model context
- [[hugging-face|Unified LLM API]] — abstracting multiple provider APIs
- [[differential-rendering]] — TUI optimization technique
- [[stop-calling-tools-start-writing-code-mode|YOLO mode]] — unrestricted agent access
- [[swe-bench|Terminal-Bench]] — benchmark for terminal-based agents

## Questions / Follow-ups

- Does Pi's minimal-tool philosophy hold for non-coding tasks (e.g., web browsing, database queries)?
- How replicable are Terminal-Bench results across different real-world codebases?
