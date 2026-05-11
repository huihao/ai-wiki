---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 4
---

# Cross-Platform Deployment

## Definition

Cross-platform deployment is the practice of packaging and running machine learning models across diverse operating systems, hardware architectures, and hardware accelerators without requiring model-specific rewrites. The ONNX (Open Neural Network Exchange) format and ONNX Runtime exemplify this approach, providing a standardized model representation and a portable inference engine that targets CPUs, GPUs, and specialized accelerators on desktop, mobile, cloud, and edge devices.

## Key Aspects

- ONNX provides an open, interoperable model format that decouples training frameworks (PyTorch, TensorFlow, scikit-learn) from inference runtimes, enabling trained models to be deployed anywhere ONNX Runtime is supported
- ONNX Runtime supports six platforms, eight APIs (Python, C++, C#, Java, JavaScript, Objective-C, Go, Rust), five CPU architectures, and 17 hardware acceleration backends (CUDA, TensorRT, DirectML, CoreML, OpenVINO, etc.)
- Cross-platform deployment requires balancing portability (ONNX format) with hardware-specific optimization (provider-specific graph optimizations and quantization), which ONNX Runtime achieves through its pluggable execution provider architecture
- Model inference considerations for deployment include memory footprint, latency requirements, and batch size strategy -- factors that vary significantly between cloud GPUs and edge CPUs
- Hardware acceleration selection (GPU via CUDA/TensorRT, NPU via CoreML, or CPU-only) is configured at runtime rather than baked into the model, allowing the same ONNX model to adapt to its deployment target
- The ONNX ecosystem includes conversion tools from all major training frameworks, an optimization pipeline (graph-level and operator-level optimizations), and quantization support for reducing model size and inference latency on resource-constrained devices

## Related Concepts

- [[onnx]]
- [[model-inference]]
- [[hardware-acceleration]]
- [[model-deployment]]
- [[inference-optimization]]

## Sources

- [[model-inference]]
- [[onnx]]
- [[onnx-runtime]]
- [[onnx-runtime-getting-started]]
