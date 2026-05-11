---
created: 2026-05-09
updated: 2026-05-09
tags: [source, ddd, ai-agents, api-design]
sources: 1
---

# From Bounded Contexts to Capability Boundaries

## Metadata

- **Author**: Naftiko
- **Date**: 2026-05-07
- **URL**: https://naftiko.io/blog/from-bounded-contexts-to-capability-boundaries/
- **Fetched**: 2026-05-09
- **Raw file**: Clippings/From Bounded Contexts to Capability Boundaries.md

## Summary

A detailed mapping of four Domain-Driven Design (DDD) primitives onto Naftiko's Capability YAML format for AI agent tooling. Argues that bounded contexts, ubiquitous language, aggregates, and anti-corruption layers are not metaphors but literal structural correspondences to the capability YAML schema. The article translates DDD's Evans vocabulary into the AI agent tooling domain, showing how each DDD concept maps to a specific section of the capability file.

## Key Takeaways

- **Bounded contexts → capability scope**: One capability = one bounded context. The file's boundary defines what model is consistent. Drawing boundaries around databases (system boundaries) rather than models (context boundaries) is the most common mistake in agent tool design.
- **Ubiquitous language → YAML vocabulary**: Every name in the capability YAML (namespace, resource, operation, parameter, description) is a vocabulary decision. The model reads `description` fields literally, so the language must match the team's domain language exactly.
- **Aggregates → ownership and consistency boundary**: Aggregate boundaries become the idempotency boundary in capabilities. Mixing query tools (`get-policyholder`) and state-changing tools (`cancel-policy`) in the same namespace conflates two consistency stories.
- **Anti-corruption layers → the `consumes` block**: The `consumes` section is a literal ACL — it declares the upstream's URL, auth, response format exactly as-is, while `exposes` translates to clean JSON for the agent. `consumes` is the messy half, `exposes` is the clean half.
- **Context maps → capability registry**: Fleet-level relationships between capabilities mirror DDD's context map patterns (shared kernel, customer-supplier, conformist, ACL, open host service).
- **Key insight**: Most enterprise architecture programs already paid for DDD training a decade ago but never operationalized it. Capabilities are the artifact those programs were waiting for.
- **Political reframing**: Naming DDD as the third parent of capabilities reframes the work as a domain-team format, not a platform-team or AI-team format.

## Entities Mentioned

- [[naftiko]] — AI agent capability platform

## Concepts Mentioned

- [[bounded-context|Bounded Context]] — DDD primitive for scoping consistent models
- [[ubiquitous-language|Ubiquitous Language]] — DDD's single-term-per-concept vocabulary discipline
- [[ddd-aggregates|Aggregates]] — DDD unit of consistency and ownership
- [[anti-corruption-layer|Anti-Corruption Layer]] — DDD translation tier between contexts
- [[context-map|Context Map]] — DDD map of relationships between bounded contexts
- [[agent-tool-use|Agent Tool Use]] — capabilities as MCP tool definitions for AI agents

## Questions / Follow-ups

- How does Naftiko's capability registry handle the context map patterns at scale?
- What happens when ubiquitous language conflicts arise between teams sharing a capability fleet?
