---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Abstractions

## Definition

Abstractions in the context of AI agent tooling are the mental models and simplified interfaces that frameworks provide to developers, representing a particular worldview for how LLM applications should be built. They reduce cognitive overhead by hiding complexity behind standard patterns, though they can obfuscate inner workings if designed poorly.

## Key Aspects

- Abstractions represent a worldview — they encode assumptions about how agent systems should be structured
- Agent frameworks (e.g., LangChain, Vercel AI SDK, CrewAI) are the primary providers of these abstractions
- Good abstractions enable easier onboarding through standard patterns while remaining flexible for advanced use cases
- Poor abstractions can obfuscate inner workings and limit extensibility
- Runtimes (e.g., LangGraph, Temporal) sit at a lower level than frameworks and provide infrastructure abstractions like durable execution and streaming
- Harnesses (e.g., DeepAgents, Claude Agent SDK) are the highest-level abstractions — batteries-included, opinionated systems with built-in capabilities

## Related Concepts

- [[agent-frameworks]]
- [[agent-infrastructure]]
- [[ai-agents]]
- [[architecture-thinking]]

## Sources

- [[agent-frameworks-runtimes-harnesses]]
