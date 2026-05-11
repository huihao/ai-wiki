---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# A practical guide to the 6 categories of AI cloud infrastructure in 2026

## Metadata

- **Author**: Janakiram MSV
- **Date**: 2026-03-15
- **URL**: https://thenewstack.io/ai-cloud-taxonomy-2026/
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/platform/A practical guide to the 6 categories of AI cloud infrastructure in 2026.md`

## Summary

A taxonomy of the 2026 AI cloud market into six categories: Traditional Hyperscalers, Neoclouds, Developer-Oriented Clouds, Inference Platforms, GPU Marketplaces, and Orchestration/Portability Layers. Includes an evaluation framework for matching workloads to providers.

## Key Takeaways

- **Traditional Hyperscalers** (AWS, Azure, GCP, Oracle): ecosystem depth, highest friction for GPU provisioning, often higher per-GPU pricing.
- **Neoclouds** (CoreWeave, Lambda, Crusoe, Nebius): speed, NVIDIA-first access, massive contracted backlogs (e.g., CoreWeave $66.8B). Risk is capital intensity and limited service breadth.
- **Developer Clouds** (DigitalOcean, Vultr, Hyperstack, Latitude.sh): GPU access without operational overhead of largest clouds.
- **Inference Platforms** (Fireworks AI, Groq, Cerebras, SambaNova, Baseten, Together AI): dedicated inference silicon and ultra-low latency serving.
- **GPU Marketplaces** (Vast.ai, TensorDock, Runpod): budget tier, 50–70% below hyperscaler rates, variable reliability.
- **Orchestration Layers** (BentoML, SkyPilot, Anyscale): abstract infrastructure for multi-cloud portability.
- Inference will account for ~two-thirds of all AI compute (Deloitte 2026).
- Evaluation checklist: TCO modeling, MFU benchmarks, provisioning speed, K8s integration, SLAs, security/compliance.

## Entities Mentioned

- Janakiram MSV — Author.
- [[aws]] — Hyperscaler.
- [[phi-4-microsoft-collection|Microsoft]] — Azure.
- [[google]] — GCP.
- Oracle — OCI Superclusters, Stargate initiative.
- [[openai]] — Stargate partner.
- CoreWeave — Neocloud.
- Lambda Labs — Neocloud.
- Nebius — Neocloud.
- DigitalOcean — Developer cloud.
- Vultr — Developer cloud.
- [[answer-ai-source|Fireworks AI]] — Inference platform.
- [[Groq]] — Inference platform (NVIDIA licensing deal).
- SambaNova — Inference platform (SN50 RDU).
- Cerebras — Inference platform.
- Vast.ai — GPU marketplace.
- [[runpod]] — GPU marketplace.
- [[bentoml-documentation|BentoML]] — Orchestration layer.
- SkyPilot — Orchestration layer.
- Anyscale — Orchestration layer.

## Concepts Mentioned

- [[ai-cloud-taxonomy-2026|AI cloud infrastructure]] — Six-category taxonomy.
- Neoclouds — GPU-specialized cloud providers.
- [[triton-inference-server|Inference platforms]] — Dedicated low-latency serving.
- [[pico-gpu|GPU marketplaces]] — Peer-to-peer GPU rental.
- Orchestration — Multi-cloud abstraction.
- [[how-to-scale-your-model|Model FLOPs utilization]] — Key efficiency metric.
- [[the-evolution-of-modern-rag-architectures|Total cost of ownership]] — Beyond hourly rates.

## Raw Notes

- Microsoft has partnerships with CoreWeave, Lambda, and Nebius, blurring category lines.
- Recommendation: start hybrid, run real workloads across 2–3 providers before committing.

## Questions / Follow-ups

- How will Rubin-ready deployments (Azure Fairwater) shift the hyperscaler vs neocloud balance?
- Will inference-platform chip startups (Groq, SambaNova) survive NVIDIA's own inference push?
