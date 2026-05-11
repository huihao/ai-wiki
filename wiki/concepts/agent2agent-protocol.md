---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, interoperability, mcp, protocol]
sources: 1
---

# Agent2Agent Protocol (A2A)

## Definition

An open JSON-RPC standard released by Google that enables AI agents to discover, authenticate, and exchange data across network boundaries. A2A complements the Model Context Protocol (MCP) by handling inter-agent communication rather than in-agent tool exposure.

## Key Proponents / Critics

- **Creator:** [[google]] — released the protocol in 2025
- **Commentary:** [[builder-io]] — detailed analysis of the protocol

## Related Concepts

- [[model-context-protocol|MCP]] — in-agent tool schema standard
- [[8-factor-agent-breakdown|multi-agent orchestration]] — coordinating multiple agents
- [[context-engineering|AI agent]] — the systems being connected
- JSON-RPC — wire format
- [[8-factor-agent-breakdown|Agent Card]] — discovery document
- [[machine-learning|task state machine]] — protocol primitive
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|micro-service architecture]] — analogous design pattern

## Sources

- [[agent2agent-a2a-protocol]]

## Evolution

- **2025:** Released by Google as open standard
- **Current:** ~50 vendors announced support; adapters for LangGraph, CrewAI, AutoGen
- **Limitation:** No public registry yet; discovery is DIY
