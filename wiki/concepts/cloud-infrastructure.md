---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 3
---

# Cloud Infrastructure

## Definition
Cloud infrastructure for AI encompasses the spectrum of compute providers—from traditional hyperscalers to GPU marketplaces and inference-specific platforms—that supply the hardware and orchestration layers needed for model training, fine-tuning, and deployment at various scales and budgets.

## Key Aspects
- **Six-category taxonomy (2026)**: Traditional Hyperscalers (AWS, Azure, GCP), Neoclouds (CoreWeave, Lambda, Crusoe), Developer Clouds (DigitalOcean, Vultr), Inference Platforms (Fireworks AI, Groq, Cerebras), GPU Marketplaces (Vast.ai, TensorDock, Runpod), and Orchestration Layers (BentoML, SkyPilot, Anyscale).
- **GPU marketplaces**: Budget-tier options like Vast.ai offer 50-70% below hyperscaler rates through peer-to-peer rental, with variable reliability; ideal for experimentation and non-mission-critical workloads.
- **Neoclouds**: GPU-specialized providers (CoreWeave with $66.8B contracted backlog) offer speed and NVIDIA-first access but carry capital-intensity risk and limited service breadth.
- **Inference platforms**: Dedicated inference silicon (Groq LPU, Cerebras WSE, SambaNova RDU) deliver ultra-low latency serving; inference is projected to account for ~two-thirds of all AI compute by 2026.
- **Orchestration layers**: Tools like SkyPilot and BentoML abstract infrastructure for multi-cloud portability, allowing workloads to move between providers without rewrite.
- **Evaluation checklist**: TCO modeling, Model FLOPs Utilization (MFU) benchmarks, provisioning speed, Kubernetes integration, SLAs, and security/compliance requirements should guide provider selection.

## Related Concepts
- [[async-python]]
- [[api-development]]
- [[coding-agent]]

## Sources
- [[gpu-cloud-computing]]
- [[vast-ai]]
- [[vast-ai-console]]
