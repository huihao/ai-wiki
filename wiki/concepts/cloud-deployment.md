---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 1
---

# Cloud Deployment

## Definition

Cloud deployment refers to hosting and running applications on remote cloud infrastructure, using provider-managed compute, storage, and networking. Modern cloud deployment platforms (like Leapcell) offer pay-as-you-go pricing, automatic scaling, and CI/CD integration, removing the need to manage underlying servers.

## Key Aspects

- **Pay-as-you-go Pricing**: No idle costs; only pay for resources actually used (e.g., $25 can support ~7M requests on Leapcell)
- **Automatic Scaling**: Handle high concurrency with zero operational overhead
- **Multi-Language Support**: Deploy applications in JavaScript, Python, Go, Rust, and others
- **WSGI/ASGI Support**: Traditional (Flask/Django) and async (FastAPI) Python frameworks
- **GitOps Integration**: Deployment triggered by git pushes with fully automated CI/CD pipelines
- **Serverless Option**: Event-driven execution without managing VMs or containers
- **Real-time Observability**: Metrics, logs, and actionable insights for deployed applications

## Related Concepts

- [[cloud-native-architecture]]
- [[cloud-init]]
- [[container-security]]
- [[cicd]]

## Sources

- [[leapcell]]
