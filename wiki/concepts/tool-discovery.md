---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 2
---

# Tool Discovery

## Definition

Tool discovery is the process by which AI agents identify, select, and understand available external tools and services that can augment their capabilities beyond pure text generation. It encompasses both curated directories of AI tools for human users and the mechanism by which agentic systems dynamically find and invoke appropriate tools for specific tasks.

## Key Aspects

- AI tool navigation sites aggregate thousands of tools across categories (chat, image generation, video, coding, writing), reducing search friction for users seeking appropriate solutions
- Agent tool discovery involves parsing tool descriptions, function signatures, and docstrings to understand capabilities without explicit hardcoding
- The Agent Skills Standard (initiated by Anthropic, now multi-vendor) provides a structured format (SKILL.md with frontmatter) for encoding tool capabilities in agent-readable form
- Tool collections evolve rapidly: sites tracking 5000+ tools require continuous curation and quality control to remain useful
- MCP (Model Context Protocol) provides a standardized protocol for agents to discover and connect to external tools at runtime
- Tool discovery in coding agents often involves dynamic registration: agents scan available tools at startup and match them to task requirements
- Discovery quality directly impacts agent performance: selecting the wrong tool or missing a relevant tool leads to suboptimal or failed task completion
- Open-source tool directories (GitHub awesome lists, community wikis) complement commercial aggregation platforms

## Related Concepts

- [[tool-invocation]]
- [[agent-skills]]
- [[mcp-protocol]]

## Sources

- [[ai-tool-collection-navigation-site]]
