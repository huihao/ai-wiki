---
created: 2026-04-29
updated: 2026-05-09
tags: [security]
sources: 1
---

# Container Security

## Definition

Container security encompasses the practices, tools, and policies used to protect containerized applications (Docker, Kubernetes) from vulnerabilities, misconfigurations, and supply chain attacks. It covers scanning images for known CVEs, enforcing runtime policies, managing secrets, and securing the orchestration layer.

## Key Aspects

- **Image Scanning**: Tools like Snyk Container detect vulnerabilities in Docker images before deployment
- **Kubernetes Security**: Scanning YAML manifests and Helm charts for misconfigurations (Snyk IaC)
- **Supply Chain Security**: Ensuring base images are trusted and dependencies are vulnerability-free
- **Runtime Security**: eBPF-based tools (Falco, Tracee) monitor container behavior at runtime
- **Least Privilege**: Running containers with minimal permissions, non-root users, read-only filesystems
- **Network Policies**: Restricting inter-container communication to necessary connections only
- **Secrets Management**: Avoiding hardcoded credentials; using external secret stores
- **Registry Security**: Scanning images at push and pull time from container registries

## Related Concepts

- [[snyk]]
- [[cloud-native-architecture]]
- [[co-re]]
- [[constraints-layer]]

## Sources

- [[snyk]]
