---
created: 2026-04-29
updated: 2026-05-09
tags: [deployment, devops, kubernetes]
sources: 1
---

# Zero-Downtime Deployment

## Definition

Zero-downtime deployment is the practice of releasing a new version of an application without any interruption to service for end users. The core requirement is that at every point during the deployment process, at least one healthy instance of the application is available to serve requests. Several techniques achieve this: rolling updates (gradually replacing old instances with new ones), blue-green deployments (running two identical environments and switching traffic atomically), and canary deployments (routing a small percentage of traffic to the new version first). In Kubernetes, rolling updates are the default strategy for the Deployment resource, making zero-downtime deployment the out-of-the-box behavior for most workloads.

## Key Proponents / Critics

- [[martin-fowler]] — Documented deployment patterns including blue-green and canary strategies
- [[kubernetes]] — Rolling update strategy as default Deployment behavior

## Related Concepts

- [[canary-deployment]] — One specific technique for achieving zero-downtime releases
- [[load-balancing]] — Distributes traffic across healthy instances during deployment transitions
- [[deployment]] — The broader practice of releasing software to production
- [[ci-cd]] — Automated pipelines that enable reliable zero-downtime releases
- [[container-security]] — Security considerations when running multiple application versions simultaneously

## Related Entities

- [[kubernetes]] — Provides rolling update, recreate, and custom rollout strategies natively
- [[nginx]] — Load balancer and ingress controller that facilitates traffic management during deployments

## Sources

- [[067_kubernetes-basics-pods-deployments-services|Kubernetes Basics: Pods, Deployments, Services]] — Kubernetes deployment strategies and rolling update mechanics

## Evolution

- **2000s**: Blue-green deployments emerge as an enterprise practice for mainframe and Java EE applications
- **2010s**: Containerization and microservices make zero-downtime deployment a standard expectation
- **2014**: Kubernetes introduces the Deployment resource with rolling update as the default strategy
- **2017**: Service meshes like Istio enable more sophisticated traffic shifting for zero-downtime releases
- **2020s**: Progressive delivery platforms (Argo Rollouts, Flagger) combine zero-downtime with canary and A/B testing
