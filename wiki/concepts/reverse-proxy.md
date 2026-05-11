---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure, kubernetes, networking]
sources: 1
---

# Reverse Proxy

## Definition

A reverse proxy is a server that sits between clients and backend application servers, forwarding client requests to the appropriate backend and returning the response to the client. Unlike a forward proxy (which sits in front of clients), a reverse proxy operates on behalf of the server side. Reverse proxies provide critical infrastructure functions including TLS termination, load balancing, request caching, security header injection, DDoS protection, and request rate limiting. Popular reverse proxy implementations include Nginx, HAProxy, Traefik, and Caddy. In Kubernetes environments, the reverse proxy pattern maps to the sidecar container pattern or to dedicated ingress controllers that route traffic to backend services.

## Key Proponents / Critics

- [[nginx]] — Dominant open-source reverse proxy and web server
- [[cloudflare]] — Cloud-based reverse proxy providing CDN, DDoS protection, and edge computing

## Related Concepts

- [[sidecar-pattern]] — The Kubernetes-native implementation of the reverse proxy pattern
- [[load-balancing]] — A core function provided by reverse proxies
- [[kubernetes-networking]] — Network layer where reverse proxy patterns are implemented in clusters
- [[cloud-native-architecture]] — Architectural style that heavily relies on reverse proxies
- [[wsgi]] / [[asgi]] — Application server interfaces that sit behind reverse proxies

## Related Entities

- [[nginx]] — High-performance reverse proxy and web server widely used in production
- [[cloudflare]] — Edge network providing reverse proxy services with security features
- [[kubernetes]] — Container orchestration platform where reverse proxy patterns are common

## Sources

- [[kubernetes-the-harder-way|Kubernetes the Harder Way]] — Understanding Kubernetes networking including proxy patterns

## Evolution

- **1990s**: Squid and Apache mod_proxy emerge as early reverse proxy solutions
- **2004**: Nginx is released, eventually becoming the most widely deployed reverse proxy globally
- **2010s**: Cloud-native architectures make reverse proxies essential for microservices communication
- **2016**: Traefik introduces auto-discovery-based configuration for containerized environments
- **2020s**: Service mesh sidecars (Envoy) become the dominant reverse proxy pattern in Kubernetes
