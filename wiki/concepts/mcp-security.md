---
created: 2026-04-29
updated: 2026-05-09
tags: [security]
sources: 3
---

# MCP Security

## Definition

MCP security encompasses the vulnerabilities, attack vectors, and defensive measures associated with the Model Context Protocol (MCP), which enables AI agents to interact with external tools and data sources. Because MCP servers can read, modify, and exfiltrate data, securing them is critical for trustworthy agentic AI deployments.

## Key Aspects

- Tool poisoning attacks allow malicious MCP servers to inject adversarial instructions into tool descriptions, manipulating LLM behavior without the user's knowledge
- Real-world exploits include the GitHub MCP vulnerability (access to private repositories) and WhatsApp MCP exploit (message history exfiltration)
- MCP-Scan is a dedicated security scanner that audits MCP server configurations for known vulnerability patterns
- Guardrails provide a contextual security layer that monitors and restricts agent actions in real time
- The Invariant Gateway offers debugging and security for agentic applications in production
- Acquired by Snyk in June 2025 to accelerate integration into mainstream developer security tooling
- Formal verification approaches impose hard mathematical constraints on agent behavior to provide provable security guarantees

## Related Concepts

- [[ai-agent-security]] -- Broader security considerations for autonomous AI systems
- [[guardrails]] -- Runtime safety mechanisms for AI agents
- [[tool-poisoning]] -- Attack vector through malicious tool descriptions

## Sources

- [[ai-agent-security]]
- [[invariant-labs]]
- [[invariant-labs-blog]]
