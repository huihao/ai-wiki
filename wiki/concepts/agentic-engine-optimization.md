---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, documentation, optimization]
sources: 1
---

# Agentic Engine Optimization

## Definition

The practice of structuring, formatting, and serving technical content so that AI coding agents can consume it effectively. AEO draws an analogy to SEO but targets autonomous agent consumers rather than human readers.

## Key Attributes

- **Agent HTTP fingerprints**: Agents have distinct user agents (e.g., `axios/1.8.4` for Claude Code, `curl/8.4.0` for Cline/Junie, `colly` for Windsurf).
- **Token economics**: A 193K-token API guide can exceed an agent's context window, causing truncation or hallucination.
- **Practical token targets**: quick-start <15K tokens, API ref pages <25K tokens, conceptual guides <20K tokens.
- **AEO Stack**:
  1. Access control (`robots.txt`, `agent-permissions.json`)
  2. Discovery (`llms.txt` — sitemap for agents)
  3. Capability signaling (`skill.md` — declarative capability docs)
  4. Content formatting (Markdown, consistent headings, tables for parameters)
  5. Token surfacing (expose token counts in metadata)
  6. "Copy for AI" UX bridge
- **Default entry point**: `AGENTS.md` is becoming the standard repository entry point for AI agents, analogous to `README.md` for humans.

## Related Concepts

- [[stop-using-init-for-agents-md|AGENTS.md]] — repository entry point for agents
- LLMs.txt — structured index for AI agents
- Skill.md — declarative capability documentation
- Token economics — context window budgeting
- [[model-context-protocol]] — direct agent integration protocol
- [[agent-skills]] — reusable capability packages

## Sources

- [[agentic-engine-optimization-source|Agentic Engine Optimization (AEO)]] — Addy Osmani's introduction

## Evolution

- **2025**: Early adopters begin structuring docs for agent consumption.
- **2026**: Addy Osmani formalizes AEO as a discipline; Cisco DevNet and Cloudflare ship AEO-compatible features.
- **Emerging**: `agentic-seo` audit tools and native platform support.
