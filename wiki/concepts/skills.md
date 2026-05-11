---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# skills

## Definition

In the context of AI coding agents, skills are auto-invoked workflows that continuously monitor conversation content and automatically activate when the described moment matches, in contrast to custom commands which require explicit slash invocation. Skills are defined in `.claude/skills/` directories with SKILL.md files containing YAML frontmatter that specifies when they trigger and which tools they may use. At the enterprise level, skills represent upgraded "tools" treated as digital assets with full lifecycle management, enabling intelligent search and recall that reduces token consumption by 70% compared to loading all tool schemas into context.

## Key Aspects

- **Auto-Invocation**: Skills watch conversation and act automatically when the current context matches the skill's description, unlike commands which wait for explicit `/command` invocation
- **SKILL.md Format**: Each skill has a SKILL.md with YAML frontmatter containing `description` (trigger conditions), `allowed-tools` (tool restrictions), and optionally bundled supporting files
- **Two-Level Organization**: Project-level skills in `.claude/skills/` (committed to version control, shared with team) and user-level skills in `~/.claude/skills/` (personal preferences)
- **Enterprise Skills Management**: AgentKit Gateway (Volcano Engine) treats skills as core digital assets with lifecycle management from development through deployment
- **Intelligent Tool Recall**: Enterprise skill systems use semantic search to load only relevant tool schemas, reducing token consumption by 70% compared to dumping all schemas into context
- **Type Safety**: Python type system and Pydantic are used for schema generation and validation of skill parameters
- **Human-in-the-Loop**: Critical skills include confirmation mechanisms via `require_confirmation` for safety-sensitive operations
- **Skills vs. Commands vs. Agents**: Skills auto-invoke; commands require explicit invocation; agents are specialized subagent personas with their own context windows

## Related Concepts

- [[claude-md]] -- Project instruction file that complements skills configuration
- [[agents-config]] -- Specialized subagent personas with their own context windows
- [[path-scoped-rules]] -- Context-dependent instructions that activate for matching file patterns
- [[agent-tools]] -- Lower-level tools that skills orchestrate and compose
- [[zero-trust]] -- Security approach applied to skill execution verification

## Sources

- [[anatomy-claude-folder]] -- Complete guide to Claude Code's .claude/ folder including skills
- [[understanding-agent-tools]] -- Enterprise tool and skills management lifecycle
- [[volcano-engine]] -- AgentKit Gateway platform for enterprise skills governance
