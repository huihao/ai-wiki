---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 3
---

# Agent Benchmarking

## Definition
Agent benchmarking is the systematic evaluation of AI agent systems across multiple dimensions—task completion utility, security robustness, and safety—using structured frameworks and reproducible challenges to measure and compare agent performance.

## Key Aspects
- **Joint utility-security evaluation**: AgentDojo, developed by Invariant Labs, pioneered benchmarks that assess both how well agents accomplish tasks and how resistant they are to adversarial attacks (e.g., prompt injection via untrusted content in tool results).
- **Competition-driven validation**: AgentDojo won first prize in the Center for AI Safety's SafeBench competition (2025), demonstrating the importance of standardized evaluation for agent security.
- **Observability tools**: Invariant Labs' Explorer provides visualization of agent traces to identify failure modes, and MCP-Scan detects vulnerabilities in Model Context Protocol servers.
- **Real-world exploit testing**: Research teams demonstrate exploits against production MCP servers (GitHub, WhatsApp) to validate that benchmarks capture practical attack vectors.
- **Formal verification integration**: Some benchmarking approaches incorporate hard security constraints with mathematical verification of agent behavior properties.

## Related Concepts
- [[agentdojo]]
- [[agentic-systems]]
- [[coding-agent]]
- [[agent-loop]]

## Sources
- [[invariant-labs-blog]]
- [[ai-agent-security]]
- [[invariant-labs]]
