---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# IPVS

## Definition

IPVS (IP Virtual Server) is a Linux kernel-level transport layer load balancer built into the Netfilter framework. It is used as a high-performance alternative to kube-proxy's iptables mode for distributing network traffic across backend pods in a Kubernetes cluster, offering better scalability and more sophisticated load balancing algorithms at large scale.

## Key Aspects

- Operates at Layer 4 (transport layer), forwarding TCP/UDP packets based on virtual IP address and port rules
- Supports multiple load balancing algorithms: round-robin, least-connections, source-hash, destination-hash, and weighted variants
- Used in Kubernetes the Harder Way as the service load balancer component, working with ldirectord for health-check-driven rule management
- Scales significantly better than iptables for large numbers of services because it uses hash tables rather than linear chain traversal
- Available as a kube-proxy mode in Kubernetes: `--proxy-mode=ipvs`
- Requires the `ipvs` kernel modules (ip_vs, ip_vs_rr, ip_vs_wrr, ip_vs_sh, nf_conntrack) to be loaded on worker nodes

## Related Concepts

- [[kubernetes-control-plane]]
- [[kubernetes-networking]]
- [[load-balancing]]

## Sources

- [[kubernetes-the-harder-way]]
