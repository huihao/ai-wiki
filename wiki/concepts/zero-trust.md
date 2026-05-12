---
created: 2026-04-29
updated: 2026-05-09
tags: [security]
sources: 3
---

# zero-trust

## Definition

Zero trust is a security philosophy and architecture that eliminates implicit trust based on network location, device identity, or past authentication, requiring every request, tool invocation, and data access to be verified independently regardless of origin. In agentic AI systems, zero trust means that no component -- the LLM runtime, generated code, external tools, or human operators -- is trusted by default; each must prove authorization for every action through scoped permissions, delegation chains, and continuous validation. This approach is essential because agents are subject to prompt injection and unpredictable behavior that can compromise even previously trusted components.

## Key Aspects

- **No Implicit Trust**: Every request is verified regardless of whether it comes from inside or outside the security perimeter; network location provides no trust advantage
- **Agent Persona and Delegation Chain**: Enterprise systems implement zero trust through agent workload identities (Agent Persona) and identity chains (Delegation Chain) that track and authorize every action through the system
- **Scoped Tool Access**: Tools are registered with explicit permission boundaries; subagents receive the minimum tool access needed for their specific role (principle of least privilege)
- **Secrets Never Directly Accessible**: In zero-trust agentic architectures, agent secrets (API tokens, SSH keys) are never exposed directly to agents or generated code; they are injected via proxies only for authorized endpoints
- **Ephemeral Execution Environments**: Generated code runs in isolated, short-lived VMs that are destroyed after execution, preventing persistent compromise
- **Continuous Verification**: Rather than a one-time authentication gate, zero trust requires ongoing verification of every operation throughout the session lifecycle
- **Enterprise Compliance**: Zero-trust architectures align with SOC2 Type II, ISO 27001, and GDPR requirements, making them necessary for production deployment in regulated industries
- **Trust Boundaries Architecture**: The four actor model (agent, secrets, generated code, filesystem) with separate compute contexts is the practical implementation of zero trust in agentic systems

## Related Concepts

- [[trust-boundaries]] -- Security perimeters separating components with different trust levels
- [[sandbox-execution]] -- Isolating untrusted code execution in ephemeral environments
- [[secrets-management]] -- Secure credential handling without direct agent access
- [[agent-security]] -- Protecting AI agents from prompt injection and misuse
- [[human-in-the-loop]] -- Requiring human confirmation for critical security-sensitive actions

## Sources

- [[index]] -- Wiki index referencing zero-trust in security contexts
- [[understanding-agent-tools]] -- Enterprise tool management with zero-trust security model
- [[volcano-engine]] -- AgentKit Gateway implementing zero-trust agent persona and delegation chain
