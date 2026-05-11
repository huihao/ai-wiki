---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, learning, memory, standard]
sources: 3
---

# AGENTS.md

## Definition

AGENTS.md is a context file used to provide persistent, project-specific knowledge to AI coding agents across iterations. It serves as a living notebook of conventions, gotchas, and non-discoverable information that agents need to work effectively in a codebase.

**Industry Standard**: Official standard for defining core instruction set for AI agents (http://agents.md/).

## Usage in LangSmith Agent Builder

[[langsmith-agent-builder|LangSmith Agent Builder]] uses AGENTS.md as procedural memory:

- Agent reads AGENTS.md to understand core directives
- Agent can edit AGENTS.md during work ("in the hot path")
- Memory evolves through natural language corrections
- No upfront documentation required

## Evolution Example

Meeting summarizer AGENTS.md evolution:

**Start**: `Summarize meeting notes.`

**Week 1**: Add formatting preference
```
# Formatting Preferences
User prefers bullet points for summaries, not paragraphs.
```

**Week 2**: Add action items
```
# Formatting Preferences
User prefers bullet points for summaries, not paragraphs.
Extract action items in separate section at end.
```

**Month 3**: Comprehensive memory
```
# Meeting Summary Preferences

## Format
- Use bullet points, not paragraphs
- Extract action items in separate section at end
- Use past tense for decisions
- Include timestamp at top

## Meeting Types
- Engineering meetings: highlight technical decisions and rationale
- Planning meetings: emphasize priorities and timelines
- Customer meetings: redact sensitive information
- Short meetings (<10 min): just key points

## People
- Sarah Chen (Engineering Lead) - focus on technical details
- Mike Rodriguez (PM) - focus on business impact
...
```

## Key Proponents / Critics

- **Proponents**: Ryan Carson (Compound Product), Eric J. Ma (real-time feedback)
- **Skeptics**: Addy Osmani (argues auto-generated files are redundant and costly)
- **Researchers**: Lulla et al. (2026) found human-authored files improve efficiency; ETH Zurich found auto-generated files hurt performance.
- **LangChain Team**: Prioritized AGENTS.md as procedural memory in LangSmith Agent Builder

## Memory Type

Part of [[procedural-memory]] (COALA framework).

## Related Concepts

- [[agent-memory]] — Memory systems for AI agents
- [[procedural-memory]] — COALA framework memory type
- [[agent-skills]] — Semantic memory counterpart
- [[context-engineering|Coding agents]] — primary users of AGENTS.md
- [[context-engineering|Agentic context engineering]] — dynamic alternatives
- [[prompt-engineering]] — system prompt design
- [[langsmith-agent-builder]] — Platform using AGENTS.md as memory
- [[deepagents]] — Harness supporting AGENTS.md

## Sources

- http://agents.md/ (official standard)
- [[how-we-built-agent-builder-memory-system]] — LangSmith Agent Builder usage
- [[stop-using-init-for-agents-md|Stop Using /init for AGENTS.md]]
- [[self-improving-coding-agents]]

## Evolution

- 2024: Simple monolithic files at repo roots.
- 2025: Recognition that static files rot; emergence of hierarchical module-level files.
- 2026-02: LangSmith Agent Builder launches with AGENTS.md as procedural memory.
- 2026-04: Research shows mixed results; best practice shifts to minimal, human-curated files with non-discoverable info only. Dynamic/context-engineered approaches (ACE framework) show promise.
