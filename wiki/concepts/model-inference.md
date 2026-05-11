---
created: 2026-04-28
updated: 2026-04-28
tags: [deployment, machine-learning]
---

# Model Inference

## Metadata

- **Type**: ML Operation
- **Context**: Production deployment
- **Related**: Training, serving

## Definition

Model inference is the process of running trained machine learning models to make predictions or generate outputs on new data. This is the production phase after training and deployment.

## Key Considerations

- **Latency**: Response time for predictions.
- **Throughput**: Number of predictions per unit time.
- **Hardware**: CPU, GPU, TPU, custom accelerators.
- **Platform**: OS, architecture, runtime environment.
- **API**: Programming language bindings.

## Inference Engines

- ONNX Runtime: Cross-platform, multi-API.
- TensorRT: NVIDIA GPU optimization.
- Triton Inference Server: Multi-model serving.
- vLLM: LLM-optimized inference.

## Optimization Techniques

- Quantization: Reduce precision for speed.
- Kernel fusion: Combine operations.
- Batching: Process multiple inputs together.
- Caching: KV cache for LLMs.

## Deployment Platforms

- Cloud: AWS SageMaker, Azure ML, GCP Vertex AI.
- Edge: Mobile devices, IoT.
- Local: Desktop applications.

## Related Concepts

- [[onnx]]
- [[hardware-acceleration]]
- [[cross-platform-deployment]]
- [[inference-optimization]]

## Related Entities

- [[onnx-runtime]]
- [[aws]]
- [[azure]]
- [[google]]

## Sources

- [[onnx-runtime-getting-started]]
