---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, agents]
sources: 3
---

# AgentDojo

## Summary
AgentDojo is an open-source benchmarking framework developed by Invariant Labs that jointly evaluates AI agent utility (task completion) and security (resistance to adversarial attacks) using realistic dynamic environments where agents interact with untrusted tool outputs.

## Key Aspects
- **Joint evaluation**: Unlike benchmarks that test only task performance, AgentDojo assesses both how well agents complete useful tasks and how well they resist prompt injection and data exfiltration attacks embedded in tool results.
- **Dynamic environments**: Test environments simulate realistic scenarios where agents process untrusted content (emails, web pages, documents) that may contain adversarial payloads.
- **Competition recognition**: AgentDojo won first prize in the Center for AI Safety's SafeBench competition (2025), receiving a $50,000 prize for advancing agent security benchmarking.
- **Real-world exploit validation**: Invariant Labs uses AgentDojo to demonstrate real exploits against production MCP servers (GitHub, WhatsApp), confirming that benchmark findings translate to practical vulnerabilities.
- **Integration with guardrails**: Results inform the design of Guardrails (runtime security layers) and MCP-Scan (security scanner for Model Context Protocol servers).
- **Open research contribution**: The framework is publicly available, enabling the broader research community to evaluate and improve agent security.

## Related Concepts
- [[agent-benchmarking]]
- [[agentic-systems]]
- [[agent-systems]]

## Sources
- [[ai-agent-security]]
- [[invariant-labs]]
- [[invariant-labs-blog]]
