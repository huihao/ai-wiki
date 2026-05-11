---
created: 2026-05-11
updated: 2026-05-11
tags: [concept]
sources: 1
---

# Knowledge layered architecture

## Definition

A three-dimensional knowledge management system for AI engineering teams, structured as **5 storage layers × 5 knowledge types × 3 maturity levels** with automatic decay. The architecture treats knowledge accumulation — not workflow design — as the primary technical moat.

## The Three Dimensions

### Storage Layers (where knowledge lives)

| Layer | Scope | Example |
|-------|-------|---------|
| Layer 0-P | Personal preferences (`~/.ai-team/`) | Indentation style, coding preferences |
| Layer 0-T | Team conventions (`team-conventions/`) | Code standards, commit conventions |
| Layer 1 | Technical knowledge (`tech-wiki/`) | Cross-project patterns, anti-patterns |
| Layer 2 | Business knowledge (`biz-wiki/{domain}/`) | Domain models, business rules |
| Layer 3 | Project knowledge (`docs/knowledge/`) | Project-specific context |

Knowledge can **promote upward**: Layer 3 project knowledge judged as cross-project general moves to Layer 1 or 2.

### Knowledge Types (what knowledge describes)

| Type | Definition | Example |
|------|------------|---------|
| **model** | Entity definitions, data structures | "Ad plan has budget/bid/schedule fields" |
| **decision** | Technical choices and rationale | "Event-driven over RPC for ad status changes" |
| **guideline** | Recommended or prohibited practices | "Compatibility checklist for shared module changes" |
| **pitfall** | Known risks, failure modes | "Ad budget deduction over-charges under concurrency" |
| **process** | Business workflows, state machines | "Ad review: submit → auto-review → manual → live" |

### Maturity Levels (how trustworthy)

```
draft (newly extracted, single source)
  ↓ referenced successfully in ≥1 workflow
verified (single-project validated)
  ↓ validated across ≥2 different projects
proven (mature/trusted)
```

**Auto-decay**: proven entries unused 12 months → verified; verified unused 6 months → draft; drafts eventually archived.

## Key Proponents / Critics

- [[stevenpxiao]] — Designed and implemented this architecture at Tencent AI Team

## Related Concepts

- [[harness-engineering]] — Knowledge management is positioned as a core harness engineering capability
- [[progressive-disclosure]] — Three-tier indexing (catalog → listing → full entry) for efficient Agent consumption
- [[agentic-memory]] — Complementary memory architecture for agents
- [[context-engineering]] — Knowledge injection as a pillar of context engineering

## Sources

- [[knowledge-moat-over-workflow]]
