---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 5
---

# Hardware Acceleration

## Definition

Hardware acceleration is the use of specialized hardware components -- such as GPUs, TPUs, NPUs, and custom ASICs -- to perform computation faster and more efficiently than general-purpose CPUs. In machine learning, hardware acceleration is critical for both model training and inference, enabling large-scale models to run at practical speeds across diverse platforms and deployment targets.

## Key Aspects

- **GPU and TPU acceleration** is essential for training and serving modern deep learning models, with frameworks like ONNX Runtime supporting 17+ hardware acceleration configurations
- **Cross-platform deployment**: ONNX Runtime provides a unified inference engine that abstracts hardware differences, allowing models trained once to run on CPUs, GPUs, and specialized accelerators across desktop, mobile, and cloud environments
- **Model serving frameworks** such as TorchServe were designed to deliver high-performance inference on PyTorch models with hardware acceleration, though TorchServe is now in limited maintenance status
- **Production case studies** demonstrate hardware acceleration in practice: AWS Inferentia2 for Llama 2 deployments, Intel CPU optimization for PyTorch, and Amazon Ads scaling models with specialized hardware
- **Configuration complexity**: Selecting the right combination of platform, API, architecture, and hardware accelerator is a key decision in deployment pipelines
- **Trade-offs**: Hardware acceleration improves throughput and latency but introduces vendor lock-in, cost considerations, and the need for specialized tooling and expertise

## Related Concepts

- [[model-inference]] -- hardware acceleration is a core enabler of fast inference
- [[onnx]] -- open format designed for hardware-agnostic model portability
- [[onnx-runtime]] -- inference engine that maps models to available accelerators
- [[torchserve]] -- PyTorch model serving with hardware acceleration support

## Sources

- [[model-inference]]
- [[onnx]]
- [[onnx-runtime]]
- [[onnx-runtime-getting-started]]
- [[torchserve]]
