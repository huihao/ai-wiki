---
created: 2026-05-11
updated: 2026-05-11
tags: [codex, execution, sandboxing]
sources: 0
---

# Codex Cloud

## Definition

The background execution mode of OpenAI Codex. Runs each task in an isolated sandbox with the repository and environment, producing reviewable code output (diffs/PRs) rather than direct interactive sessions. Sandboxes have no internet access by default; admins can allowlist dependency registries and trusted sites.

## Key Aspects

- Background execution while engineers stay in flow
- Sandboxed with repository and environment
- Internet access disabled by default
- Admin-configurable allowlists for dependencies
- Best for long-running tasks and PR-style review

## Related Concepts

- [[openai-codex]] — Codex Cloud is one of four Codex surfaces
- [[sandbox-execution]] — isolated execution environment

## Sources

- [[codex-handbook-practical-guide]] — Codex Cloud setup and usage
