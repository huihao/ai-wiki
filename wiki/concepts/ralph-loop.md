---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, workflow]
sources: 2
---

# Ralph Loop

## Definition

A technique for running AI coding agents autonomously by repeatedly executing the same prompt in a loop. The agent reads a PRD (Product Requirements Document) and a progress file, implements one task, commits the changes, and updates progress. Named after Ralph Wiggum from The Simpsons by creator Geoffrey Huntley.

## Key Proponents / Critics

- **Creator**: [[geoffrey-huntley]] — Ralph Wiggum Technique
- **Adopters**: [[anthropic]] — official Claude Code plugin
- **Adopters**: [[openai|OpenAI Codex team]] — referenced in Harness Engineering article
- **Adopters**: [[rickyshou]] — used for 10-step activity configuration pipeline

## Related Concepts

- [[agentic-engineering-engineering-revolution|Agentic Engineering]] — Ralph is a foundational pattern
- PRD — Product Requirements Document as task source
- [[stop-using-init-for-agents-md|Stop Hook]] — mechanism for detecting completion sigil
- [[self-improving-agents]] — loop enables iterative improvement

## Sources

- [[getting-started-with-ralph]] — step-by-step setup guide
- [[agentic-engineering-engineering-revolution]] — production usage with 10-step workflow
- [[what-is-ralph-loop-bash-coding-pattern]] — comprehensive explanation of the pattern, components, and best practices

## Evolution

- **2025**: Geoffrey Huntley proposes the Ralph Wiggum Technique.
- **2026**: Anthropic releases official Claude Code plugin.
- **2026**: OpenAI Codex team validates the pattern at million-line codebase scale.
- **2026**: Community converges on bash-loop approach (independent context windows per iteration) over plugin's "run forever" model.
- **Emerging**: Variations using GitHub Issues, Linear, or beads as task sources instead of local PRDs.
