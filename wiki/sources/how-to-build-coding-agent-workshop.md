---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agent, tutorial, workshop]
sources: 1
---

# How to Build a Coding Agent: Free Workshop (source)

## Metadata

- **Author**: Geoffrey Huntley
- **Date**: 2025-08-24
- **URL**: https://ghuntley.com/agent/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/how to build a coding agent_ free workshop.md`

## Summary

Geoffrey Huntley's workshop demonstrating that coding agents are just "300 lines of code running in a loop with LLM tokens." Shows how to build a coding agent from scratch using 5 primitives: read, list, bash, edit, and search tools. The workshop was delivered live while an agent built an agent in the background.

## Key Takeaways

- Coding agents are fundamentally simple: loop + tools + LLM tokens
- 5 primitives every coding agent needs: read_file, list_files, bash, edit_file, code_search
- Not all LLMs are agentic — need to choose right model type (agentic vs oracle vs safety-focused)
- Claude Sonnet is a "digital squirrel" — biases toward action, doesn't overthink, chases tool calls
- Context window is like Commodore 64: limited memory, more allocation = worse performance
- Only use context window for one activity — clear after each task
- MCP servers are functions with billboards — but excessive allocation degrades performance
- Can wire other LLMs as tools into agentic LLM (Amp's Oracle: GPT wired into Sonnet)
- 2025 skill: knowing how to build agents is as fundamental as knowing what a primary key is

## Entities Mentioned

- [[geoffrey-huntley]] — workshop presenter, Sourcegraph Amp engineer
- Sourcegraph — employer, building Amp coding agent
- Canva — former employer (tech lead for developer productivity)

## Concepts Mentioned

- [[coding-agent]] — autonomous agent for coding tasks
- [[agentic-models]] — LLMs trained to bias toward tool calling and action
- [[context-window-management]] — treating context as limited memory, clearing between tasks
- [[model-context-protocol]] — Model Context Protocol, tools as functions with descriptions
- [[harness-engineering]] — the thick layer around LLM making agents reliable
- [[oracle-pattern]] — wiring non-agentic LLM as tool for reasoning/checking

## Raw Notes

- Delivered at Web Directions Melbourne, June 2025
- Conference lock-note: "the six-month recap: closing talk on AI"
- The model does all heavy lifting — Cursor, Windsurf, Claude Code, Amp all just loops
- Agentic vs Oracle quadrant: agentic for action, oracle for summarization/reasoning
- Low-safety models (Grok) for security research, high-safety (Anthropic/OpenAI) for ethics-aligned
- Sonnet usable context: advertised 200k, actual ~176k after system prompt + harness overhead
- Less is more: excessive MCP allocation can eat 76k tokens
- GitHub repo: ghuntley/how-to-build-a-coding-agent (Go implementation)
- Open-source examples: SST Open Code, mini-swe-agent (100 lines, 68% SWE-bench verified)
- Leaked harness prompts repo: x1xhlol/system-prompts-and-models-of-ai-tools