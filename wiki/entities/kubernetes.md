---
created: 2026-04-28
updated: 2026-05-09
tags: [entity, tool]
sources: 0
---

# Kubernetes

## Summary

Kubernetes (K8s) is an open-source container orchestration platform originally developed by Google that automates the deployment, scaling, and management of containerized applications. It has become the industry standard for running production workloads at scale, including ML inference services, training jobs, and data pipelines.

## Key Attributes

- **Container orchestration**: Automatically schedules, scales, and heals containerized services across clusters of machines
- **Declarative configuration**: YAML manifests define desired state; the control loop continuously reconciles actual state with desired state
- **Core objects**: Pods (smallest deployable unit), Deployments (rolling updates), Services (networking), ConfigMaps/Secrets (configuration), PersistentVolumes (storage)
- **Autoscaling**: Horizontal Pod Autoscaler (HPA) scales replicas based on CPU, memory, or custom metrics; critical for variable-load ML inference
- **Ecosystem**: Rich extension ecosystem including Helm (package manager), Istio (service mesh), ArgoCD (GitOps), and Prometheus (monitoring)
- **ML-specific usage**: Kubeflow provides ML workflow orchestration on Kubernetes; used for distributed training, model serving (KServe), and feature stores

## Related Entities

- [[docker]] — container runtime that Kubernetes orchestrates
- [[cloudflare]] — cloud infrastructure provider

## Related Concepts

- [[ml-infrastructure]] — Kubernetes is a core component of production ML infrastructure
- [[distributed-systems]] — Kubernetes manages distributed container workloads
- [[gpu-clusters]] — Kubernetes schedules GPU workloads across clusters

## Sources

- Referenced across multiple wiki sources as production deployment platform
