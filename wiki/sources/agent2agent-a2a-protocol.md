---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agent, protocol, a2a, interoperability, mcp]
sources: 1
---

# What is the Agent2Agent (A2A) Protocol?

## Metadata

- **Author:** Alice Moore (Builder.io)
- **Date:** 2025-05-05
- **URL:** https://www.builder.io/blog/a2a-protocol
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/What is the Agent2Agent (A2A) Protocol_.md`

## Summary

An overview of Google's Agent2Agent (A2A) Protocol, an open standard enabling AI agents to discover, authenticate, and exchange data across network boundaries. A2A complements MCP (Model Context Protocol) by handling inter-agent communication rather than in-agent tool exposure. The article explains A2A's data primitives (Agent Card, Task, Message, Artifact), security model, and relationship to existing frameworks like LangGraph and n8n.

## Key Takeaways

- A2A is an open JSON-RPC standard for agent-to-agent communication released by Google
- Problem: agents live in different frameworks; hand-offs require custom glue code
- MCP solves in-agent tool schema exposure; A2A solves between-agent task delegation
- Four core primitives: Agent Card (discovery), Task (state machine), Message (status updates), Artifact (deliverables)
- Security: signed agent cards (JWS), auth choices (Bearer, mutual TLS), runtime payload limits
- Only the client initiates requests; only the remote updates task state
- A2A hides tool schemas and prompts behind the remote's boundary, reducing prompt injection risks vs MCP
- ~50 vendors announced support; LangGraph, CrewAI, AutoGen have adapters
- Not a replacement for MCP or workflow engines — they operate at different layers

## Entities Mentioned

- [[google]] — released the A2A Protocol
- [[builder-io]] — publication venue
- [[comprehensive-rag-ollama-langchain|LangChain]] / [[langgraph]] — mentioned frameworks with A2A adapters
- [[crewai]] — mentioned framework with adapter
- AutoGen — mentioned framework with adapter
- Flowise — mentioned for drag-and-drop A2A chains
- [[n8n]] — mentioned workflow platform
- Genkit — mentioned as example client framework

## Concepts Mentioned

- [[agent2agent-protocol|A2A]] — open standard for agent interoperability
- [[model-context-protocol|MCP]] — in-agent tool schema exposure standard
- [[8-factor-agent-breakdown|multi-agent orchestration]] — coordinating multiple AI agents
- JSON-RPC — wire format for A2A communication
- [[8-factor-agent-breakdown|Agent Card]] — discovery document at `/.well-known/agent.json`
- [[machine-learning|task state machine]] — pending → processing → input-required → completed/failed
- [[triton-inference-server|SSE]] — streaming mechanism for status and artifact updates
- [[prompt-engineering|prompt injection]] — security risk mitigated by A2A's design
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|micro-service architecture]] — analogy for understanding A2A's role

## Raw Notes

- A2A analogy: MCP = employee handbook; A2A = break room chat
- Amazon flow analogy: Agent Card = product listing, Task = order, Message = tracking, Artifact = package
- Discovery is currently DIY via YAML files or Vertex AI catalogue; no global registry yet
- Google's reference server adds ~30ms per hop in local tests
- A2A ready for prototypes and internal workflows; consumer apps need more guardrails
- Use A2A when: crossing network boundaries, need trust/progress tracking, swapping specialist agents
- Skip A2A when: everything in one process, tiny helper scripts, one-off data pulls, schema-heavy prompt-light tools

## Questions / Follow-ups

- How does A2A compare to emerging agent communication standards like ANP (Agent Network Protocol)?
- When will a public registry with verified badges emerge?
