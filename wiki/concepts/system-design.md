---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 1
---

# System Design

## Definition

System design is the process of defining the architecture, components, modules, interfaces, and data flow of a system to satisfy specified requirements. In the context of AI-assisted software development, system design emphasizes architectural thinking as the core skill — understanding how components connect, planning before executing, and breaking down complexity into manageable, composable units that an AI coding agent can implement effectively.

## Key Aspects

- **Architecture over prompts**: The critical skill in AI-assisted coding is not prompt engineering but architectural thinking — having a clear mental model of the system before delegating implementation to an AI agent.
- **Decomposition**: Breaking complex systems into well-defined components with clear interfaces, enabling parallel development (human and AI) and reducing the cognitive load on any single interaction.
- **Interface design**: Defining clean boundaries between modules (APIs, data contracts, event schemas) so that components can be developed, tested, and replaced independently.
- **Trade-off analysis**: Evaluating competing design choices (consistency vs. availability, monolith vs. microservices, SQL vs. NoSQL) based on requirements constraints, team capabilities, and operational maturity.
- **AI-augmented design**: Using AI agents for rapid prototyping, code generation, and exploration of design alternatives, while maintaining human oversight on architectural decisions that have long-term consequences.
- **Planning before execution**: File-based planning artifacts (PLAN.md, TODO.md) that persist across sessions enable iterative refinement of system design without losing context between AI interactions.

## Related Concepts

- [[architecture-thinking]]
- [[decomposition]]
- [[coding-agent]]

## Sources

- [[ai-coding-architecture]]
