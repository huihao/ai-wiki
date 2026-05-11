---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, company, ai]
sources: 1
---

# CREAO

## Summary

A 25-person startup (10 engineers) building an agent platform that underwent a radical AI-first workflow rebuild. They achieved 99% AI-written production code, feature cycles collapsing from 6 weeks to hours, and 3–8 daily production deploys. Their case study is one of the most detailed public accounts of end-to-end AI-first engineering transformation.

## Key Attributes

- **Size**: 25 people, 10 engineers
- **Product**: Agent platform (they used their own agent to rebuild their platform)
- **Transformation start**: November 2025
- **Key metrics**: 99% AI-written code, 6 weeks → hours cycle time, 3–8 deploys/day
- **Stack**: AWS, GitHub Actions, Claude Opus 4.6, Statsig, Graphite, Sentry, Linear
- **Roles**: Architect (1–2 people) + Operator (everyone else)

## Related Entities

- [[openai]] — concept of harness engineering named by OpenAI; CREAO arrived at same conclusion independently
- [[anthropic]] — Claude Opus 4.6 for code review
- [[github-nousresearch-hermes-agent|GitHub]] — Actions, PRs
- [[positional-encoding|Linear]] — issue tracker
- Statsig — feature flags
- Graphite — PR management
- Sentry — error monitoring

## Related Concepts

- [[ai-first]] — organizational strategy CREAO exemplifies
- [[harness-engineering-overview|Harness Engineering]] — the practice they rebuilt around
- [[vibe-coding-is-dead-heres-what-replaced-it|Vibe Coding]] — explicitly rejected as insufficient
- Monorepo — architectural choice for agent visibility
- Automated Triage — self-healing production loop

## Sources

- [[creao|AI First CREAO Team Rebuild]] — detailed case study

## Contradictions / Open Questions

- How generalizable is CREAO's experience to larger or more regulated organizations?
- What was the employee turnover during the 2-month transition period?
- How do they handle security audits and compliance with 99% AI-generated code?
