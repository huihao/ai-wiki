---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, architecture]
sources: 1
---

# Agent Frameworks

## Definition

Packages providing abstractions and mental models for building LLM applications. Make it easier to get started and provide standard patterns for application development.

## Key Characteristics

- Provide abstractions that represent a worldview
- Easier onboarding through standard patterns
- Can obfuscate inner workings if poorly designed
- May lack flexibility for advanced use cases
- Standard way to build applications helps developer mobility

## Examples

- LangChain
- Vercel AI SDK
- CrewAI
- OpenAI Agents SDK
- Google ADK
- LlamaIndex

## When to Use

- Building custom agent applications
- Need control over agent loop
- Want to define own patterns
- Standard abstractions help team onboarding
- Medium complexity projects

## Architecture Position

Frameworks sit between harnesses (higher-level) and runtimes (lower-level). Can be built on top of runtimes (e.g., LangChain 1.0 built on LangGraph).

## Related Concepts

- [[agent-runtimes]]
- [[agent-harnesses]]
- [[agents]]
- [[abstractions]]

## Related Entities

- [[langchain]]
- [[langgraph]]
- [[vercel]]
- [[crewai]]
- [[openai]]

## Sources

- [[agent-frameworks-runtimes-harnesses]]

## Evolution

- 2026-04-28: Initial definition from agent tooling taxonomy