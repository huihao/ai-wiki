---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, product, coding-agent]
sources: 1
---

# Hermes Agent

## Summary

An open-source AI coding agent by NousResearch distinguished by its self-improving architecture. Unlike agents with static, hand-written skills, Hermes automatically creates and patches Skills from session experience, backed by a Memory system and a Nudge Engine that triggers background review. It has grown rapidly to 106k+ GitHub stars and tops OpenRouter coding agent rankings.

## Key Attributes

- **Creator**: [[github-nousresearch-hermes-agent|NousResearch]]
- **Repository**: github.com/NousResearch/hermes-agent
- **Stars**: 106k+ (as of article date)
- **Core innovation**: Self-improving loop (Memory + Skill + Nudge Engine)
- **Key subsystems**: MemoryStore (2,200/1,375 char limits), Skill manager (auto-create/patch), Nudge Engine (background review agent)

## Related Entities

- [[github-nousresearch-hermes-agent|NousResearch]] — research organization behind Hermes
- [[openclaw]] — compared as static-skill alternative
- RDSHermes — cloud-hosted version for non-developers
- [[alibaba]] — RDSHermes available on Alibaba Cloud

## Related Concepts

- [[self-improving-agent]] — the architectural pattern Hermes implements
- [[harness-engineering-overview|Harness Engineering]] — the broader framework
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|Skill]] — procedural memory units Hermes auto-generates
- [[session-memory]] — persistent facts across conversations
- [[Background Review]] — forked agent for non-blocking reflection

## Sources

- [[hermes-agent|Hermes Agent Self-Improving]] — deep-dive source code analysis

## Contradictions / Open Questions

- How does Hermes prevent skill pollution or conflicting skills over long usage?
- What is the cold-start experience before sufficient skills have accumulated?
- Can the self-improving loop be safely extended to high-risk production environments?
