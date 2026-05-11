---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure, kubernetes, pattern]
sources: 1
---

# Sidecar Pattern

## Definition

The sidecar pattern is a deployment pattern where a helper container runs alongside the main application container in the same Pod (or on the same VM). The sidecar extends or enhances the main container's functionality without modifying its code. By co-locating in the same Pod, the sidecar shares the same network namespace and can communicate with the main container via localhost. Common sidecar use cases include: reverse proxies (Nginx, Envoy) for traffic management, log collectors (Fluentd) for centralized logging, monitoring agents (Prometheus exporters) for metrics collection, and TLS terminators for certificate management. The sidecar pattern is a key enabler of the service mesh architecture used extensively in Kubernetes.

## Key Proponents / Critics

- [[kubernetes]] — Native Pod model enables sidecar co-location
- [[cloudflare]] — Uses sidecar-like patterns for edge proxying

## Related Concepts

- [[pod]] — The Kubernetes primitive that enables sidecar container co-location
- [[reverse-proxy]] — A primary use case for sidecar containers (e.g., Envoy proxy)
- [[observability]] — Sidecars frequently implement observability concerns (logging, tracing, metrics)
- [[distributed-systems]] — Sidecars handle cross-cutting concerns in distributed architectures
- [[cloud-native-architecture]] — Architectural style where sidecars are a foundational pattern

## Related Entities

- [[kubernetes]] — Container orchestration platform where the sidecar pattern is widely used
- [[nginx]] — Commonly deployed as a sidecar reverse proxy container
- [[grafana]] — Observability platform that receives metrics from sidecar-exported data
- [[prometheus]] — Metrics collection system often paired with sidecar exporters

## Sources

- [[kubernetes-the-harder-way|Kubernetes the Harder Way]] — Sidecar patterns in Kubernetes networking

## Evolution

- **2015**: The sidecar pattern is described in cloud-native architecture documentation by Buoyant (Linkerd)
- **2016**: Istio adopts Envoy as a sidecar proxy, making the pattern central to service mesh
- **2018**: Service mesh adoption grows and sidecars become the standard for cross-cutting concerns
- **2022**: Kubernetes KEP-753 proposes native sidecar container support
- **2023**: Kubernetes 1.28 introduces native sidecar containers via native sidecar init containers
- **2024+**: Ephemeral sidecars and WebAssembly-based sidecars (Envoy WASM) reduce resource overhead
