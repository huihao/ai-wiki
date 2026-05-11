---
created: 2026-04-28
updated: 2026-04-28
tags: [source, claude-code, ai-ide, workflow, best-practices]
sources: 1
---

# How I Use Every Claude Code Feature

## Metadata

- **Author**: Shrivu Shankar
- **Date**: 2025-11-02
- **URL**: https://blog.sshh.io/p/how-i-use-every-claude-code-feature
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How I Use Every Claude Code Feature.md`

## Summary

A comprehensive brain dump of advanced Claude Code usage patterns from a developer who uses it both professionally (team building AI-IDE rules consuming billions of tokens/month) and as a hobbyist. Covers CLAUDE.md philosophy, context management, slash commands, subagents vs Task(), hooks, planning mode, skills vs MCP, SDK usage, and GitHub Actions integration.

## Key Takeaways

- **CLAUDE.md as constitution**: Start with guardrails, not a manual. Document based on what Claude gets wrong. Use as a forcing function to simplify tooling.
- **Don't @-file docs**: Mention paths with context on when to read them, rather than embedding full files.
- **Context management**: Avoid `/compact` (opaque, error-prone). Prefer `/clear + /catchup` or "Document & Clear" for complex tasks.
- **Subagents vs Task()**: Custom subagents gatekeep context and force rigid workflows. Prefer Claude's built-in `Task(...)` for dynamic delegation ("Master-Clone" architecture).
- **Hooks**: Use block-at-submit hooks (e.g., pre-commit test checks), not block-at-write hooks. Let agents finish their plan before validating.
- **Skills > MCP**: Skills formalize the "scripting" agent model. Use MCP as secure gateways with 1-2 high-level tools, not as bloated APIs.
- **SDK**: Use for massive parallel scripting, internal chat tools, and rapid agent prototyping.
- **GitHub Action**: Operationalize Claude Code for PR-from-anywhere workflows. Logs create a data-driven improvement flywheel.

## Entities Mentioned

- [[shrivu-shankar|Shrivu Shankar]] — author
- [[anthropic]] — Claude Code creator
- [[simon-willison]] — referenced on Skills vs MCP

## Concepts Mentioned

- [[claude-code-source-leak-harness|Claude Code]] — terminal-based AI coding agent
- CLAUDE.md — project context file / agent constitution
- [[agent-skills]] — SKILL.md formalization of scripting-based agents
- [[model-context-protocol]] — protocol for LLM tool integration
- [[subagents]] — delegated agent tasks
- [[hooks]] — deterministic rules for agent behavior
- [[github-nousresearch-hermes-agent|GitHub Actions]] — CI/CD integration for AI agents

## Raw Notes

See raw file for detailed workflows, configuration tips, and anti-patterns.

## Questions / Follow-ups

- How does the "Master-Clone" architecture compare to LangGraph's agent orchestration?
