---
created: 2026-04-29
updated: 2026-04-29
url: "https://github.com/ghik/kubernetes-the-harder-way/blob/macos/docs/00_Introduction.md"
title: "Kubernetes the Harder Way"
tags: [source, kubernetes, infrastructure, education]
source: unknown
---

# Kubernetes the Harder Way

**Author:** ghik (Jakozane)
**URL:** https://github.com/ghik/kubernetes-the-harder-way
**Platform:** macOS/ARM64 (with Linux/AMD64 support)

## Summary

An educational guide to setting up a production-like Kubernetes cluster entirely from scratch on a local machine, avoiding all convenience tools. Builds 7 Linux VMs (3 control plane + 3 workers + 1 load balancer) using QEMU, covering everything from VM management to networking, security bootstrapping, control plane installation, worker setup, cluster services, and Cilium CNI. More detailed than Kelsey Hightower's original, with additional theory and a complete deployment including storage provisioner and service load balancer.

## Key Takeaways

1. **Purpose is educational**: Understanding K8s internals by building everything from scratch, not for production use.
2. **7-VM cluster**: 3 control plane nodes, 3 worker nodes, 1 simulated load balancer for the Kubernetes API.
3. **Foundational tools covered**: QEMU (VMs), cloud-init, dnsmasq, tmux, cfssl (TLS), IPVS, systemd, iptables, Linux namespaces and cgroups.
4. **Beyond K8s core**: Includes storage provisioner (NFS) and service load balancer (IPVS + ldirectord).
5. **macOS-specific with multi-platform scripts**: Reference scripts support Ubuntu/AMD64 with apt/systemd/netplan.
6. **Prerequisites**: Basic K8s knowledge (Pods, Services, kubectl), Linux networking fundamentals, ~20GB RAM recommended (8-10GB minimum).
7. **Covers Linux containerization fundamentals**: Namespaces and cgroups are explained before building the cluster.
8. **Inspired by Kelsey Hightower**: Builds on Kubernetes the Hard Way with more theory, local environment, and complete deployment.

## Entities Mentioned

- **ghik (Jakozane)** — Author of this guide
- **Kelsey Hightower** — Original "Kubernetes the Hard Way" author
- **QEMU** — Virtual machine monitor for running Linux VMs
- **Cilium** — eBPF-based CNI for Kubernetes networking
- **cfssl** — CloudFlare's SSL/TLS toolkit for certificate generation

## Concepts Mentioned

- [[kubernetes-control-plane]] — API server, etcd, scheduler, controller manager
- [[kubernetes-worker-nodes]] — kubelet, kube-proxy, container runtime
- [[kubernetes-networking]] — Pod networking, service networking, CNI
- [[cilium]] — eBPF-based CNI plugin for Kubernetes
- [[qemu]] — Hardware virtualization and emulation
- [[cloud-init]] — VM initialization and configuration
- [[ipvs]] — IP Virtual Server for service load balancing

## Raw Notes

- Guide chapters: QEMU VMs → VM cluster → Kubernetes security → Control plane → Worker nodes → Cluster services → Cilium CNI → TLDR version
- Packages needed: qemu wget curl cdrtools dnsmasq tmux cfssl kubernetes-cli helm
- Host (macOS) runs virtual network between VMs and provides internet access
- NFS-exported directory simulates external mass storage

## Questions / Follow-ups

- How does this compare to using kubeadm or k3s for learning?
- What are the performance characteristics of this setup vs production K8s?
- How does the Cilium CNI integration differ from flannel/calico?
