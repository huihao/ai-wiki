---
created: 2026-04-28
tags: [agent, ai-safety, security]
---

# Agent Security

Agent security encompasses protecting AI agent systems from attacks, vulnerabilities, and unintended behaviors, particularly in coding agents and autonomous systems.

## Core Concerns

### Prompt Injection

Agents can be manipulated through crafted inputs in:
- Log files
- User messages
- Document content
- External data sources

Attack vectors enable:
- Credential exfiltration
- Malicious code generation
- Infrastructure compromise
- Data deletion

### Code Execution Risks

Generated code poses risks:
- Arbitrary execution
- Secret access
- Network exfiltration
- System modification

## Security Frameworks

### Four Actors Model

1. **Agent** - LLM-driven runtime (untrusted)
2. **Agent Secrets** - Credentials (highly sensitive)
3. **Generated Code** - Programs created by agent (untrusted)
4. **Filesystem/Environment** - Infrastructure (needs protection)

### Trust Boundaries

- Harness should never expose secrets to agent
- Agents use scoped tool invocations
- Generated code isolated from secrets
- Environment protected from agent actions

## Security Architectures

### Zero Boundaries (Maximum Risk)

All components share single context. No isolation.

### Secret Injection (Moderate)

Proxy injects credentials at network level. Prevents exfiltration but allows runtime misuse.

### Shared Sandbox (Partial)

Isolated from environment but agent and generated code share context.

### Separate Compute (Low Risk)

Agent harness and generated code in separate VMs with distinct contexts.

### Application Sandbox + Secret Injection (Recommended)

Full isolation plus credential proxy. Generated code uses secrets through proxy but cannot read them.

## Best Practices

1. Separate agent compute from sandbox compute
2. Use secret injection proxies
3. Implement ephemeral execution environments
4. Scope tool invocations narrowly
5. Never expose secrets directly to agents

## Implementation Examples

- Vercel Sandbox for ephemeral VMs
- Fluid compute for agent harness
- Secret brokering at network layer

## Related Sources

- [[security-boundaries-agentic-architectures]] - Vercel framework

## Related Concepts

- [[prompt-injection]] - Attack manipulation
- [[sandbox-execution]] - Execution isolation
- [[secrets-management]] - Credential handling
- [[agent-architecture]] - System design
- [[trust-boundaries]] - Security separation

## External Links

- [Vercel Security Framework](https://vercel.com/blog/security-boundaries-in-agentic-architectures)