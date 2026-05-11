---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 1
---

# Deployment

## Definition

Deployment is the process of making an application or service available for use in a target environment, encompassing infrastructure provisioning, configuration management, scaling, and networking. Kubernetes provides an opinionated way to automate age-old deployment techniques, mapping VM-based patterns (single instance, replication, load balancing) to container-orchestrated abstractions (Pods, Deployments, Services).

## Key Aspects

- Kubernetes is not a fundamentally new paradigm but an automated way to implement age-old deployment techniques
- Core VM-to-K8s mappings: single instance becomes Pod, replication becomes ReplicaSet/Deployment, load balancer becomes Service, reverse proxy becomes Sidecar
- The sidecar pattern (e.g., Nginx in front of an app) is the precursor to Kubernetes sidecar containers
- Zero-downtime deployments are achieved through rolling updates where new Pods are created before old ones are terminated
- Canary deployments allow testing new versions with a subset of traffic before full rollout
- Ingress gateways provide a single entry point for load balancing across multiple instances
- Understanding VM-based deployment patterns first makes Kubernetes concepts significantly easier to grasp
- Services provide stable network endpoints that abstract over dynamic Pod lifecycles

## Related Concepts

- [[kubernetes]]
- [[pod]]
- [[sidecar-pattern]]
- [[zero-downtime-deployment]]
- [[canary-deployment]]
- [[load-balancing]]

## Sources

- [[067_kubernetes-basics-pods-deployments-services]]
