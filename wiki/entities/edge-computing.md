---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/architecture]
sources: 1
---

# Edge Computing

## Summary
Edge computing is a distributed computing paradigm that brings computation and data storage closer to the sources of data generation, such as IoT devices, sensors, or end-user devices, rather than relying solely on centralized cloud data centers. By processing data locally or at the network edge, edge computing reduces latency, conserves bandwidth, and enables real-time decision-making. It is increasingly important for AI inference on mobile and embedded devices.

## Key Attributes
- **Type**: concept/architecture
- **Notable for**: reducing latency and enabling real-time processing by moving computation to the data source
- **Other facts**: key use cases include autonomous vehicles, industrial IoT, augmented reality, and on-device AI; complements cloud computing in a hybrid architecture; constrained by limited compute, memory, and power on edge devices; enables privacy-preserving computation by keeping data local

## Related Entities
- [[apple-silicon]] -- Apple's custom chips are designed for efficient on-device AI at the edge
- [[nvidia]] -- NVIDIA provides edge computing hardware and software platforms

## Related Concepts
- [[on-device-ai]] -- running AI models directly on edge devices without cloud connectivity
- [[on-device-ml]] -- machine learning inference on mobile and embedded devices
- [[small-language-models]] -- smaller models designed to run efficiently on resource-constrained devices
- [[model-quantization]] -- reducing model size for deployment on edge hardware
- [[inference-optimization]] -- techniques to make models fast enough for edge deployment
- [[local-llm]] -- running LLMs locally on consumer hardware

## Sources
- [[on-device-ai]] -- discusses techniques and platforms for running AI models at the edge

## Contradictions / Open Questions
- The fundamental tension between model capability and edge hardware constraints drives ongoing research. Larger models produce better results but are harder to deploy on the edge, while compression techniques may sacrifice accuracy in ways that are hard to predict before deployment.
