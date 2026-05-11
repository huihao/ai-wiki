---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure, kubernetes, networking]
sources: 1
---

# Load Balancing

## Definition

Load balancing is the distribution of incoming network traffic or computational workloads across multiple backend servers or instances to ensure optimal resource utilization, maximize throughput, minimize response time, and avoid overloading any single resource. Load balancing is fundamental to building scalable, highly available systems because it eliminates single points of failure and enables horizontal scaling. Common load balancing algorithms include round-robin, least connections, weighted round-robin, IP hash, and least response time. In Kubernetes, the Service resource provides built-in load balancing across Pods using iptables or IPVS rules. On traditional infrastructure, dedicated load balancers like Nginx, HAProxy, or cloud-provider solutions handle traffic distribution.

## Key Proponents / Critics

- [[nginx]] — Widely used software load balancer and reverse proxy
- [[kubernetes]] — Built-in Service-based load balancing for container workloads

## Related Concepts

- [[canary-deployment]] — Uses load balancing to split traffic between application versions
- [[reverse-proxy]] — Often serves as the load balancing layer in web architectures
- [[kubernetes-networking]] — Network model within which Kubernetes load balancing operates
- [[scalability]] — Load balancing is a prerequisite for horizontal scaling
- [[distributed-systems]] — Load balancing is a fundamental distributed systems pattern

## Related Entities

- [[nginx]] — High-performance load balancer and reverse proxy
- [[kubernetes]] — Provides Service-based load balancing across Pods natively
- [[cloudflare]] — Global load balancing and CDN services at the edge

## Sources

- [[067_kubernetes-basics-pods-deployments-services|Kubernetes Basics: Pods, Deployments, Services]] — Kubernetes Service resource and load balancing across Pods

## Evolution

- **1990s**: Hardware-based load balancers (F5, Citrix NetScaler) dominate enterprise networking
- **2000s**: Software load balancers (Nginx, HAProxy) democratize load balancing for smaller organizations
- **2010s**: Cloud providers (AWS ELB, GCP LB) abstract load balancing as a managed service
- **2014**: Kubernetes introduces the Service abstraction with built-in kube-proxy load balancing
- **2017**: IPVS-based load scaling in Kubernetes for handling thousands of services efficiently
- **2020s**: eBPF-based load balancing (Cilium) provides kernel-level performance without iptables overhead
