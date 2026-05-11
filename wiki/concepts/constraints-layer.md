---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Constraints Layer

## Definition

The constraints layer is a harness engineering component that ensures agent reliability through fail-closed defaults and permission systems. It enforces security boundaries, resource limits, and behavioral constraints that prevent AI agents from taking unintended or harmful actions, acting as a critical safety mechanism in production agent deployments.

## Key Aspects

- **Fail-Closed Defaults**: Agent is denied by default; permissions must be explicitly granted
- **Permission Systems**: RBAC (Role-Based) and ABAC (Attribute-Based) access control for agent actions
- **Resource Limits**: Constraints on token usage, execution time, API calls, and compute consumption
- **Sandbox Enforcement**: Restricting agent access to specific file systems, networks, and executables
- **Policy Gateway**: Central checkpoint where all agent actions are validated before execution
- **PII/Secret Filtering**: Preventing agents from accessing or exfiltrating sensitive data
- **Prompt Injection Defense**: Detecting and blocking adversarial inputs that attempt to override constraints
- **Audit Logging**: Recording all constraint decisions for review and compliance

## Related Concepts

- [[harness-engineering-overview]]
- [[container-security]]
- [[context-firewalling]]

## Sources

- [[index]]
