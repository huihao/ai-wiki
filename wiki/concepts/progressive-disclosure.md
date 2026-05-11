---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, architecture]
sources: 2
---

# Progressive Disclosure

## Definition

A context management pattern where agents receive only lightweight metadata or indexes initially, and load detailed knowledge on demand when executing specific tasks. This "pull mode" contrasts with "push mode" (pre-loading all relevant context), dramatically reducing context window consumption and preventing context rot.

## Key Proponents / Critics

- **OpenAI Codex team**: Named and formalized the pattern in their Harness Engineering article
- **Practitioners**: [[rickyshou]] — SKILL.md < 2k token entry, resources/ directory for details
- **Tool vendors**: [[cursor]] — dynamic context discovery

## Related Concepts

- [[agentic-search]] — lightweight index + dynamic retrieval
- [[context-engineering]] — managing what the agent sees
- [[context-rot]] — degradation from overloaded context
- [[agent-skills|Skills]] — progressively disclosed capabilities

## Sources

- [[agentic-engineering-engineering-revolution]] — tool design as pull mode vs. scene routing as push mode
- [[stop-calling-tools-start-writing-code-mode|Stop Calling Tools, Start Writing Code (Mode)]] — CodeMode's discovery→schema→execute as progressive disclosure

## Evolution

- **2025**: OpenAI Codex team discovers "too much guidance becomes non-guidance" with large AGENTS.md files.
- **2026**: Codex team names "progressive disclosure" as the solution.
- **2026**: Multiple independent implementations (Cursor, Anthropic, rickyshou) converge on the same pattern.
