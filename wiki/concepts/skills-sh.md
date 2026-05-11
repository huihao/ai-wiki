---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Skills.sh

## Definition

Skills.sh is a community platform and distribution hub for AI agent skills -- standardized packages of instructions, patterns, and best practices that enhance AI coding assistants. It enables developers to share and install domain-specific knowledge sets that reduce low-quality AI-generated code ("slop") by providing agents with expert-level guidance.

## Key Aspects

- Distribution platform for the Agent Skills standard, enabling community sharing of skill packages
- Skills install via simple commands like `npx skills add mcollina/skills` for instant access to curated knowledge
- Community skill collections encode years of framework-specific expertise (Fastify, Node.js, TypeScript, linting, OAuth, Git)
- Supported by multiple AI agent platforms: Claude Code, OpenAI Codex, GitHub Copilot, and others
- Reduces AI "slop" by giving agents precise patterns, conventions, and gotchas instead of generic training knowledge
- Skills complement CLAUDE.md and rules by providing deeper, more specialized domain knowledge
- Each skill package follows a standard structure: SKILL.md with frontmatter + instructions, optional scripts/, references/, assets/
- The open standard approach prevents vendor lock-in: skills work across different AI coding assistants
- Repository model (e.g., github.com/mcollina/skills) enables version control and community contributions

## Related Concepts

- [[skill-md]] -- The file format that defines each skill
- [[agent-skills]] -- The standardized capability system
- [[claude-code]] -- Primary agent platform supporting skills
- [[anthropic]] -- Initiator of the Agent Skills standard

## Sources

- [[my-personal-skills-ai-assisted-nodejs-development]]
