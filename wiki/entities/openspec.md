---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, software-framework]
sources: 1
---

# OpenSpec

## Summary

OpenSpec is an open-source framework providing complete spec-driven development capabilities for AI coding tools. It enables specification-first development with structured requirements and scenarios, integrated with various AI coding assistants through custom command extensions.

## Key Attributes

- **Type**: Open-source specification framework
- **Purpose**: Spec-driven development for AI coding
- **Components**:
  - `openspec/AGENTS.md` — AI assistant guidelines
  - `openspec/project.md` — Project conventions and templates
  - Specification files with requirements and scenarios
  - Three-phase workflow: proposal, implementation, archive
- **Integration**: Works with Claude Code, Gemini-CLI, and other AI tools
- **Format**: Markdown-based with structured sections
- **Validation**: CLI tool with strict validation mode

## Workflow Phases

### Phase 1: Create Proposal
- Review existing specs and project context
- Select unique change-id (kebab-case, verb-first)
- Scaffold proposal.md, tasks.md, design.md (optional)
- Draft spec increments with ADDED/MODIFIED/REMOVED/REMOVED Requirements
- Each requirement must have at least one Scenario
- Validate with `openspec validate <id> --strict`

### Phase 2: Implement Change
- Read proposal, design, and tasks files
- Execute tasks sequentially
- Track progress with checkboxes in tasks.md
- Minimal, focused modifications

### Phase 3: Archive Change
- Move changes to archive directory
- Update specs if capability changed
- Use `openspec archive <change-id> --yes`
- Validate final state

## Integration Pattern

For AI coding tools supporting command extension:
1. Create `openspec/AGENTS.md` — AI assistant guidelines
2. Create `openspec/project.md` — Project conventions
3. Update tool's core memory file (CLAUDE.md, GEMINI.md)
4. Create three commands:
   - `openspec:proposal` — Generate spec from requirements
   - `openspec:apply` — Implement according to spec
   - `openspec:archive` — Archive completed spec

## Related Entities

- [[claude-code|Claude Code]] — Integration via slash commands
- [[gemini-cli|Gemini-CLI]] — Potential integration via TOML commands

## Related Concepts

- [[spec-driven-development|Spec-Driven Development]] — Development methodology
- [[ai-coding-agent|AI Coding Agent]] — Target integration platform
- [[specification-management|Specification Management]] — Spec lifecycle management

## Sources

- [[ai-coding-agent-design|AI Coding 智能体设计]] — Detailed integration guide

## Contradictions / Open Questions

- How does OpenSpec compare to other spec-driven tools?
- What is the adoption rate among AI coding users?
- Can OpenSpec scale to large, complex multi-component projects?