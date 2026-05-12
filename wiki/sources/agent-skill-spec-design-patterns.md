---
created: 2026-05-12
updated: 2026-05-12
tags: [source]
sources: 1
---

# Agent Skill规范、构建与设计模式

## Metadata

- **Author**: 珂罗 (via 阿里妹/Alibaba)
- **Published**: 2026-05-12
- **URL**: https://mp.weixin.qq.com/s/LCpiLyLnRn5WyuHpribyHw
- **Accessed**: 2026-05-12
- **Language**: Chinese

## Summary

Comprehensive deep-dive into Anthropic's Agent Skill specification, covering the SKILL.md format standard, three-layer progressive loading mechanism, model-driven trigger logic, and the Skill-Creator meta-skill for engineering Skills with ML-like iteration discipline. Published via Alibaba's tech blog, targeting Chinese-speaking AI engineers.

## Key Takeaways

- **Skill ≠ Prompt**: Skills are structured behavioral designs around tasks, tools, workflows, and output boundaries — not just prompt enhancements
- **SKILL.md Format**: YAML frontmatter (name, description, license, compatibility, metadata, allowed-tools) + Markdown body. Name must be lowercase alphanumeric with hyphens, max 64 chars, matching parent directory
- **Three-layer progressive loading**: L1 (name+description at startup, ~50-100 tokens per skill), L2 (full SKILL.md body on activation, <5000 tokens), L3 (scripts/references/assets on demand). Even 20 skills load only ~1000-2000 tokens initially — 90% reduction vs monolithic prompts
- **Model-driven activation**: Skill triggering relies on the description field and the model's own judgment, not keyword matching. Description should use imperative voice ("Use this skill when..."), focus on user intent, and include trigger keywords
- **Skill-Creator**: Anthropic's meta-skill for building Skills. Design philosophy: "like ML for prompt engineering" — train/test sets, eval metrics, iteration loops, anti-overfitting
- **Core insight**: "Explain WHY, don't just堆砌 MUST" — modern LLMs have good theory of mind; explaining reasoning works better than rigid ALWAYS/NEVER constraints
- **Extract repeated patterns**: If all test cases independently write similar helper scripts, that's a signal to put the script in `scripts/`

## Entities Mentioned

- [[anthropic]] — creator of the Agent Skill specification
- [[claude]] — Claude Code adopts the Skill format
- [[openai-codex]] — Codex adopts the Skill format

## Concepts Mentioned

- [[agent-skill]] — the Skill specification format and mechanism
- [[skill-creator]] — Anthropic's meta-skill for building Skills
- [[three-layer-loading]] — L1/L2/L3 progressive loading mechanism
- [[context-engineering]] — Skills as a context engineering pattern

## Questions / Follow-ups

- How does the Skill format compare to Cursor's rules system or GitHub Copilot's instructions?
- What is the adoption trajectory across the 33+ products mentioned?
