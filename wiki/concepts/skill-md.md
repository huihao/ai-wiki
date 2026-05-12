---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Skill.md

## Definition

A SKILL.md file is the metadata and instruction document that defines an AI agent skill in the Agent Skills standard. It contains YAML frontmatter specifying when the skill should activate and what tools it can use, followed by markdown instructions that guide the agent's behavior when the skill is triggered.

## Key Aspects

- Contains YAML frontmatter with `description` (when to use the skill) and `allowed-tools` (restricting capabilities)
- Follows the open Agent Skills format initiated by Anthropic and now adopted as a multi-vendor standard
- Skills watch conversations and act autonomously when the described moment matches, unlike commands which wait for explicit slash invocation
- Each skill lives in a folder with SKILL.md plus optional supporting files: scripts/, references/, assets/
- Supported by multiple agent platforms: OpenAI Codex, GitHub Copilot, Claude Code, skills.sh, and others
- Installation can be as simple as `npx skills add mcollina/skills` for community skill collections
- Enables encoding years of domain expertise (e.g., Node.js, Fastify, TypeScript patterns) into agent-readable instructions
- The Diataxis framework (tutorials, how-to guides, reference, explanation) can structure skill documentation
- Skills function as "a seasoned developer pair programmer that remembers everything"

## Related Concepts

- [[skills]] -- The broader agent capability system that SKILL.md files implement
- [[agent-skill]] -- Standardized capability packages for AI agents
- [[diataxis-framework]] -- Documentation framework for structuring skill content
- [[path-scoped-rules]] -- Similar concept for context-dependent instruction activation

## Sources

- [[my-personal-skills-ai-assisted-nodejs-development]]
