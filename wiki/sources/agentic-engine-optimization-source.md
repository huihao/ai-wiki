---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Agentic Engine Optimization (AEO)

## Metadata

- **Author**: Addy Osmani
- **Date**: 2026-04-11
- **URL**: https://addyosmani.com/blog/agentic-engine-optimization/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/rag/Agentic Engine Optimization (AEO).md`

## Summary

Addy Osmani introduces **Agentic Engine Optimization (AEO)**: the practice of structuring, formatting, and serving technical content so AI coding agents can consume it effectively. It draws an analogy to SEO but targets autonomous agent consumers rather than humans.

## Key Takeaways

- AI agents consume docs in single `GET` requests, bypassing all client-side analytics. Traditional UX metrics (scroll depth, time-on-page) are invisible for agent traffic.
- Agents have distinct HTTP fingerprints (e.g., `axios/1.8.4` for Claude Code, `curl/8.4.0` for Cline/Junie, `colly` for Windsurf).
- **Token economics** is critical: a 193K-token API guide can exceed an agent's context window, causing truncation or hallucination.
- **Practical token targets**: quick-start <15K tokens, API ref pages <25K tokens, conceptual guides <20K tokens.
- **AEO Stack**:
  1. Access control (`robots.txt`, `agent-permissions.json`)
  2. Discovery (`llms.txt` — sitemap for agents)
  3. Capability signaling (`skill.md` — declarative capability docs)
  4. Content formatting (Markdown, consistent headings, tables for parameters)
  5. Token surfacing (expose token counts in metadata)
  6. "Copy for AI" UX bridge
- `AGENTS.md` is becoming the default entry point for AI agents in repositories, analogous to `README.md` for humans.
- `agentic-seo` is a lightweight audit tool for AEO readiness.

## Entities Mentioned

- [[addy-osmani]] — Author.
- [[anthropic]] — Claude Code.
- [[openai]] — Codex.
- [[cursor]] — AI coding IDE.
- Cline — AI coding agent.
- Cisco — DevNet adopted `AGENTS.md` in their GitHub template.
- [[cloudflare]] — Shipped "Copy for AI" variant.

## Concepts Mentioned

- [[agentic-engine-optimization-source|Agentic engine optimization]] — Optimizing docs for AI agent consumption.
- LLMs.txt — Structured index for AI agents.
- Skill.md — Declarative capability documentation.
- [[stop-using-init-for-agents-md|AGENTS.md]] — Repository entry point for AI agents.
- Token economics — Context window budgeting for agent documentation access.
- [[model-context-protocol|MCP]] — Model Context Protocol for direct agent integration.

## Raw Notes

- Research paper cited: "Developer Experience with AI Coding Agents" (arXiv 2604.02544v1).
- AI referral sources to monitor: labs.perplexity.ai, chatgpt.com, claude.ai, copilot.microsoft.com, gemini.google.com.

## Questions / Follow-ups

- Will search engines or documentation platforms natively support AEO signals?
- How should multilingual documentation adapt AEO principles?
