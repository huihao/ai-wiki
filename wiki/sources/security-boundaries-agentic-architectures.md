---
url: "https://vercel.com/blog/security-boundaries-in-agentic-architectures"
title: "Security Boundaries in Agentic Architectures"
author: "Malte Ubl"
date: "2026-04-27"
source: "Vercel"
tags: ["security", "agents", "prompt-injection", "sandbox", "secrets-management"]
---

# Security Boundaries in Agentic Architectures

A framework for drawing security boundaries in agentic architectures, addressing the risk of prompt injection and code execution in AI agents.

## Core Problem

Most agents run with zero isolation between the agent and the code it generates, creating significant security vulnerabilities.

### The Attack Scenario

Prompt injection in log files can trick agents into:
- Exfiltrating secrets (SSH keys, AWS credentials)
- Generating malicious software
- Compromising infrastructure
- Deleting data

## Four Actors in Agentic Systems

### 1. Agent

LLM-driven runtime defined by context, tools, and model. Runs inside an agent harness. Subject to prompt injection and unpredictable behavior.

### 2. Agent Secrets

Credentials needed for system function: API tokens, database credentials, SSH keys. Managed by harness but dangerous when accessible to other components.

### 3. Generated Code Execution

Programs created and executed by the agent. Most unpredictable actor. Can do anything the language runtime allows.

### 4. Filesystem/Environment

Infrastructure the system runs on (laptop, VM, Kubernetes cluster). Can trust harness but cannot trust agent without boundaries.

## Security Architecture Evolution

### Zero Boundaries (Default)

All four actors share single security context. Agent can read `.env` files, SSH keys, API tokens. Generated code can steal credentials and reach any service.

**Risk level: Maximum**

### Secret Injection without Sandboxing

Proxy intercepts outbound traffic, injecting credentials only for intended endpoints. Prevents exfiltration but doesn't prevent runtime misuse.

**Improvement: Moderate**

### Shared Sandbox

Isolates from broader environment but agent and generated code still share context. Generated code can still misuse credentials through proxy.

**Limitation: Partial isolation**

### Separate Agent/Sandbox Compute

Agent harness and generated programs run in separate VMs/sandboxes with distinct security contexts.

**Key benefits:**
- Harness and secrets in one context
- Filesystem and generated code in another
- No access to agent secrets for generated code

**Risk level: Low**

### Application Sandbox with Secret Injection

Combines separate compute with secret injection proxy.

**Security properties:**
- Full isolation between harness and generated programs
- No direct credential access for generated code
- Credentials usable through proxy but cannot be exfiltrated
- Injected headers prevent credential substitution

**Recommended for production**

## Design Principles

1. Harness never exposes credentials to agent directly
2. Agents access capabilities through scoped tool invocations
3. Tools should be as narrow as possible
4. Generated programs needing credentials are separate concern

## Compute Profiles

### Agent Harness

- Spends time waiting on LLM API responses
- Fits Fluid compute (billing pauses during I/O)
- Only counts active CPU time

### Generated Code

- Short-lived, unpredictable, untrusted
- Needs clean, isolated environments per execution
- Ephemeral Linux VMs (spin up per execution)
- Destroyed after execution

## Implementation on Vercel

- [Vercel Sandbox](https://vercel.com/sandbox) provides ephemeral Linux VMs
- [Fluid compute](https://vercel.com/fluid) optimizes agent harness costs
- [Safe secret injection](https://vercel.com/changelog/safely-inject-credentials-in-http-headers-with-vercel-sandbox) now available

## Related Concepts

- [[agent-security]] - Protecting AI agents from attacks
- [[prompt-injection]] - Manipulating agent behavior through inputs
- [[sandbox-execution]] - Isolating code execution environments
- [[secrets-management]] - Secure credential handling
- [[agent-architecture]] - Designing agent systems
- [[trust-boundaries]] - Security context separation

## Related Entities

- [[vercel]] - Cloud platform provider
- [[malte-ubl]] - Vercel CTO, author

## External Links

- [Security Boundaries in Agentic Architectures](https://vercel.com/blog/security-boundaries-in-agentic-architectures)
- [Vercel Sandbox Documentation](https://vercel.com/docs/vercel-sandbox/concepts/firewall#credentials-brokering)
