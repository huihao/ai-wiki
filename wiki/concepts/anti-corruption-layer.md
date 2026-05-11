---
created: 2026-05-09
updated: 2026-05-09
tags: [ddd]
sources: 1
---

# Anti-Corruption Layer

## Definition

An anti-corruption layer (ACL) is a Domain-Driven Design pattern: a translation tier between two bounded contexts that prevents one model from leaking into the other. The legacy system speaks one language; your context speaks another. The ACL translates so the rest of your system never deals with the legacy vocabulary, idiosyncrasies, or accidents.

## Application to AI Agent Tooling

In Naftiko capabilities, the `consumes` block is a **literal anti-corruption layer**:

- **`consumes`**: Declares the upstream's URL, auth, response format, path syntax, and parameter naming exactly as they are (the messy half)
- **`exposes`**: Translates to clean JSON for the agent surface (the clean half)
- **Mappings between them**: The ACL — XML becomes typed JSON, `snake_case` becomes `camelCase`, legacy nouns stay inside `consumes` and never leak to the agent

**Key rule**: `consumes` must be honest. If you sanitize the upstream in `consumes` to make the file look tidier, you've moved the anti-corruption boundary in the wrong direction.

## Historical Context

Evans described ACLs in *Domain-Driven Design* (2003) as imperative translation code. Naftiko's contribution is making the ACL declarative — one YAML file instead of a separate translation service, doing the same job Evans described twenty years ago.

## Related Concepts

- [[bounded-context|Bounded Context]] — ACLs translate between bounded contexts
- [[ubiquitous-language|Ubiquitous Language]] — ACLs preserve the clean language on the exposed side

## Sources

- [[bounded-contexts-to-capability-boundaries]]
