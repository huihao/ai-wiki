---
created: 2026-05-12
updated: 2026-05-12
tags: [concept]
sources: 1
---

# Three-Layer Loading

## Definition

A progressive loading mechanism for [[agent-skill]] that loads skill information in three layers to minimize context consumption at startup. L1 loads only name and description (~50-100 tokens per skill) at session start. L2 loads the full SKILL.md body on activation (<5000 tokens). L3 loads scripts, references, and assets on demand. Even 20 skills load only ~1000-2000 tokens initially — a 90% reduction vs monolithic prompts.

## Key Proponents / Critics

- [[anthropic]] — designed the three-layer mechanism for the Agent Skill specification

## Related Concepts

- [[agent-skill]] — the skill specification that uses this loading mechanism
- [[context-engineering]] — three-layer loading as a context efficiency pattern
- [[skill-creator]] — meta-skill that operates within this loading framework

## Sources

- [[agent-skill-spec-design-patterns]] — primary source

## Evolution

- **Pre-skill era**: All instructions loaded at startup, consuming significant context window. Adding more skills linearly increased context cost
- **Three-layer loading**: L1 (description-level, always loaded) + L2 (body, on activation) + L3 (scripts/assets, on demand). Enables dozens of skills with minimal startup overhead. Model judges relevance from L1 descriptions; full L2 content only loaded when the skill is triggered
