---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# My Personal Skills for AI-assisted Node.js Development

## Metadata

- **Author**: Matteo Collina
- **Date**: 2026-03-01
- **URL**: https://adventures.nodeland.dev/archive/my-personal-skills-for-ai-assisted-nodejs/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/skills/My Personal Skills for AI-assisted Node.js Development.md`

## Summary

Matteo Collina (Fastify core contributor) shares his personal skills repository encoding years of Node.js, Fastify, and TypeScript expertise into AI agent-friendly format. The skills reduce "slop" generation and corrections by providing best practices, patterns, and tools directly to AI assistants.

## Key Takeaways

- **Motivation**: Reduce low-quality AI-generated code ("slop") and repetitive corrections.
- **Installation**: Simple `npx skills add mcollina/skills` command.
- **Skill collection includes**:
  - **fastify**: Hooks lifecycle, plugin architecture, performance tuning.
  - **node**: Event loop patterns, async error handling, stream processing, Node.js test runner.
  - **nodejs-core**: C++ addons, V8 internals, libuv patterns, build systems.
  - **typescript-magician**: Advanced type systems, complex generics, removing `any` (inspired by Matt Pocock's TotalTypeScript).
  - **octocat**: Git/GitHub workflows via `gh` CLI.
  - **oauth**: OAuth 2.0/2.1 with Fastify integration (RFC 6749, @fastify/oauth2).
  - **linting-neostandard-eslint9**: Modern linting with neostandard + ESLint v9 flat config.
  - **documentation**: Technical writing following Diátaxis framework (tutorials, how-to guides, reference, explanation).
- **Agent Skills Standard**: Skills follow open Agent Skills format (started by Anthropic, now multi-vendor).
- **Skill structure**: Folder with `SKILL.md` (frontmatter + instructions), optional scripts/, references/, assets/.
- **Agent support**: OpenAI Codex, GitHub Copilot, Claude Code, skills.sh, others.

## Entities Mentioned

- [[matteo-collina]] — Author, Fastify core contributor.
- [[fastify]] — Fast web framework for Node.js.
- [[nodejs]] — JavaScript runtime.
- [[v8]] — JavaScript engine.
- [[libuv]] — Async I/O library for Node.js.
- [[totaltypescript]] — Matt Pocock's TypeScript course.
- [[matt-pocock]] — TypeScript educator.
- [[anthropic]] — Agent Skills standard initiator.
- [[openai]] — Codex support.
- [[github]] — Copilot and CLI tools.
- [[skills-sh]] — Skills platform.

## Concepts Mentioned

- [[agent-skill]] — Standardized capability packages for AI agents.
- [[skill-md]] — Metadata + instructions file format.
- [[diataxis-framework]] — Documentation framework (4 modes: tutorial, how-to, reference, explanation).
- [[eslint]] — Linting tool.
- [[neostandard]] — Modern ESLint configuration.
- [[oauth-2]] — Authorization framework.
- [[gh-cli]] — GitHub CLI tool.
- [[typescript]] — Typed JavaScript superset.
- [[node-test-runner]] — Built-in Node.js testing.
- [[event-loop]] — Node.js concurrency model.
- [[stream-processing]] — Node.js streaming API.
- [[cpp-addons]] — Native extensions for Node.js.

## Raw Notes

- Matteo reviews all AI-generated code (human-in-the-loop approach).
- Skills encode patterns, tools, and gotchas from years of experience.
- Each skill has markdown files, code snippets, config examples.
- Skills work like a "seasoned developer pair programmer that remembers everything."
- Repository: github.com/mcollina/skills

## Questions / Follow-ups

- How effective are these skills compared to vanilla AI assistance?
- Can similar skill sets be created for other frameworks (Express, NestJS)?
- What's the adoption rate of Agent Skills standard across different agent platforms?