---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 2
---

# DeepAgents

## Definition
DeepAgents is a batteries-included, opinionated agent harness that provides a complete, general-purpose coding agent system with built-in prompts, tool handling, planning capabilities, and filesystem access. It sits at the highest level of the agent tooling taxonomy, above frameworks and runtimes, delivering pre-configured defaults that enable rapid deployment without designing from scratch.

## Key Aspects
- Described as a "general purpose version of Claude Code" with default behaviors baked in
- Part of a three-layer taxonomy: harnesses (DeepAgents) > frameworks (LangChain) > runtimes (LangGraph)
- Provides opinionated tool call handling, built-in planning tools, and filesystem access
- Different from frameworks by being higher-level and more prescriptive about agent behavior
- Different from runtimes by providing agent intelligence rather than infrastructure concerns
- All coding CLIs (Claude Code, Cursor, etc.) can be considered harnesses
- The harness layer handles environment, constraints, and validation that make agents reliable

## Related Concepts
- [[agent-frameworks]]
- [[fail-closed]]

## Sources
- [[agent-frameworks-runtimes-harnesses]]
- [[agent-harnesses]]
