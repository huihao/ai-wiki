---
created: 2026-05-09
updated: 2026-05-09
tags: [ddd]
sources: 1
---

# Context Map

## Definition

A context map is a Domain-Driven Design (DDD) artifact that describes how multiple bounded contexts relate to each other. Evans defined several relationship patterns: shared kernel, customer-supplier, conformist, anti-corruption layer, open host service, published language, and separate ways.

## Application to AI Agent Tooling

In Naftiko's capability model, the context map operates at the **fleet level** — across capabilities rather than within a single capability. A fleet of capabilities has the same structure as a context map:

- Some capabilities consume each other (customer-supplier)
- Some share a vocabulary (shared kernel)
- Some translate from legacy systems (anti-corruption layer)
- Some serve as the published interface to external consumers (open host service)

The fleet metadata (`apis.yml`) captures these inter-capability relationships.

## Related Concepts

- [[bounded-context|Bounded Context]] — context maps connect bounded contexts
- [[anti-corruption-layer|Anti-Corruption Layer]] — one pattern in the context map

## Sources

- [[bounded-contexts-to-capability-boundaries]]
