---
url: "https://addyosmani.com/blog/good-spec/"
title: "How to write a good spec for AI agents"
author: "Addy Osmani"
date: "2026-01-13"
description: "Framework for writing effective AI agent specifications covering structure, modular prompting, constraints, and iterative refinement."
---

# How to write a good spec for AI agents

Comprehensive framework for writing specifications that guide AI coding agents effectively, covering five principles: high-level vision, structured PRD format, modular context, quality control, and iterative refinement.

## Five Core Principles

### 1. Start with High-Level Vision
Let AI draft details from concise goal statement:
- Begin with clear objective and core requirements (product brief)
- Ask AI to expand into full spec.md covering objectives, features, constraints, plan
- Spec becomes persistent reference and first collaborative artifact
- Use Plan Mode (read-only) to refine before coding

**Example prompt**: "Draft detailed specification for [project X] covering objectives, features, constraints, and step-by-step plan."

### 2. Structure Like Professional PRD
Use six core areas from GitHub's 2,500+ agent file analysis:
- **Commands**: Full commands with flags (`npm test`, `pytest -v`)
- **Testing**: Framework, coverage expectations, test file locations
- **Project structure**: Explicit paths (`src/`, `tests/`, `docs/`)
- **Code style**: One real snippet beats three paragraphs of description
- **Git workflow**: Branch naming, commit message format, PR requirements
- **Boundaries**: Three-tier system (Always/Ask first/Never)

**Three-tier boundaries**:
- ✅ Always: "Run tests before commits", "Follow naming conventions"
- ⚠️ Ask first: "Database schema changes", "Adding dependencies"
- 🚫 Never: "Commit secrets", "Edit node_modules/", "Remove failing tests"

### 3. Modular Prompts, Not One Big Prompt
Avoid "curse of instructions" where too many directives cause following none well:
- Divide spec into phases/components
- Use extended TOC with summaries as index
- Feed only relevant sections per task
- Consider subagents for different domains (Database Designer, API Coder)

**Curse of instructions**: Research shows models struggle when asked to satisfy many requirements simultaneously. Decompose complex requirements into sequential simple instructions.

**Hierarchical summarization**: Create extended TOC condensing each section to key points + references. Example: "Security: use HTTPS, protect API keys (see §4.2)"

### 4. Self-Checks and Constraints
Make spec both coach and referee:
- Three-tier boundaries (Always/Ask first/Never)
- Encourage self-verification: "After implementing, compare with spec and list missing items"
- LLM-as-a-Judge for subjective checks (code style, architecture patterns)
- Conformance testing: Language-independent tests specifying inputs/outputs
- Include domain knowledge and edge cases

**Common pitfalls**:
- Vague prompts: "Build something cool" → wrong results
- Overlong contexts without summarization → model figures nothing out
- Skipping human review → "house of cards" code collapsing on edge cases
- Missing six core areas → incomplete guidance

### 5. Test, Iterate, Evolve
Continuous refinement cycle:
- Run tests after each milestone
- Update spec when discovering missing requirements
- Use RAG for large specs (retrieve relevant sections)
- Parallel agents carefully (non-overlapping work)
- Version control spec like code
- Monitor agent logs for deviations

**Spec-driven development workflow** (GitHub Spec Kit):
1. **Specify**: High-level user experience description
2. **Plan**: Technical architecture and constraints
3. **Tasks**: Break into small reviewable chunks
4. **Implement**: Execute with continuous verification

## Agent Experience (AX) Design

Design specs for agent consumption like API design for developer experience:
- Clean, parseable formats (OpenAPI schemas, llms.txt)
- Explicit type definitions
- Follow MCP (Model Context Protocol) patterns
- Use Markdown headings or XML-like tags for structure

## Key Takeaways

**Minimal doesn't mean short**: Include necessary detail but keep focused.

**Vague prompts = wrong results**: "You are helpful assistant" fails. "You are test engineer who writes React tests, follows examples, never modifies source" succeeds.

**Context length ≠ context quality**: 50 pages dumped into prompt doesn't work. Use summaries or RAG.

**Human remains exec-in-loop**: Spec empowers agent but you're ultimate quality filter.

## Related Concepts

- [[spec-driven-development]] — Workflow where specs drive implementation, tests, task breakdowns
- [[agent-experience]] — Designing specs and tools for optimal AI agent consumption
- [[modular-context-management]] — Feeding focused context slices instead of monolithic prompts
- [[curse-of-instructions]] — Performance degradation from too many simultaneous directives
- [[three-tier-boundaries]] — Always/Ask first/Never constraint system for agent guidance

## Related Entities

- [[addy-osmani]] — Web developer and author creating AI agent spec framework
- [[simon-willison]] — Developer advocating spec-driven AI development practices