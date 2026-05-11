---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Trace: Declarative Modeling for the AI Age

## Metadata

- **Author**: Tony Alicea
- **Date**: 2026-01-01
- **URL**: https://tonyalicea.dev/blog/trace-declarative-modeling-ai-age/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Trace_ Declarative Modeling for the AI Age _ Tony Alicea.md`

## Summary

Trace is a standard for writing declarative, structured specifications that LLMs can act on and developers can learn from. It organizes software specs into a folder structure with overview, stack, personas, domains, and flows — designed to produce precise AI-generated code while teaching systems thinking.

## Key Takeaways

- Trace is a standardized folder structure: overview.md, stack.md, personas/, domains/, flows/.
- Domains are self-contained areas with glossary, constraints, entities, events, rules, stubs, and externals.
- Personas represent real people with explicit data access rules enforced at the data layer.
- Flows describe how personas move through the system, using normalize (multi-screen) or denormalize (single-screen frame states) strategies.
- Events decouple domains; domains communicate via published events, not direct data access.
- Rules are labeled (R1, R2...) for traceability across code, tests, and tickets.
- Includes an agent skill with Author Mode (design from scratch) and Implement Mode (build from existing Trace).

## Entities Mentioned

- [[tony-alicea]] — author, creator of Trace

## Concepts Mentioned

- [[trace-declarative-modeling-for-the-ai-age|Trace]] — declarative spec-writing standard for AI code generation
- [[trace-declarative-modeling-for-the-ai-age|Declarative modeling]] — spec-first approach
- [[genai-output-control-design-patterns|Domain-driven design]] — influenced by DDD concepts
- [[flask-vs-fastapi|Normalize vs denormalize]] — UX flow strategies
- [[agent-skills|Agent skill]] — Trace includes skill for Author and Implement modes
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|Event-driven architecture]] — domains communicate via events

## Questions / Follow-ups

- How does Trace compare to other spec formats like spec-kit or Tessl?
- What empirical evidence exists that Trace-style specs produce better AI-generated code?
