---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 3
---

# AGENTS.md

## Definition
AGENTS.md is a convention for providing persistent, project-specific context to coding agents via a markdown file placed in a repository root or subdirectory, encoding non-discoverable conventions, tooling preferences, and gotchas that agents cannot infer from the codebase alone.

## Key Aspects
- **Human-authored beats auto-generated**: Research (ICSE JAWs 2026) shows human-authored AGENTS.md reduced agent runtime by 28.64% and tokens by 16.58%, while LLM-generated context files reduced success by 2-3% and increased cost by 20%+ (ETH Zurich study).
- **What belongs in AGENTS.md**: Non-discoverable information like tooling preferences (e.g., `uv` vs `pip`), project-specific gotchas, coding conventions, and architectural decisions—things an agent cannot discover by exploring the codebase.
- **Hierarchical structure**: Per-module AGENTS.md files outperform monolithic root files by providing context relevant to the specific area of code being worked on.
- **Persistent memory across iterations**: In autonomous agent loops, AGENTS.md acts as accumulated knowledge across iterations, capturing conventions and learned gotchas that persist when the context window is cleared.
- **Evolving playbook**: The ACE framework (ICLR 2026) treats AGENTS.md as a dynamic document that evolves through use, outperforming static instructions by 12.3%.
- **Four memory channels**: Autonomous agents use git history, progress logs, task state (JSON), and AGENTS.md knowledge as complementary persistent memory channels.

## Related Concepts
- [[agent-loop]]
- [[coding-agent]]
- [[auto-memory]]
- [[context-bloat]]

## Sources
- [[agent-loop]]
- [[autonomous-coding-agents]]
- [[compound-learning]]
