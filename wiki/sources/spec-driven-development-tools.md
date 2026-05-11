---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Understanding Spec-Driven Development: Kiro, spec-kit, and Tessl

## Metadata

- **Author**: Birgitta Böckeler
- **Date**: 2025-10-15
- **URL**: https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/Understanding Spec-Driven-Development_ Kiro, spec-kit, and Tessl.md

## Summary

Analysis of three spec-driven development (SDD) tools—Kiro, spec-kit, and Tessl Framework—that define specs before code, exploring their differences, maturity levels, and real-world applicability.

## Key Takeaways

### SDD Definition Levels

Three implementation levels:
1. **Spec-First**: Write spec before coding, use during task
2. **Spec-Anchored**: Keep spec after task for evolution and maintenance
3. **Spec-as-Source**: Spec is main artifact, human never edits code

All SDD approaches are spec-first, but not all strive to be spec-anchored or spec-as-source.

### What is a Spec?

A spec is a structured, behavior-oriented artifact written in natural language that expresses software functionality and serves as guidance to AI coding agents.

**Difference from Memory Bank**:
- Memory Bank: AGENTS.md, project.md, architecture.md (general context across all sessions)
- Specs: Story-324.md, product-search.md (specific to particular functionality)

### Tool Comparison

#### Kiro (Simplest)

**Workflow**: Requirements → Design → Tasks

**Structure**:
- Requirements: User stories with acceptance criteria (GIVEN/WHEN/THEN)
- Design: Component architecture, data flow, testing strategy
- Tasks: List with UI elements for execution

**Maturity**: Spec-first only, lightweight, good for task/story sized problems

#### spec-kit (GitHub's)

**Workflow**: Constitution → Specify → Plan → Tasks

**Features**:
- Constitution.md: Immutable high-level principles
- Heavy use of checklists for tracking
- Many files per spec (8 files in one spec)
- Creates branch for each spec (not spec-anchored)

**Customization**: Highly customizable via slash commands in coding assistants

#### Tessl Framework (Most Advanced)

**Workflow**: Spec generation → Code generation → Maintenance

**Features**:
- Spec-anchored approach, exploring spec-as-source
- 1:1 mapping between spec and code files
- `// GENERATED FROM SPEC - DO NOT EDIT` marker
- Tags like @generate, @test for control
- CLI doubles as MCP server

**Maturity**: Private beta, most opinionated about long-term spec maintenance

### Challenges and Questions

**One Workflow for All Sizes**: Kiro and spec-kit provide single workflows, but unclear if suitable for majority of problems. Small bugs become over-engineered, larger features might be too complex.

**Reviewing Markdown Over Code**: spec-kit creates many verbose, repetitive markdown files. Authors would rather review code than all the markdown.

**False Sense of Control**: Even with extensive files and checklists, agents still ignore instructions or go overboard. Large context windows don't guarantee proper instruction pickup.

**Functional vs Technical Separation**: Confusion about when to stay functional vs add technical details. No good track record as profession at this separation.

**Target User**: Who is SDD meant for? Developers doing product analysis? Product people? Large unclear features?

**Learning from Past**: Spec-as-source parallels Model-Driven Development (MDD) from early 2000s. Might end with downsides of both MDD (inflexibility) and LLMs (non-determinism).

## Entities Mentioned

- [[birgitta-bockeler|Birgitta Böckeler]] — Thoughtworks technologist and author
- [[thoughtworks|Thoughtworks]] — Consulting company
- [[martin-fowler|Martin Fowler]] — Software architecture expert
- [[kiro|Kiro]] — SDD tool (lightweight)
- [[spec-kit|spec-kit]] — GitHub's SDD toolkit
- [[tessl|Tessl Framework]] — Advanced SDD framework
- [[github|GitHub]] — Creator of spec-kit

## Concepts Mentioned

- [[spec-driven-development|Spec-Driven Development]] — Writing specs before code
- [[spec-first|Spec-First]] — Create spec for task, discard after
- [[spec-anchored|Spec-Anchored]] — Keep spec for evolution
- [[spec-as-source|Spec-as-Source]] — Spec is primary artifact
- [[memory-bank|Memory Bank]] — General context documents
- [[constitution|Constitution]] — Immutable high-level principles
- [[model-driven-development|Model-Driven Development]] — Historical parallel to spec-as-source
- [[checklists|Checklists]] — Definition of done for workflow steps

## Raw Notes

SDD term is already semantically diffused. Some people use "spec" as synonym for "detailed prompt". Author's personal experience: spec-first valuable in many situations, but elaborate approaches like spec-kit create "Verschlimmbesserung" (making something worse while trying to improve).

## Questions / Follow-ups

- How do teams actually use these tools in production?
- What size of problems work best for each tool?
- Can spec-as-source actually work with LLM non-determinism?
- How do you handle functional-technical separation effectively?
