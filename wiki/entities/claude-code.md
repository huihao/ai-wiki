---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, product, coding-agent, agent]
sources: 8
---

# Claude Code

## Summary

Claude Code is Anthropic's agentic coding tool that runs in the terminal, IDE, desktop app, and web. It reads the entire codebase, understands project structure, and autonomously edits files, runs shell commands, and manages Git from natural language instructions. The flagship model is Sonnet 4.6 with Opus 4.6 for complex reasoning.

In March 2026, portions of its source code leaked, shifting community focus from prompt secrets to the deeper engineering lesson: reliable coding agents depend on a thick "harness" of execution environment, permissions, memory mechanisms, and verification loops rather than model intelligence alone.

## Key Attributes

- **Creator**: [[anthropic]]
- **Type**: Terminal-based coding agent
- **Flagship models**: Sonnet 4.6 (default), Opus 4.6 (complex reasoning)
- **Notable event**: Source code leak (March 2026)
- **Key harness features**: State externalization, deterministic controls, permission tiers, context firewalling via subagents
- **Advocates**: [[builder-io]], [[freeCodeCamp]], [[the-evolution-of-modern-rag-architectures|Daily Dose of DS]] — tutorial creators
- **Analysts**: [[bojie-li]] — dissected 510K-line source leak

## Related Entities

- [[anthropic]] — parent company
- [[openai]] — competitor with Codex
- [[auto-memory-copilot-cli|GitHub Copilot CLI]] — competitor terminal agent
- [[openai|OpenAI Codex]] — competitor coding agent
- [[cursor]] — competitor AI IDE
- OpenCode — competitor coding agent
- [[gemini-cli-cheatsheet|Gemini CLI]] — competitor coding agent
- [[gemini-cli|Gemini-CLI]] — Google's AI coding tool, architecture comparison
- [[openspec|OpenSpec]] — Spec-driven development framework integrated with Claude Code

## Related Concepts

- [[harness-engineering-overview|Harness Engineering]] — the core lesson from the leak; Claude Code is a prime example
- [[context-rot]] — addressed via state externalization to files like CLAUDE.md
- [[context-engineering|Context Engineering]] — comprehensive context configuration features (CLAUDE.md, Rules, Skills, Subagents, MCP, Hooks)
- [[agentic-engineering-engineering-revolution|Agentic Engineering]] — act-observe-adjust cycle enabled by Claude Code
- [[model-context-protocol]] — external tool integration
- [[subagents|Subagent]] — specialized helpers within sessions
- [[8-factor-agent-breakdown|Agent teams]] — parallel multi-session coordination
- [[genai-output-control-design-patterns|Deterministic Control]] — system-layer enforcement in Claude Code's architecture
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|Permission Architecture]] — tiered permission model for agent autonomy
- [[agent-skills]] — lazy-loaded context modules

## Sources

- [[claude-code|What is Claude Code?]] — comprehensive feature overview
- [[anatomy-of-the-claude-folder|Anatomy of the .claude/ Folder]] — configuration guide
- [[claude-code|What Claude Code Actually Chooses]] — benchmark study
- [[claude-code|Harness Is the Key to Making Agents Reliable]] — source code analysis
- [[getting-started-with-ralph]] — uses Claude Code for loops
- [[openclaw|Pi: The Minimal Agent Within OpenClaw]] — compares to Claude Code
- [[claude-code-source-leak-harness]] — comprehensive community analysis
- [[context-engineering-coding-agents]] — context configuration primer by Thoughtworks
- [[ai-coding-agent-design|AI Coding 智能体设计]] — Architecture comparison with Gemini-CLI

## Evolution

- **2025**: Experimental release; rapid iteration on features.
- **Early 2026**: MCP, subagents, agent teams, desktop app, and web access ship.
- **Apr 2026**: Source code leaked via npm source maps (510K lines TypeScript), revealing deep harness engineering.

## Contradictions / Open Questions

- How much of the leaked architecture represents current vs. experimental code?
- What differentiates Claude Code's harness from OpenAI's Codex harness?
