---
created: 2026-04-29
updated: 2026-04-29
tags: [source, kubernetes, infrastructure, deployment, vm-to-k8s]
sources: 1
url: "https://iximiuz.com/en/posts/kubernetes-vs-age-old-infra-patterns/"
title: "Kubernetes Basics: Understanding Pods, Deployments, and Services"
---

# Kubernetes Basics: Understanding Pods, Deployments, and Services

## Summary

A Kubernetes 101 workshop that takes a unique approach: instead of starting with K8s abstractions, it walks through how deployments were done with VMs first, then shows how Kubernetes automates those same patterns. Covers single instance deployment, reverse proxy sidecars, replication/load balancing, ingress gateways, zero-downtime deployments, and canary releases.

## Key Takeaways
- Kubernetes is an opinionated way to automate age-old deployment techniques, not a fundamentally new paradigm
- Understanding VM-based deployment patterns first makes Kubernetes concepts much easier to grasp
- Key VM patterns that map to K8s: single instance -> Pod, replication -> ReplicaSet/Deployment, load balancer -> Service, reverse proxy -> Sidecar
- Docker sidecar pattern (e.g., Nginx in front of app) is the precursor to Kubernetes sidecar containers
- Load balancing across multiple instances requires a single entry point (ingress gateway)
- Zero-downtime and canary deployments can be achieved both on VMs and in Kubernetes

## Entities Mentioned
- [[iximiuz]]

## Concepts Mentioned
- [[kubernetes]]
- [[pod]]
- [[deployment]]
- [[reverse-proxy]]
- [[load-balancing]]
- [[sidecar-pattern]]
- [[zero-downtime-deployment]]
- [[canary-deployment]]
