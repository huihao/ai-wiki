---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, infrastructure]
sources: 1
---

# Agent Runtimes

## Definition

Infrastructure-level systems for running agents in production. Provide durability, persistence, streaming, and other production-ready features.

## Key Features

- **Durable execution**: Resilient, persistent agent runs
- **Streaming support**: Real-time output delivery
- **Human-in-the-loop**: Interruption and approval workflows
- **Thread-level persistence**: State within conversation
- **Cross-thread persistence**: Memory across conversations

## Examples

- LangGraph
- Temporal
- Inngest
- Other durable execution engines

## When to Use

- Production deployment requirements
- Need durability and persistence
- Complex state management
- Human-in-the-loop workflows
- Streaming and real-time applications
- Low-to-medium complexity (infrastructure layer)

## Architecture Position

Runtimes are lower-level than frameworks and can power frameworks. For example, LangChain 1.0 is built on LangGraph to leverage the runtime infrastructure.

## Related Concepts

- [[agent-frameworks]]
- [[agent-harnesses]]
- [[durable-execution]]
- [[human-in-the-loop]]
- [[agents]]

## Related Entities

- [[langgraph]]
- [[langchain]]
- [[temporal]]
- [[inngest]]

## Sources

- [[agent-frameworks-runtimes-harnesses]]

## Evolution

- 2026-04-28: Initial definition from agent tooling taxonomy