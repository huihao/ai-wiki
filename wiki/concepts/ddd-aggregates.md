---
created: 2026-05-09
updated: 2026-05-09
tags: [ddd]
sources: 1
---

# Aggregates (DDD)

## Definition

In Domain-Driven Design, an aggregate is the unit of consistency — a cluster of objects that must be modified together to keep an invariant true. The classic example is an order and its line items: you cannot mutate one without considering the other, so they live inside the same aggregate with one entry point.

## Application to AI Agent Tooling

In Naftiko capabilities, the aggregate boundary becomes the **ownership and idempotency boundary**. Two YAML sections carry this weight:

- **`consumes` resource grouping**: Which operations share the same base path and auth (same aggregate) vs. split into different resources (different aggregates)
- **`hints` block** under `exposes.tools`: `readOnly`, `idempotent`, and `destructive` hints declare where the consistency boundary is

**Anti-pattern**: Exposing `get-policyholder` and `cancel-policy` in the same MCP namespace crosses an aggregate boundary — mixing a query against one aggregate with a state-changing command against a different aggregate.

## Key Principles

- One aggregate's worth of state changes per capability on the exposing side
- The underlying API being one endpoint is irrelevant — the capability is the model, not the API

## Related Concepts

- [[bounded-context|Bounded Context]] — aggregates exist within bounded contexts
- [[anti-corruption-layer|Anti-Corruption Layer]] — ACLs translate between aggregate boundaries

## Sources

- [[bounded-contexts-to-capability-boundaries]]
