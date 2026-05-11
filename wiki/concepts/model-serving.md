---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Model Serving

## Definition

Model serving is the infrastructure and practice of deploying trained machine learning models to production for inference, handling requests at scale with appropriate latency, throughput, and reliability requirements. It encompasses the complete pipeline from model serialization through API deployment, batching, and hardware acceleration.

## Key Aspects

- **TorchServe**: PyTorch's official serving tool (now in limited maintenance) for performant, flexible model deployment
- **Production deployment cases**: AWS Inferentia2 deployments for Llama 2, Intel CPU optimization, Amazon Ads model scaling
- **Limited maintenance status**: TorchServe is no longer actively maintained — no planned updates, bug fixes, or security patches
- **Alternative solutions**: Triton Inference Server, BentoML, vLLM, and SGLang represent actively maintained serving options
- **Dynamic batching**: Optimizing throughput by grouping inference requests, demonstrated in Amazon SageMaker deployments
- **Hardware acceleration**: Integration with specialized hardware (AWS Inferentia, NVIDIA GPUs) for faster inference
- **Infrastructure integration**: Cloud platforms (Vertex AI, SageMaker) provide managed serving infrastructure
- **Migration considerations**: Users of limited-maintenance serving tools should evaluate actively maintained alternatives for production workloads

## Related Concepts

- [[inference-optimization]]
- [[model-quantization]]
- [[dynamic-batching]]
- [[hardware-acceleration]]

## Sources

- [[torchserve]]
