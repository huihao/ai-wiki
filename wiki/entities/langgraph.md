---
created: 2026-04-28
updated: 2026-05-09
tags: [entity, tool]
sources: 0
---

# LangGraph

## Summary
LangGraph is a library from LangChain for building stateful, multi-actor applications with LLMs, modeling workflows as cyclic graphs. It enables developers to create complex agent systems with persistent state, human-in-the-loop workflows, and multi-agent coordination, serving as the orchestration layer for advanced agentic applications.

## Key Attributes
- **Type**: Agent orchestration library
- **Developed by**: [[langchain-team]] / LangChain
- **Notable for**: Graph-based workflow modeling with support for cycles, conditional routing, and persistent state
- **Paradigm**: State machines expressed as directed (cyclic) graphs
- **Key features**: Checkpointing, human-in-the-loop interrupts, streaming, sub-graphs, multi-agent support
- **Language**: Python (LangGraph Python), TypeScript (LangGraph.js)

## Related Entities
- [[langchain]] — parent framework; LangGraph extends LangChain's agent capabilities
- [[langchain-team]] — the team behind LangChain and LangGraph
- [[anthropic]] — Claude is a common LLM backend used with LangGraph
- [[openai]] — GPT models are common LLM backends for LangGraph applications

## Related Concepts
- [[agent-frameworks]] — LangGraph is a leading agent orchestration framework
- [[agentic-systems]] — LangGraph is designed specifically for building agentic systems
- [[agent-orchestration]] — LangGraph provides the orchestration layer for multi-step agents
- [[stateful-sessions]] — persistent state management is a core LangGraph feature

## Sources
- (no source pages reference LangGraph directly)

## Contradictions / Open Questions
- LangGraph adds significant complexity compared to simpler agent frameworks like SmolAgents. Whether the graph-based abstraction is worth the overhead for non-trivial workflows is debated.
