---
created: 2026-04-28
updated: 2026-05-09
tags: [entity, tool]
sources: 0
---

# Docker

## Summary

Docker is a platform for developing, shipping, and running applications in lightweight, portable containers. It packages applications and their dependencies into standardized units (containers) that run consistently across any environment — from a developer's laptop to production cloud infrastructure.

## Key Attributes

- **Container runtime**: Uses Linux kernel features (namespaces, cgroups) to isolate processes and resource usage
- **Image registry**: Docker Hub provides a public registry of pre-built container images; private registries also supported
- **Dockerfile**: Declarative build files that define container contents step-by-step
- **Docker Compose**: Multi-container orchestration for development and testing environments
- **Ubiquitous in ML/AI**: Nearly all ML inference servers, training frameworks, and data pipelines ship as Docker containers
- **Cloud-native standard**: Foundation of Kubernetes-based deployment, CI/CD pipelines, and reproducible research environments

## Related Entities

- [[kubernetes]] — container orchestration platform that manages Docker containers at scale
- [[cloudflare]] — edge deployment with container support

## Related Concepts

- [[ml-infrastructure]] — Docker is foundational to ML deployment infrastructure
- [[cross-platform-deployment]] — containerization enables consistent cross-platform runs

## Sources

- Referenced across multiple wiki sources as standard deployment mechanism
