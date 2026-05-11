---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, philosophy]
sources: 1
---

# Minimalism

## Definition

Minimalism in software engineering is the philosophy of building with only what is strictly necessary, rejecting features that add complexity without clear value. Applied to coding agents, minimalism means achieving competitive performance with minimal tools and prompts, prioritizing simplicity, observability, and human control over feature richness.

## Key Aspects

- The pi coding agent demonstrates minimalism: 4 core tools (Read, Write, Edit, Bash) versus Claude Code's 40, with a system prompt under 1,000 tokens versus 10,000+
- Frontier models are already trained (via RL) to understand coding agent patterns; extensive prompt engineering is often unnecessary
- "YOLO by default" approach: full system access without guardrails, recognizing that security theater in other agents is ineffective; run in a container if concerned
- No built-in to-do lists (use external TODO.md), no plan mode (write to PLAN.md), no MCP support (use CLI tools with on-demand README reading)
- No sub-agents: sub-agents indicate poor planning; gather context in a separate session first and create reusable artifacts
- Benchmark results: pi with Claude Opus 4.5 is competitive with Codex, Cursor, and Windsurf on Terminal-Bench 2.0, proving minimalism does not sacrifice performance
- Key insight: "Existing harnesses make context engineering hard by injecting stuff behind your back that isn't surfaced in UI"
- Philosophy: friction helps developers understand what they want; slowing down enables learning, growth, and maintainable systems

## Related Concepts

- [[microframework]]
- [[martin-fowler]]
- [[low-recall]]

## Sources

- [[what-i-learned-building-minimal-coding-agent]]
