---
created: 2026-04-29
updated: 2026-05-09
tags: [agent, cynefin]
sources: 1
---

# Fast-Flow Development

## Definition

Fast-flow development is an engineering model that prioritizes rapid experimentation, automated feedback, and continuous discovery over traditional planned and governed processes. In the context of GenAI-based coding agents (which operate in the "complex" domain of the Cynefin framework), fast-flow development is the appropriate organizational response: a model that accepts non-deterministic outcomes and iterates through safe-to-fail experiments rather than attempting to standardize through top-down rules.

## Key Aspects

- Arises from the Cynefin framework's classification of coding agents as a "complex domain" where cause-effect relationships are only understood in retrospect
- Requires automated testing to replace manual policy as the primary governance mechanism — tests provide fast feedback that policy documents cannot
- Real-time observability is critical: teams must see what agents are producing in near-real-time to catch emergent problems before they compound
- Human-in-the-loop checkpoints serve as guardrails without creating bottlenecks, balancing autonomy with oversight
- Leadership must shift from the illusion of top-down control toward a culture of continuous discovery, where adoption is non-linear and success emerges through iteration
- The platform strategy shifts from being a "policy factory" (imposing rules) to a "learning amplifier" (enabling safe experimentation, sharing emerging patterns, providing guardrails)
- Fast-flow is contrasted with the traditional "complicated domain" approach of stable rules, expert-driven analysis, and debugging — patterns that work for conventional software but break down when agent outputs are probabilistic and unstable

## Related Concepts

- [[cynefin]]
- [[safe-to-fail-experiments]]
- [[complex-domain]]

## Sources

- [[cynefin-coding-agents]]
