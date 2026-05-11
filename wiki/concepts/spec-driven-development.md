---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Spec-Driven Development

## Definition

Spec-Driven Development (SDD) is an approach where specifications (specs) are written before code with AI assistance. Specs become source of truth for both human and AI, replacing traditional code-first development.

## Three Implementation Levels

1. **Spec-First**: Write spec before coding task, use during task, discard after
2. **Spec-Anchored**: Keep spec after task for evolution and maintenance
3. **Spec-as-Source**: Spec is main artifact, human never edits code directly

All SDD approaches are spec-first, but not all aim to be spec-anchored or spec-as-source.

## Key Proponents / Critics

- **GitHub** — Creator of spec-kit
- **Tessl** — Advanced SDD framework
- **Kiro** — Lightweight SDD tool
- **Birgitta Böckeler** — Critical analyst of SDD tools

## Spec Definition

A spec is a structured, behavior-oriented artifact written in natural language that:
- Expresses software functionality
- Serves as guidance to AI coding agents
- Can be requirements, design, or implementation-level

Difference from general context (Memory Bank):
- Memory Bank: General project context (AGENTS.md, architecture.md)
- Specs: Specific functionality documents (Story-324.md, feature-x)

## Tool Implementations

### Kiro (Lightweight)

**Workflow**: Requirements → Design → Tasks
- Three markdown files per feature
- User stories with acceptance criteria
- Simple task execution UI
- **Maturity**: Spec-first only

### spec-kit (GitHub's)

**Workflow**: Constitution → Specify → Plan → Tasks
- Constitution.md for immutable principles
- Heavy checklist usage
- Many files per spec
- Branch-based (not spec-anchored)
- **Customization**: Highly customizable via slash commands

### Tessl Framework (Advanced)

**Workflow**: Spec ↔ Code synchronization
- Spec-anchored, exploring spec-as-source
- 1:1 spec to code file mapping
- Generated code marked with comment
- CLI as MCP server
- **Maturity**: Private beta

## Related Concepts

- [[spec-first|Spec-First]] — Initial implementation level
- [[spec-anchored|Spec-Anchored]] — Maintenance level
- [[spec-as-source|Spec-as-Source]] — Final implementation level
- [[memory-bank|Memory Bank]] — General context documents
- [[constitution|Constitution]] — Immutable principles
- [[model-driven-development|Model-Driven Development]] — Historical parallel
- [[checklists|Checklists]] — Workflow completion tracking

## Sources

- [[spec-driven-development-tools|Understanding Spec-Driven Development: Kiro, spec-kit, and Tessl]]

## Evolution

SDD emerged from need to give AI clear requirements before implementation. Parallels Model-Driven Development from early 2000s: models/specs as primary artifact, code generation as secondary.

Current challenges:
- Semantic diffusion (some use "spec" as synonym for "detailed prompt")
- Unclear scalability to different problem sizes
- False sense of control from extensive documentation
- Functional vs technical specification confusion

## Critiques

**Verschlimmbesserung**: Making something worse while trying to improve
- Too many markdown files to review
- Agent still ignores instructions despite extensive specs
- Non-determinism + inflexibility combines downsides

Key question: Do we repeat MDD mistakes with LLM unpredictability added?

## Applications

- Feature implementation with AI
- Requirements documentation for teams
- Brownfield code understanding
- Greenfield project planning
