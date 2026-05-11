---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# GPU Cloud Computing

## Definition

GPU cloud computing provides access to GPU (Graphics Processing Unit) hardware via cloud platforms, enabling users to run compute-intensive tasks like deep learning training, inference, and scientific computing without owning physical GPU hardware. Platforms offer rental GPU instances optimized for parallel processing.

## Key Platforms

- [[vast-ai|Vast.ai]] — Marketplace model for affordable GPU rental
- [[aws|AWS]] — EC2 GPU instances (P3, P4, G5)
- [[google-cloud|Google Cloud]] — Compute Engine GPUs
- [[lambda-labs|Lambda Labs]] — GPU cloud for AI/ML
- [[azure|Azure]] — N-series GPU VMs

## Use Cases

- Deep learning model training
- LLM fine-tuning and inference
- Computer vision applications
- Scientific simulations
- Rendering and graphics processing
- Reinforcement learning training

## Advantages

- No upfront hardware cost
- Scalable GPU resources
- Access to high-end GPUs (RTX 4090, A100, H100)
- Pay-as-you-use pricing
- Global availability

## Challenges

- Cost accumulation for long-running tasks
- Instance availability constraints
- Data transfer overhead
- Reliability varies by provider

## Related Concepts

- [[cloud-infrastructure|Cloud Infrastructure]] — Broader category
- [[ml-infrastructure|ML Infrastructure]] — ML-specific hardware
- [[model-training|Model Training]] — Primary GPU workload
- [[parallel-computing|Parallel Computing]] — GPU computational model

## Sources

- [[vast-ai-console|Vast.ai Console]]

## Evolution

GPU cloud computing emerged with GPU applicability to deep learning (2012+). Initially limited to major cloud providers (AWS, GCP). Newer platforms (Vast.ai, Lambda Labs) offer specialized GPU-focused services with competitive pricing. GPU shortages (2023-2024) increased demand and pricing volatility.