---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure, machine-learning]
sources: 2
---

# Kubernetes Networking

## Definition

Kubernetes networking is the subsystem that enables communication between pods, services, and external clients across a cluster of worker nodes. It relies on Container Network Interface (CNI) plugins to implement pod-to-pod networking, service discovery, and load balancing. Building a Kubernetes cluster from scratch (as in "Kubernetes the Harder Way") reveals the underlying Linux networking primitives -- namespaces, cgroups, IPVS, and iptables -- that make this possible.

## Key Aspects

- **CNI Plugins**: Container Network Interface plugins (Cilium, Flannel, Calico) implement the actual networking; Cilium uses eBPF for high-performance, programmable networking
- **Pod Networking Model**: Every pod gets a unique IP address; pods can communicate across nodes without NAT -- this is the fundamental Kubernetes networking requirement
- **Service Networking**: Kubernetes Services provide stable virtual IPs and DNS names that route to dynamic sets of pods; kube-proxy (IPVS mode) handles load balancing
- **Cilium**: eBPF-based CNI that replaces iptables with programmable kernel hooks for improved performance, security policies, and observability
- **Linux Fundamentals**: Underlying technologies include Linux namespaces (network isolation), cgroups (resource limits), and virtual network interfaces
- **Control Plane vs. Worker**: The API server, etcd, scheduler, and controller manager form the control plane; worker nodes run kubelet, kube-proxy, and the container runtime
- **Load Balancing**: IPVS (IP Virtual Server) with ldirectord provides layer-4 load balancing for the Kubernetes API server
- **Building from Scratch**: Setting up a 7-VM cluster (3 control plane, 3 workers, 1 load balancer) with QEMU, cloud-init, and cfssl for TLS certificates reveals all hidden abstractions

## Related Concepts

- [[kubernetes-worker-nodes]]
- [[hardware-design]]

## Sources

- [[cilium]]
- [[kubernetes-the-harder-way]]
