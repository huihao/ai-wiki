---
created: 2026-05-09
updated: 2026-05-09
tags: [ddd]
sources: 1
---

# Ubiquitous Language

## Definition

Ubiquitous language is a Domain-Driven Design (DDD) discipline requiring that the language used in the code model, domain expert conversations, and documentation is identical — one term per concept, used consistently everywhere. The point is eliminating translation between technical and business vocabularies.

## Application to AI Agent Tooling

In Naftiko capability YAMLs, every name (namespace, resource, operation, parameter, description) is a vocabulary commitment. The LLM reads `description` fields literally when choosing tools, so the language must match the team's domain language exactly.

**Practical rule**: Before writing a capability YAML, write a term sheet of 5-15 nouns and verbs this bounded context owns. Use only those terms in the file. If a new term appears, decide whether it belongs to this context or another.

## Why It Matters for Agents

If the capability says "look up a policyholder" but the team calls them "members" in every conversation, the planner will use "policyholder" as ground truth — and the rest of the organization will have to translate every time they touch it.

## Related Concepts

- [[bounded-context|Bounded Context]] — ubiquitous language operates within a bounded context
- [[ddd-aggregates|Aggregates]] — aggregates define ownership within the language

## Sources

- [[bounded-contexts-to-capability-boundaries]]
