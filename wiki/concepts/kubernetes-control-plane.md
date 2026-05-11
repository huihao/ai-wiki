---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 1
---

# Kubernetes Control Plane

## Definition

The Kubernetes control plane is the set of components that manage the overall state of a cluster, including scheduling pods, maintaining desired state, serving the Kubernetes API, and storing cluster configuration data. In a production-like setup, the control plane consists of three replicated nodes running the API server, etcd, scheduler, and controller manager, providing high availability and fault tolerance.

## Key Aspects

- **kube-apiserver**: The front door to the control plane; all kubectl commands and component communication flows through it, backed by TLS for authentication
- **etcd**: A distributed key-value store that holds all cluster state; runs on control plane nodes and must be backed up for disaster recovery
- **kube-scheduler**: Assigns newly created pods to nodes based on resource requirements, affinity rules, and taints/tolerations
- **controller-manager**: Runs reconciliation loops that compare actual state to desired state (e.g., ensuring the correct number of pod replicas exist)
- In Kubernetes the Harder Way, a 3-node control plane is built with QEMU VMs, each running all four components with cloud-init for bootstrapping
- Control plane nodes are typically tainted to prevent regular workloads from scheduling onto them, reserving resources for management tasks
- A simulated load balancer distributes client requests across the three API server instances for availability

## Related Concepts

- [[kubernetes-networking]]
- [[kubernetes-worker-nodes]]
- [[kubernetes-the-harder-way]]

## Sources

- [[kubernetes-the-harder-way]]
