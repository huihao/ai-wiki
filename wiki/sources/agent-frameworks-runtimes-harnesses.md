---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agents, frameworks, langchain, langgraph, architecture]
sources: 1
---

# Agent Frameworks, Runtimes, and Harnesses

## Metadata

- **Author**: Harrison Chase
- **Date**: 2025-10-25
- **URL**: https://blog.langchain.com/agent-frameworks-runtimes-and-harnesses-oh-my/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/framwork/Agent Frameworks, Runtimes, and Harnesses- oh my!.md`

## Summary

A taxonomy distinguishing three layers of agent tooling: frameworks (provide abstractions), runtimes (provide infrastructure), and harnesses (provide batteries-included defaults). Helps clarify when to use LangChain, LangGraph, and DeepAgents.

## Definitions

### Agent Frameworks (LangChain)

**Purpose**: Provide abstractions and mental models for building LLM applications

**Key Characteristics**:
- Easier onboarding through standard patterns
- Abstractions represent a worldview
- Can obfuscate inner workings if done poorly
- May lack flexibility for advanced use cases

**Examples**:
- LangChain
- Vercel AI SDK
- CrewAI
- OpenAI Agents SDK
- Google ADK
- LlamaIndex

**LangChain 1.0 Focus**:
- Structured content blocks
- Agent loop abstraction
- Middleware for flexibility

### Agent Runtimes (LangGraph)

**Purpose**: Provide infrastructure-level considerations for production agent deployment

**Key Features**:
- **Durable execution**: Resilient, persistent agent runs
- **Streaming support**: Real-time output
- **Human-in-the-loop**: Interruption and approval workflows
- **Thread-level persistence**: State within conversation
- **Cross-thread persistence**: Memory across conversations

**Examples**:
- LangGraph
- Temporal
- Inngest
- Other durable execution engines

**Architecture**: Lower-level than frameworks, can power frameworks (LangChain 1.0 built on LangGraph)

### Agent Harnesses (DeepAgents)

**Purpose**: Batteries-included, opinionated agent systems with built-in capabilities

**Key Characteristics**:
- Higher-level than frameworks
- Default prompts and behaviors
- Opinionated tool call handling
- Built-in planning tools
- Filesystem access
- General-purpose capabilities

**Examples**:
- DeepAgents
- Claude Agent SDK
- Potentially all coding CLIs (could be considered harnesses)

**Analogy**: "General purpose version of Claude Code"

## When to Use Each

| Layer | Use Case | Complexity |
|-------|----------|------------|
| **Framework** | Custom applications, need flexibility | Medium |
| **Runtime** | Production deployment, reliability | Low-Medium |
| **Harness** | Quick deployment, general-purpose tasks | Low |

### Framework Use Cases

- Building custom agent applications
- Need control over agent loop
- Want to define own patterns
- Standard abstractions help team onboarding

### Runtime Use Cases

- Production deployment requirements
- Need durability and persistence
- Complex state management
- Human-in-the-loop workflows
- Streaming and real-time applications

### Harness Use Cases

- General-purpose tasks
- Want batteries included
- Don't want to design from scratch
- Quick prototyping to deployment
- Standard tooling is sufficient

## Key Insights

1. **Blurry Boundaries**: LangGraph is both runtime and framework
2. **Stacking Architecture**: Harness → Framework → Runtime
3. **Production Focus**: Runtimes address infrastructure concerns
4. **Mental Models**: Definitions help clarify tool selection
5. **Evolving Terminology**: "Harness" is emerging usage

## Related Concepts

- [[agent-frameworks]]
- [[agent-runtimes]]
- [[agent-harnesses]]
- [[durable-execution]]
- [[human-in-the-loop]]
- [[agents]]

## Related Entities

- [[harrison-chase]]
- [[langchain]]
- [[langgraph]]
- [[deepagents]]
- [[vercel]]
- [[crewai]]
- [[openai]]
- [[temporal]]

## Sources

- [Agent Frameworks, Runtimes, and Harnesses](https://blog.langchain.com/agent-frameworks-runtimes-and-harnesses-oh-my/)

## Evolution

- 2026-04-28: Initial creation from LangChain blog article