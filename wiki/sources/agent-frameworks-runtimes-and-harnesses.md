---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Agent Frameworks, Runtimes, and Harnesses—oh my!

## Metadata

- **Author**: Harrison Chase
- **Date**: 2025-10-25
- **URL**: https://blog.langchain.com/agent-frameworks-runtimes-and-harnesses-oh-my/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/framwork/Agent Frameworks, Runtimes, and Harnesses- oh my!.md`

## Summary

Harrison Chase proposes a taxonomy for AI agent infrastructure: **Frameworks** (abstractions and mental models, e.g., LangChain), **Runtimes** (production infrastructure like durable execution and persistence, e.g., LangGraph), and **Harnesses** (batteries-included, opinionated agent systems, e.g., DeepAgents/Claude Code).

## Key Takeaways

- **Agent Frameworks** provide abstractions that make it easier to get started and standardize development across projects. Examples: LangChain, Vercel AI SDK, CrewAI, OpenAI Agents SDK, LlamaIndex.
- **Agent Runtimes** provide infrastructure-level features: durable execution, streaming, human-in-the-loop, thread-level and cross-thread persistence. Examples: LangGraph, Temporal, Inngest.
- **Agent Harnesses** are higher-level, opinionated systems with default prompts, tool handling, planning, and filesystem access. Examples: DeepAgents, Claude Code SDK.
- LangChain 1.0 is built on top of LangGraph to leverage its runtime capabilities.
- The lines are blurry; LangGraph could be described as both a runtime and a framework.

## Entities Mentioned

- [[harrison-chase]] — Author; CEO of LangChain.
- [[comprehensive-rag-ollama-langchain|LangChain]] — Agent framework.
- [[langgraph]] — Agent runtime.
- DeepAgents — Agent harness from LangChain.
- [[claude-code-source-leak-harness|Claude Code]] — Described as an agent harness.
- Temporal — Durable execution engine.
- Inngest — Durable execution engine.
- [[crewai]] — Agent framework.
- [[openai]] — Agents SDK.
- [[welcome-to-llamaindex-ts|LlamaIndex]] — Agent framework.
- [[vercel]] — AI SDK.

## Concepts Mentioned

- [[agent-frameworks-runtimes-and-harnesses|Agent frameworks]] — Abstraction layers for building agent applications.
- [[agent-frameworks-runtimes-and-harnesses|Agent runtimes]] — Production infrastructure for executing agents.
- [[agent-frameworks-runtimes-and-harnesses|Agent harnesses]] — Batteries-included, opinionated agent systems.
- Durable execution — Surviving crashes and resuming agent workflows.
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Human-in-the-loop]] — Pausing agent execution for human approval.

## Raw Notes

- The term "Agent Harness" is relatively new and not yet rigidly defined.
- The article admits murkiness and overlap between categories.

## Questions / Follow-ups

- Will the industry converge on this taxonomy, or will new categories emerge (e.g., "Agent Orchestrators")?
- How do MCP servers fit into the framework/runtime/harness stack?
