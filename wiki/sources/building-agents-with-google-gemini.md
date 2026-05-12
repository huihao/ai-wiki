# Building Agents with Google Gemini and Open Source Frameworks

**Source**: [Google Developers Blog](https://developers.googleblog.com/en/building-agents-google-gemini-open-source-frameworks/)
**Authors**: Shrestha Basu Mallick, Philipp Schmid
**Date**: 2025-05-20

## Overview

Introduction to building AI agents using Google's Gemini models with popular open-source frameworks. Covers the advantages of Gemini models and framework selection guidance.

## Gemini Advantages for Agent Development

- Advanced reasoning capabilities
- Multimodality support (text, images, video, audio)
- Strong function calling capabilities
- Gemini 2.5 with latest improvements

## Open Source Frameworks Covered

### LangGraph
- Extension of LangChain for stateful, multi-actor applications
- Workflow representation as graphs (nodes and edges)
- Excellent for complex, stateful workflows
- Provides visibility and control over reasoning process
- Uses Gemini's reasoning and function calling for each step

### CrewAI
- Designed for orchestrating autonomous AI agents that collaborate
- Define agents with specific roles, goals, and backstories
- Seamless integration with Gemini models
- Multi-agent systems with specialized roles
- Effective collaboration and task execution

### LlamaIndex
- Framework for building knowledge agents connected to data
- Excels at data ingestion, indexing, and retrieval
- Multi-agent workflows for knowledge work automation
- Direct Gemini integration for embeddings and retrieval
- Supports both text-only and multimodal RAG

### Composio
- Simplifies integration of external tools and APIs
- Managed layer for authentication and execution
- Pre-built tools for GitHub, Slack, Google Workspace, Notion, etc.
- Uses Gemini's function calling for tool selection
- Universal connector for agents

## Framework Selection Criteria

Choice depends on specific requirements:
- LangGraph: Complex stateful workflows, visibility and control
- CrewAI: Multi-agent collaboration, role-based tasks
- LlamaIndex: Knowledge agents, RAG systems
- Composio: Tool/API integration, real-world task execution

## Related Concepts

- [[ai-agents]]
- [[multi-agent-systems]]
- [[function-calling]]
- [[retrieval-augmented-generation]]
- [[knowledge-agents]]

## Related Entities

- [[google]]
- [[gemini]]
- [[langgraph]]
- [[crewai]]
- [[llamaindex]]
- [[composio]]