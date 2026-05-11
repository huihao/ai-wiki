---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# cloud-init

## Definition

cloud-init is a cross-platform VM initialization and configuration tool used to automate the setup of virtual machines when they first boot. In infrastructure education (such as Kubernetes the Harder Way), cloud-init is used to configure Linux VMs with networking, packages, user accounts, and SSH keys without manual intervention.

## Key Aspects

- **VM Bootstrap**: Automatically configures virtual machines on first boot with user data scripts
- **Package Installation**: Installs required software (e.g., Docker, kubelet, etcd) during VM initialization
- **Network Configuration**: Sets up hostname resolution, IP addresses, and routing between VMs
- **SSH Key Injection**: Distributes SSH keys for passwordless access across cluster nodes
- **Used in Kubernetes**: Essential for bootstrapping control plane and worker nodes in cluster-from-scratch setups
- **Cloud-Agnostic**: Works across QEMU, AWS, GCP, Azure, and other cloud providers
- **Reproducibility**: Ensures identical VM configurations across repeated deployments

## Related Concepts

- [[kubernetes-the-harder-way]]
- [[cloud-deployment]]
- [[cloud-native-architecture]]

## Sources

- [[kubernetes-the-harder-way]]
