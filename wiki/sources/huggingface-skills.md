---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Hugging Face Skills

## Metadata

- **Author**: Hugging Face
- **Date**: 2025-11-24
- **URL**: https://github.com/huggingface/skills
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/skills/GitHub - huggingface_skills_ Give your agents the power of the Hugging Face ecosystem.md`

## Summary

Hugging Face Skills are standardized AI/ML task definitions (dataset creation, model training, evaluation) packaged for major coding agents (Codex, Claude Code, Gemini CLI, Cursor). Each skill is a self-contained folder with a `SKILL.md` file following the Agent Skills standard.

## Key Takeaways

- Skills follow the standardized [Agent Skills](https://agentskills.io) format initiated by Anthropic.
- Available via Cursor Marketplace, Codex Plugins Directory, Claude Code, and Gemini CLI extensions.
- Skills cover: HF CLI operations, community evals, datasets, Gradio, LLM training, local models, papers, tool building, vision training, and Transformers.js.
- Each skill includes YAML frontmatter (name, description) followed by agent instructions, scripts, and references.
- A generated `agents/AGENTS.md` file serves as a fallback for agents without native skill support.

## Entities Mentioned

- [[huggingface-skills|Hugging Face]] — Creator of the skills repository.
- [[openai]] — Codex.
- [[anthropic]] — Claude Code; initiated Agent Skills standard.
- [[google]] — Gemini CLI.
- [[cursor]] — IDE with skill marketplace.

## Concepts Mentioned

- [[agent-skill]] — Standardized capability packages for AI coding agents.
- SKILL.md — Metadata + instructions format.
- [[model-context-protocol|MCP]] — Referenced via `.mcp.json` in Cursor plugin manifest.

## Raw Notes

- Skills can be installed via `/plugin install <skill-name>@huggingface/skills`.
- Contributors can add new skills by copying an existing folder and running `./scripts/publish.sh`.

## Questions / Follow-ups

- How does the Agent Skills standard evolve as more vendors adopt it?
- What is the quality bar for skills accepted into the official Hugging Face repository?
