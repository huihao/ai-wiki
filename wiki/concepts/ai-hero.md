---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# AI Hero

## Definition

AI Hero is a resource hub for AI-powered development, providing guides and tools for developers looking to leverage AI coding agents effectively. The platform, created by Matt Pocock, features techniques like the Ralph loop for running AI coding agents autonomously and resources for maximizing developer productivity with AI tools.

## Key Aspects

- The Ralph loop is a technique for running AI coding agents autonomously by repeatedly executing the same prompt
- Ralph reads a PRD and progress file, implements one task, commits, and updates progress per iteration
- Uses Claude Code in Docker sandbox for isolated, safe execution
- Tasks can be sourced from GitHub Issues, Linear, or local PRD files
- Key flags include `--permission-mode acceptEdits` and `-p` for non-interactive execution
- The completion sigil `<promise>COMPLETE</promise>` signals when the PRD is fully implemented
- Demonstrates the broader trend of autonomous agent loops for continuous development

## Related Concepts

- [[ai-agents]]
- [[agent-capabilities]]
- [[ai-augmented-development]]

## Sources

- [[ralph]]
