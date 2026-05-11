---
created: 2026-05-09
updated: 2026-05-09
tags: [entity, product]
sources: 1
---

# Naftiko

## Summary

Naftiko is an AI agent capability platform that provides a YAML-based schema for defining governed API capabilities that AI agents can consume. It maps Domain-Driven Design (DDD) principles onto a capability file format, translating legacy API sprawl into a structured, agent-readable tool surface with built-in anti-corruption layers.

## Key Attributes

- YAML-based capability definition format for AI agent tooling
- Three "parents": AI, APIs, and Domain-Driven Design
- `consumes` block acts as a literal anti-corruption layer (translates legacy APIs)
- `exposes` block provides clean MCP tool definitions for agents
- Capability registry (`apis.yml`) handles fleet-level relationships between capabilities
- Open-source: github.com/naftiko/framework and naftiko/fleet

## Related Entities

- [[mcp-servers|MCP Servers]] — capabilities expose MCP tools

## Related Concepts

- [[bounded-context|Bounded Context]] — one capability = one bounded context
- [[ubiquitous-language|Ubiquitous Language]] — YAML vocabulary discipline
- [[ddd-aggregates|Aggregates]] — ownership and consistency boundaries in capabilities
- [[anti-corruption-layer|Anti-Corruption Layer]] — `consumes` block as ACL
- [[agent-tool-use|Agent Tool Use]] — capabilities as agent tool definitions

## Sources

- [[bounded-contexts-to-capability-boundaries]]
