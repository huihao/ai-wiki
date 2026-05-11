---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 2
---

# Kubernetes Worker Nodes

## Definition

Kubernetes worker nodes are the machines in a cluster that run application workloads (containers orchestrated as Pods). Each worker node runs three key components -- kubelet (node agent), kube-proxy (network proxy), and a container runtime -- and is managed by the control plane. Understanding how worker nodes are bootstrapped, configured, and networked reveals the fundamental architecture of distributed container orchestration.

## Key Aspects

- **Kubelet**: Node agent that communicates with the API server, watches for PodSpec assignments, and manages container lifecycle (start, stop, health checks) via the container runtime
- **Kube-Proxy**: Network proxy maintaining network rules on each node; in IPVS mode, programs virtual server entries for Service load balancing; in iptables mode, uses packet filtering rules
- **Container Runtime**: The software responsible for running containers (containerd, CRI-O); interfaces with the container runtime interface (CRI) exposed by kubelet
- **TLS Bootstrapping**: Worker nodes use TLS certificates for secure communication with the API server; cfssl generates certificates for kubelet API, kube-proxy, and etcd
- **Node Registration**: Workers register with the control plane via the API server, reporting capacity and allocatable resources
- **Pod Scheduling**: The scheduler assigns Pods to worker nodes based on resource requests, affinities, taints, and tolerations
- **System Services**: CoreDNS provides cluster DNS; CNI plugin (e.g., Cilium) provides networking; metrics-server enables resource monitoring
- **Building from Scratch**: Setting up worker nodes manually (without kubeadm) reveals the configuration files, certificates, and systemd units that make everything work

## Related Concepts

- [[kubernetes-networking]]
- [[gpu-parallel-computing]]

## Sources

- [[cilium]]
- [[kubernetes-the-harder-way]]
