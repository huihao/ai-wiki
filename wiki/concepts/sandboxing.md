---
created: 2026-04-28
updated: 2026-05-09
tags: [infrastructure, security]
sources: 0
---

# Sandboxing

## Definition

Sandboxing is a security mechanism for isolating applications, code, or processes within a restricted environment to prevent them from affecting or accessing the broader host system. A sandbox limits the resources and system calls available to the isolated process, containing any potentially harmful behavior within the boundary. Sandboxing is used extensively in web browsers (isolating extensions and tabs), operating systems (restricting application permissions), container runtimes (isolating workloads), and AI systems (safely executing untrusted code from agents or plugins). The degree of isolation varies from lightweight process-level separation to full virtual machine encapsulation.

## Key Proponents / Critics

- [[docker]] — Container runtime that implements OS-level sandboxing
- [[anthropic]] — Implements sandboxing for Claude's code execution capabilities

## Related Concepts

- [[sandbox-execution]] — The specific practice of running untrusted code in a sandboxed environment
- [[container-security]] — Security model built on top of container sandboxing primitives
- [[agent-security]] — Security considerations for AI agents, where sandboxing is a key defense
- [[guardrails]] — Security controls that complement sandboxing in AI systems
- [[zero-trust]] — Security model that aligns with sandboxing principles of least privilege

## Related Entities

- [[docker]] — Widely used container runtime providing sandbox isolation
- [[kubernetes]] — Orchestrates sandboxed containers at scale with Pod-level isolation

## Sources

(No specific sources linked)

## Evolution

- **1970s**: Unix chroot provides the first filesystem-level isolation mechanism
- **1990s**: Java Security Manager and browser sandboxing protect against untrusted client code
- **2000s**: SELinux and AppArmor provide mandatory access control for process sandboxing
- **2006**: Linux namespaces are extended to enable full container-based sandboxing
- **2013**: Docker makes container sandboxing accessible and widely adopted
- **2018**: gVisor and Kata Containers introduce stronger sandbox boundaries with lightweight VMs
- **2023+**: Sandboxing becomes critical infrastructure for AI agent code execution and MCP server isolation
