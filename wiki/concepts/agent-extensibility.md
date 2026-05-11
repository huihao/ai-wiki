---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 2
---

# Agent Extensibility

## Definition
Agent extensibility is the mechanism by which AI agents can acquire new capabilities through installable skill packages, modular tools, and plugin ecosystems. It enables agents to be extended beyond their base functionality without modifying core architecture, similar to how package managers extend programming languages.

## Key Aspects
- Skills are installable packages that extend agent capabilities, distributed through directories and marketplaces (e.g., skills.sh)
- Major providers contribute skills at scale — Microsoft's azure-skills (4.9M installs), GitHub Copilot for Azure (1.7M installs), Lark Suite (1.5M installs)
- Community-driven ecosystem where organizations publish specialized skill packages for different domains
- Skills can be compared to MCP (Model Context Protocol) servers but are typically higher-level, bundling multiple tools and workflows
- Enterprise platforms (e.g., AgentKit Gateway) provide lifecycle management for skills from development to deployment

## Related Concepts
- [[agent-architecture]]
- [[agent-persona]]

## Sources
- [[skill-marketplace]]
- [[the-agent-skills-directory]]
