---
created: 2026-04-28
updated: 2026-04-28
tags: [source, ai-agents, spec, prompt-engineering, best-practices]
sources: 1
---

# How to Write a Good Spec for AI Agents

## Metadata

- **Author**: Addy Osmani
- **Date**: 2026-01-13
- **URL**: https://addyosmani.com/blog/good-spec/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/How to write a good spec for AI agents.md`

## Summary

A comprehensive framework for writing effective specifications for AI coding agents. Based on analysis of 2,500+ agent configuration files and best practices from Claude Code, GitHub Copilot, and GitHub Spec Kit. Covers five principles: high-level vision, PRD structure, modular prompts, self-checks/constraints, and iterative evolution.

## Key Takeaways

- **1. Start with vision, let AI draft details**: Use Plan Mode (read-only) to refine specs before execution. Treat spec as first artifact built together with AI.
- **2. Structure like a PRD/SRS**: Six core areas from GitHub analysis: Commands, Testing, Project Structure, Code Style, Git Workflow, Boundaries.
- **3. Modular prompts, not monolithic**: "Curse of instructions" — performance drops as instructions pile up. Use spec summaries, subagents, or separate spec files per component.
- **4. Three-tier boundaries**: ✅ Always do / ⚠️ Ask first / 🚫 Never do. "Never commit secrets" was the most common helpful constraint.
- **5. Iterate continuously**: Test early, gather feedback, refine spec. Use CI/CD integration, version control, and conformance tests.
- **GitHub Spec Kit workflow**: Specify → Plan → Tasks → Implement, with human validation gates at each phase.
- **Agent Experience (AX)**: Design specs for agent consumption — OpenAPI schemas, llms.txt, MCP protocols, explicit type definitions.

## Entities Mentioned

- [[addy-osmani]] — author
- [[github-nousresearch-hermes-agent|GitHub]] — Spec Kit, Copilot, agent file analysis
- [[anthropic]] — Claude Code, Skills, subagents
- [[simon-willison]] — referenced on parallel agents and vibe coding

## Concepts Mentioned

- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Spec-driven development]] — specs as executable artifacts
- [[8-factor-agent-breakdown|Agent experience]] — designing for AI consumption
- [[context-engineering]] — managing agent context windows
- [[subagents]] — specialized agents for different domains
- [[model-context-protocol]] — standardized tool integration
- [[revolutionizing-software-testing-llm-powered-bug-catchers|Conformance testing]] — spec-derived test suites

## Raw Notes

See raw file for detailed spec templates, anti-patterns, and tool recommendations.

## Questions / Follow-ups

- How do these principles apply to non-coding agents (e.g., customer support, research)?
