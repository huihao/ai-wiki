---
created: 2026-04-29
updated: 2026-04-29
tags: [infrastructure, networking]
sources: 1
---

# Cilium

## Definition

An eBPF-based networking, observability, and security solution for Kubernetes. Replaces traditional CNI plugins (flannel, calico) with kernel-level packet processing using eBPF programs, providing high-performance networking, network policy enforcement, and transparent encryption without sidecar proxies.

## Key Details

- **eBPF-powered**: Uses eBPF for packet processing, observability, and security in the kernel
- **Replaces kube-proxy**: Handles service load balancing via eBPF instead of iptables/IPVS
- **Network policies**: L3/L4/L7 policy enforcement at the kernel level
- **Service mesh**: Transparent mTLS and observability without sidecar proxies
- **Hubble**: Built-in network observability platform
- **Used in production**: Cilium is the default CNI for GKE (Google Kubernetes Engine)

## Related Concepts

- [[ebpf]] — Underlying kernel programmability technology
- [[kubernetes-networking]] — Cilium serves as a CNI plugin
- [[kubernetes-worker-nodes]] — Where Cilium eBPF programs run

## Sources

- [[kubernetes-the-harder-way]] — Guide covering Cilium CNI installation
