---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, product, agent]
sources: 3
---

# Pi Agent

## Definition

A minimal, opinionated coding agent created by Mario Zechner. Pi's philosophy is radical minimalism: a sub-1000-token system prompt, only 4 core tools (read, write, edit, bash), no MCP support, no built-in plan mode, no background bash, and YOLO-by-default execution. Despite (or because of) its minimalism, Pi outperforms Claude Code and Codex on Terminal-Bench 2.0.

## Key Proponents / Critics

- **Creator**: [[mario-zechner]]
- **Advocate**: [[armin-ronacher]] — "the coding agent I use almost exclusively"
- **Built on**: Pi powers [[openclaw]]

## Related Concepts

- [[what-i-learned-building-an-opinionated-and-minimal-coding-agent|Minimal coding agent]] — philosophy of doing less
- [[context-engineering]] — paramount in Pi's design
- [[stop-calling-tools-start-writing-code-mode|YOLO mode]] — unrestricted execution
- [[differential-rendering]] — TUI optimization
- [[chrome-devtools-mcp-debug-browser-session|Session trees]] — branching conversations
- [[hugging-face|Unified LLM API]] — multi-provider abstraction

## Sources

- [[what-i-learned-building-an-opinionated-and-minimal-coding-agent]] — technical deep dive
- [[openclaw|Pi: The Minimal Agent Within OpenClaw]] — Armin Ronacher's advocacy
- [[thoughts-on-slowing-the-fuck-down]] — creator's critique of agentic coding

## Evolution

- **2025**: Mario Zechner builds Pi out of frustration with bloated harnesses.
- **2025**: Terminal-Bench 2.0 validates minimal approach.
- **2026**: Pi becomes the engine underneath OpenClaw.
- **Ongoing**: Extensions ecosystem grows (pi-self-learning, pi-subagents, etc.).
