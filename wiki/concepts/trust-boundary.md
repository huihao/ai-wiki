---
created: 2026-04-29
updated: 2026-05-09
tags: [security]
sources: 2
---

# Trust Boundary

## Definition

A trust boundary is a conceptual or physical line separating components with different levels of trust in a system, governing how data and commands flow between trusted and untrusted domains. In agentic AI architectures, trust boundaries separate the agent harness (trusted) from generated code execution (untrusted), ensuring that potentially compromised or malicious code cannot access credentials or sensitive resources.

## Key Aspects

- In agentic systems, four actors require trust boundaries: the agent, agent secrets, generated code execution, and the filesystem/environment
- The zero-boundary default (all actors share one security context) represents maximum risk: generated code can read .env files, SSH keys, and API tokens
- Application sandboxing with secret injection is the recommended production approach: credentials are injected via a proxy that prevents exfiltration while enabling legitimate use
- The AI coding loop illustrates trust boundaries at the code level: a server-side shopping cart must never trust prices sent by the client, always using the server's product catalog
- Prompt injection in external data (log files, web content) can trick agents into crossing trust boundaries to exfiltrate secrets or execute unauthorized actions
- Separate compute environments for agent harness and generated code ensure that even fully compromised code cannot access agent credentials
- Trust boundaries extend to the team level: if you cannot verify AI-generated code, you do not own it, and shipping it violates the trust boundary with your users
- Secrets management (scoped tool invocations, credential brokering proxies) operationalizes trust boundaries in production systems

## Related Concepts

- [[prompt-injection]]
- [[sandboxing]]
- [[secrets-management]]

## Sources

- [[ai-coding-loop]]
- [[security-boundaries-agentic-architectures]]
