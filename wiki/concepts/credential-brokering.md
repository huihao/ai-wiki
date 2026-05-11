---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Credential Brokering

## Definition

Credential brokering is the practice of intermediating the management, storage, rotation, and distribution of secrets (API keys, database passwords, certificates, tokens) between services and consumers in a centralized, auditable manner, rather than embedding credentials directly in application code or configuration files.

## Key Aspects

- Centralizes secret storage in a dedicated vault or service, removing credentials from source code and configuration files
- Provides dynamic secret generation on demand (e.g., short-lived database credentials) rather than distributing static secrets
- Enforces access policies: who can access which secrets, under what conditions, with audit logging
- Supports automatic credential rotation on configurable schedules, reducing the blast radius of compromised secrets
- Integrates with CI/CD pipelines and deployment systems to inject secrets at runtime
- Solutions include HashiCorp Vault, AWS Secrets Manager, Azure Key Vault, and GCP Secret Manager
- Agent-based patterns can fetch credentials on behalf of services, providing a brokering layer that adds access control and auditability

## Related Concepts

- [[secrets-management]]
- [[zero-trust-architecture]]
- [[infrastructure-as-code]]
- [[devops]]
- [[cloud-security]]

## Sources

- [[secrets-management]]
