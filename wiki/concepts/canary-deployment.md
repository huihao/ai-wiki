---
created: 2026-04-29
updated: 2026-05-09
tags: [deployment, devops, kubernetes]
sources: 1
---

# Canary Deployment

## Definition

Canary deployment is a progressive delivery strategy where a new version of an application is released to a small subset of users or traffic before being rolled out to the entire production environment. Named after the historical practice of sending canaries into coal mines to detect toxic gases, this technique allows teams to validate new releases against real production traffic with minimal risk. If errors or performance regressions are detected, traffic is immediately routed back to the stable version. Canary deployments are a key enabler of continuous delivery and are widely supported in Kubernetes through ingress controllers, service meshes, and progressive delivery controllers like Argo Rollouts.

## Key Proponents / Critics

- [[martin-fowler]] — Documented deployment strategies and progressive delivery patterns
- [[kubernetes]] — Ecosystem that popularized canary deployments through native and third-party tooling

## Related Concepts

- [[zero-downtime-deployment]] — Broader category that includes canary as one technique
- [[feature-flags]] — Complementary mechanism for controlling feature exposure at the application layer
- [[load-balancing]] — Traffic distribution infrastructure required to implement canary traffic splitting
- [[rollouts]] — Progressive rollout controllers that automate canary promotion and rollback
- [[deployment]] — The general practice within which canary deployments operate

## Related Entities

- [[nginx]] — Ingress controller commonly used for traffic splitting in canary deployments
- [[kubernetes]] — Container orchestration platform where canary deployments are most commonly implemented
- [[cloudflare]] — Edge platform offering traffic splitting for canary-style rollouts

## Sources

- [[067_kubernetes-basics-pods-deployments-services|Kubernetes Basics: Pods, Deployments, Services]] — Kubernetes deployment strategies including canary patterns

## Evolution

- **2010s**: Canary deployments emerge as a standard practice at large-scale web companies like Google and Netflix
- **2016**: Kubernetes adoption accelerates and canary patterns become central to cloud-native deployment
- **2019**: Argo Rollouts and Flagger provide declarative canary deployment controllers for Kubernetes
- **2020s**: Progressive delivery becomes a core concept in the GitOps and platform engineering movements
- **2024+**: AI-driven canary analysis automates the decision to promote or rollback based on multi-metric evaluation
