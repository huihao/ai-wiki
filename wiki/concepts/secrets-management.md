---
created: 2026-04-28
tags: [credentials, infrastructure, security]
---

# Secrets Management

Secrets management involves securely storing, distributing, and controlling access to sensitive credentials like API keys, passwords, and certificates in software systems.

## Overview

Proper secrets management is critical for AI agents and infrastructure to prevent credential leakage and unauthorized access.

## Types of Secrets

- API tokens and keys
- Database credentials
- SSH keys
- AWS credentials
- OAuth tokens
- Database passwords
- Encryption keys
- Service account credentials

## Challenges in Agent Systems

### Exposure Risks

Agents and generated code may:
- Read secrets from environment variables
- Access `.env` files
- Exfiltrate credentials to external servers
- Misuse credentials during execution

### Distribution Problems

- Secrets embedded in code
- Credentials in configuration files
- Environment variable exposure
- Log file leakage

## Solutions

### Secret Injection Proxy

- Intercepts outbound network traffic
- Injects credentials only for intended endpoints
- Prevents exfiltration
- Hides raw secret values from code

### Secret Brokering

- Central credential management
- Scoped access policies
- Time-limited tokens
- Audit logging

### Vault Systems

- HashiCorp Vault
- AWS Secrets Manager
- Azure Key Vault
- Google Secret Manager

## Agent-Specific Patterns

### Separated Contexts

- Agent harness holds secrets
- Generated code runs in isolated sandbox
- Secrets never exposed to sandbox
- Credentials injected at network layer

### Scoped Tools

- Agents use narrow tool invocations
- Tools manage their own credentials
- Agent never sees raw secrets
- Per-customer or per-operation scoping

## Best Practices

1. Never hardcode secrets
2. Use secret injection over direct access
3. Rotate credentials regularly
4. Audit secret access
5. Separate security contexts
6. Use ephemeral execution environments
7. Implement credential expiration

## Security Properties

### No Direct Access

Generated code cannot read secrets directly.

### Scoped Usage

Credentials limited to specific operations or endpoints.

### Exfiltration Prevention

Secrets cannot be copied out of execution context.

### Header Injection

Injected credentials overwrite user-supplied headers to prevent substitution attacks.

## Related Sources

- [[security-boundaries-agentic-architectures]] - Agent security framework

## Related Concepts

- [[agent-security]] - Agent system protection
- [[sandboxing]] - Execution isolation
- [[trust-boundaries]] - Security separation
- [[credential-brokering]] - Secret distribution

## External Links

- [Vercel Sandbox Secret Injection](https://vercel.com/docs/vercel-sandbox/concepts/firewall#credentials-brokering)