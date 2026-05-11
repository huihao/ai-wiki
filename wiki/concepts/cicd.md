---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# CI/CD

## Definition

Continuous Integration and Continuous Deployment (CI/CD) is the automated execution of multi-step build, test, and deployment processes, ensuring code changes are reliably validated and shipped through predefined pipelines. In the context of AI workflows, CI/CD overlaps with workflow automation — orchestrated tool calls that follow deterministic paths for repetitive processes.

## Key Aspects

- **Fixed Sequence**: Steps (build, test, lint, deploy) executed in predetermined order with conditional branching
- **Automated Validation**: Code is tested and scanned before reaching production
- **Pipeline as Code**: Infrastructure and workflows are version-controlled (e.g., GitHub Actions YAML, Jenkinsfile)
- **Multi-Tool Coordination**: Pipelines call 10-50+ tools/APIs (compilers, test runners, container registries, deployers)
- **Workflow vs. Agent Distinction**: CI/CD follows fixed sequences (workflow pattern), unlike dynamic agent planning
- **Integration with AI Agents**: Modern AI coding agents (Claude Code, Codex) can trigger and participate in CI/CD pipelines

## Related Concepts

- [[workflow-automation]]
- [[container-security]]
- [[cloud-deployment]]
- [[cloud-native-architecture]]

## Sources

- [[workflow-automation]]
