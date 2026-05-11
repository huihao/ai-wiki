---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Batteries-Included

## Definition
"Batteries-included" describes an agent harness or framework that comes with pre-configured defaults, built-in tools, and opinionated behaviors out of the box, requiring minimal setup before it can perform useful work. In the agent infrastructure taxonomy, harnesses sit above frameworks and runtimes, providing the highest level of ready-to-use abstraction.

## Key Aspects
- **Taxonomy position**: Agent infrastructure has three layers -- Frameworks (abstractions, e.g., LangChain), Runtimes (production infrastructure, e.g., LangGraph), and Harnesses (batteries-included systems, e.g., Claude Code, DeepAgents)
- **Built-in capabilities**: Harnesses provide default prompts, tool call handling, planning tools, filesystem access, and general-purpose agent behaviors without configuration
- **Opinionated design**: Unlike frameworks that offer flexibility, harnesses make specific design choices about how agents should behave, trading customization for immediate usability
- **Lower barrier to entry**: Harnesses require the least setup complexity; users can start productive work immediately rather than assembling infrastructure from components
- **Examples**: Claude Code (with its Read/Write/Edit/Glob/Grep/Bash/Agent tool set), DeepAgents, and potentially all coding CLIs
- **Tradeoff**: The opinionated nature means harnesses may not suit specialized use cases that require custom agent loops, prompting strategies, or tool configurations

## Related Concepts
- [[agent-frameworks-runtimes-and-harnesses]] -- the full taxonomy of agent infrastructure layers
- [[harness-engineering-overview]] -- the discipline of designing and building agent harnesses
- [[harness-engineering-claude-code]] -- Claude Code as a specific harness implementation

## Sources
- [[agent-harnesses]]
