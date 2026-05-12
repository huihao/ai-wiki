---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Agent Skill

## Definition

A structured behavioral design specification for AI agents, formalized in a SKILL.md format. Skills are not just prompt enhancements — they are structured specifications around tasks, tools, workflows, and output boundaries. The SKILL.md format uses YAML frontmatter (name, description, license, compatibility, metadata, allowed-tools) plus a Markdown body. Skills are loaded progressively via [[three-layer-loading]] (L1/L2/L3).

## Key Proponents / Critics

- [[anthropic]] — originated the Agent Skill specification
- [[claude]] — Claude Code adopts the Skill format
- [[openai-codex]] — Codex adopts the Skill format

## Related Concepts

- [[three-layer-loading]] — progressive L1/L2/L3 loading mechanism
- [[skill-creator]] — meta-skill for building Skills with ML-like discipline
- [[context-engineering]] — Skills as a context engineering pattern
- [[harness-engineering]] — Skills as SOPs in the broader harness engineering framework

## Sources

- [[agent-skill-spec-design-patterns]] — comprehensive deep-dive from Alibaba tech blog
- [[ryo-kusnadi-harness-engineering]] — Skills as SOPs in harness engineering

## Evolution

- **Pre-skill era**: Prompt engineering — ad hoc system prompts, no standard format, no progressive loading
- **Skill specification (Anthropic)**: Standardized SKILL.md format with YAML frontmatter. Name must be lowercase alphanumeric with hyphens, max 64 chars. Description field is critical — model-driven activation relies on it (not keyword matching). Description should use imperative voice ("Use this skill when...") and focus on user intent
- **Cross-adoption**: Both Claude Code and OpenAI Codex adopt the Skill format, establishing it as a cross-platform standard
- **Core design principle**: "Explain WHY, don't just堆砌 MUST" — modern LLMs have good theory of mind; explaining reasoning behind constraints works better than rigid ALWAYS/NEVER rules
