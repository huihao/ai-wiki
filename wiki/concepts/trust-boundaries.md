---
created: 2026-04-29
updated: 2026-05-09
tags: [security]
sources: 3
---

# trust-boundaries

## Definition

Trust boundaries are the security perimeters that define which components of a system are allowed to access which resources, credentials, and capabilities. In agentic AI architectures, trust boundaries separate four key actors -- the agent (LLM runtime), agent secrets (credentials), generated code execution (untrusted programs the agent creates), and the filesystem/environment (infrastructure) -- so that a compromise in one area does not cascade to others. Drawing effective trust boundaries is critical because agents are subject to prompt injection attacks that can trick them into exfiltrating secrets or generating malicious code.

## Key Aspects

- **Four Actor Model**: Agent runtime, agent secrets (API tokens, SSH keys), generated code execution (most unpredictable), and filesystem/infrastructure -- each requiring distinct security contexts
- **Zero Boundaries (Dangerous Default)**: All four actors share a single security context, allowing generated code to read `.env` files, steal SSH keys, and access any service -- maximum risk
- **Evolution of Protection**: Zero boundaries -> secret injection proxy (prevents exfiltration but not runtime misuse) -> shared sandbox (partial isolation) -> separate compute (agent and code in distinct VMs) -> application sandbox with secret injection (recommended)
- **Application Sandbox with Secret Injection**: The recommended architecture combines separate compute contexts with a proxy that injects credentials into outbound HTTP headers only for intended endpoints, preventing both direct credential access and exfiltration
- **Harness vs. Generated Code**: The agent harness (running the LLM) and generated programs should always run in separate security contexts; the harness may be trusted, but generated code should never be
- **Team-Level Trust**: If you cannot verify AI-generated code, you do not own it, and shipping it violates the trust boundary with your users
- **Delegation Chain**: Enterprise systems (Volcano Engine) implement Agent Persona (workload identity) and Delegation Chain (identity chain for authorization) to maintain trust boundaries across distributed agent systems
- **Vercel Implementation**: Uses ephemeral Linux VMs for generated code (destroyed after execution) and Fluid compute for the agent harness (billing pauses during I/O wait)

## Related Concepts

- [[zero-trust]] -- Security approach verifying every request regardless of origin
- [[sandboxing]] -- Isolating code execution environments
- [[secrets-management]] -- Secure credential handling and injection
- [[prompt-injection]] -- Attack vector that motivates trust boundary design
- [[agent-security]] -- Protecting AI agents from attacks and misuse

## Sources

- [[agent-security]] -- Protecting AI agents from attacks
- [[secrets-management]] -- Secure credential handling patterns
- [[security-boundaries-agentic-architectures]] -- Four actor model and trust boundary evolution
- [[ai-coding-loop]] -- trust boundaries at the code level
