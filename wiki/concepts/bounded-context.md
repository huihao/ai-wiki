---
created: 2026-05-09
updated: 2026-05-09
tags: [ddd]
sources: 1
---

# Bounded Context

## Definition

A bounded context is a Domain-Driven Design (DDD) concept defining the scope inside which a particular domain model is consistent. Inside a bounded context, every term has one precise meaning. Across context boundaries, the same word may mean something entirely different — and the boundary makes that explicit so teams stop arguing about whose definition is "right."

## Application to AI Agent Tooling

In Naftiko's capability model, one capability file = one bounded context. The file's boundary defines what model is consistent: its resources, operations, parameters, and vocabulary all belong to that context and only that context.

**Common mistake**: Drawing boundaries around databases (system boundaries) rather than models (context boundaries). A "policy system" is a system boundary; "Policyholder Records" and "Underwriting" are separate context boundaries within it.

## Key Principles

- One bounded context per capability file
- The `info.title` names the context
- Resources and operations inside the file belong to that context only
- Multiple capabilities can consume the same underlying system if the system contains multiple contexts

## Related Concepts

- [[ubiquitous-language|Ubiquitous Language]] — the vocabulary discipline within a bounded context
- [[ddd-aggregates|Aggregates]] — consistency units within a bounded context
- [[anti-corruption-layer|Anti-Corruption Layer]] — translation between bounded contexts

## Sources

- [[bounded-contexts-to-capability-boundaries]]
