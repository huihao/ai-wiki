---
created: 2026-04-29
updated: 2026-05-09
tags: [deployment, infrastructure, kubernetes]
sources: 2
---

# Pod

## Definition

In Kubernetes, a Pod is the smallest deployable and schedulable unit that contains one or more tightly coupled containers. Pods represent a single instance of a running process in the cluster and serve as the Kubernetes equivalent of running a process on a VM. Pods are ephemeral by design -- they can be created, destroyed, and replaced without affecting the overall system. Multiple containers within a Pod share the same network namespace (meaning they can communicate via localhost), the same IPC namespace, and can optionally share the same storage volumes. Pods are typically managed by higher-level controllers such as Deployments, StatefulSets, or DaemonSets rather than being created directly.

## Key Proponents / Critics

- [[kubernetes]] — The container orchestration system that introduced the Pod abstraction

## Related Concepts

- [[sidecar-pattern]] — A pattern where helper containers run alongside the main container in a Pod
- [[kubernetes-networking]] — Pod-to-Pod networking model and network namespaces
- [[kubernetes-control-plane]] — Manages Pod scheduling and lifecycle
- [[kubernetes-worker-nodes]] — Nodes where Pods are actually scheduled and run
- [[container-security]] — Security isolation between Pods and within Pods

## Related Entities

- [[kubernetes]] — Container orchestration platform where Pods are the fundamental unit
- [[docker]] — Container runtime commonly used with Kubernetes Pods

## Sources

- [[067_kubernetes-basics-pods-deployments-services|Kubernetes Basics: Pods, Deployments, Services]] — Core Pod concepts and lifecycle management
- [[kubernetes-the-harder-way|Kubernetes the Harder Way]] — Deep dive into Kubernetes internals including Pod networking

## Evolution

- **2014**: Kubernetes introduces the Pod as the fundamental scheduling unit, inspired by Google's Borg system
- **2015**: Pod specification becomes part of the Kubernetes v1 API with support for init containers
- **2017**: Pod security policies are introduced to control Pod-level security contexts
- **2020**: Ephemeral containers are added for in-place debugging of running Pods
- **2023**: Pod scheduling improvements include dynamic resource allocation and GPU sharing
- **2024+**: Sidecar containers become a first-class init container pattern in Kubernetes 1.28+
