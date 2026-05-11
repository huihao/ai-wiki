---
created: 2026-04-28
updated: 2026-04-28
tags: [source, agentic-systems, architecture, web-development]
sources: 1
---

# Designing Agentic AI Systems: A Web Dev's Guide

## Metadata

- **Author**: Alice Moore (Builder.io)
- **Date**: 2025-04-11
- **URL**: https://www.builder.io/blog/designing-agentic-ai-systems
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Designing Agentic AI Systems_ A Web Dev's Guide.md`

## Summary

An accessible guide framing agentic AI system design in terms familiar to web developers: microservices, API contracts, state management, and orchestration. Covers core concepts, common architectural patterns, and practical challenges.

## Key Takeaways

- **Specialist agents over generalists**: Like microservices, smaller scoped agents are simpler, more reliable, and easier to test. Combine existing LLM capabilities for higher-level functionality.
- **Orchestration layer**: The "project manager" that decomposes goals, assigns tasks, monitors progress, and adapts when things fail. Often the trickiest part.
- **Shared context and memory**: Agents need collective state (DB, vector store, message queue). Same trade-offs as Redux vs. Zustand vs. server-side state in web dev.
- **Resilience via adaptation**: When an agent fails (downed API, weird data), the orchestrator can retry, reroute, or escalate — like circuit breakers for microservices.
- **Standardized communication (MCP)**: Anthropic's Model Context Protocol enables plugging in agents from different teams/LLMs, making systems modular and scalable.
- **Static vs. learning agents**: Static = predictable, fixed configuration. Learning = adaptive but unpredictable. Often want both: static for core logic, learning for personalization.
- **Feedback loops and evals**: Like unit tests for AI outputs. Failure triggers adjustments via RL or supervised learning. Need careful versioning and canary releases for learning agents.
- **Three architecture patterns**:
  - **Hierarchical/Manager**: Top-down, sequential, well-defined workflows. Like controller calling helper functions.
  - **Peer-to-Peer**: Event-driven, parallel, dynamic. Like pub/sub microservices. Risk: chaos without structure.
  - **Hybrid**: Teams of P2P agents reporting to a manager. Most realistic for complex systems.
- **Web dev skills transfer directly**: system design, state management, API integration, debugging distributed systems, UX design for human-AI interaction.

## Entities Mentioned

- [[builder-io]] — publishing platform
- Alice Moore — author
- [[anthropic]] — MCP protocol
- [[cursor]] — AI coding assistant
- Windsurf — AI coding assistant
- [[comprehensive-rag-ollama-langchain|LangChain]] — mentioned as framework
- [[vercel|Vercel AI SDK]] — mentioned as framework
- [[n8n]] — visual workflow tool
- [[comprehensive-rag-ollama-langchain|Ollama]] — local LLM hosting
- [[openrouter]] — API gateway for models

## Concepts Mentioned

- [[designing-agentic-ai-systems-web-dev|Agentic Systems]] — multi-agent AI architectures
- [[agentic-reasoning-layer|Orchestration Layer]] — coordination and task management
- [[model-context-protocol|MCP]] — standard for agent tool communication
- Microservices Analogy — applying distributed systems patterns to AI
- [[machine-learning|Static vs. Learning Agents]] — predictability vs. adaptability trade-off
- [[understanding-spec-driven-development-kiro-spec-kit-tessl|Eval-Driven Development]] — testing and improving AI outputs
- Catastrophic Forgetting — learning new skills at expense of old ones
- [[stop-using-init-for-agents-md|Hierarchical Agents]] — manager-worker pattern
- [[claude-code|Peer-to-Peer Agents]] — decentralized agent collaboration

## Raw Notes

- Emphasizes using deterministic code whenever possible — LLMs should handle ambiguity, not replace structured logic.
- Cost management is critical: one agent system can make dozens/hundreds of LLM calls.
- Debugging agent systems is harder than debugging distributed systems due to non-determinism.

## Questions / Follow-ups

- What are emerging patterns for agent conflict resolution?
- How do hierarchical and P2P patterns compose in production systems at scale?
