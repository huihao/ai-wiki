---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Triton Inference Server

## Metadata

- **Author**: NVIDIA
- **Date**: 2018-10-04
- **URL**: https://github.com/triton-inference-server/server
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/package/GitHub - triton-inference-server_server_ The Triton Inference Server provides an optimized cloud and.md`

## Summary

NVIDIA's open-source inference serving software supporting multiple deep learning and ML frameworks across cloud, data center, edge, and embedded devices.

## Key Takeaways

- Supports TensorRT, PyTorch, ONNX, OpenVINO, Python, RAPIDS FIL, and more.
- Major features: concurrent model execution, dynamic batching, sequence batching, ensemble models, Business Logic Scripting (BLS).
- Protocols: HTTP/REST, gRPC (KServe protocol), C API, Java API.
- Metrics for GPU utilization, throughput, and latency.
- Part of NVIDIA AI Enterprise.
- Deployment examples for Kubernetes/Helm on GCP, AWS, and NVIDIA FleetCommand.

## Entities Mentioned

- [[nvidia]] — Creator and maintainer.
- TensorRT — Optimized inference backend.
- [[pytorch-in-one-hour|PyTorch]] — Supported framework.
- [[onnx-runtime-getting-started|ONNX]] — Supported format.
- OpenVINO — Supported backend.
- RAPIDS — FIL backend.
- KServe — Community inference protocol.

## Concepts Mentioned

- [[triton-inference-server]] — Production inference serving platform.
- [[continuous-batching|Dynamic batching]] — Batching requests dynamically for throughput.
- [[how-to-scale-your-model|Model ensemble]] — Pipelining multiple models.
- Business logic scripting — Custom Python backend logic.
- [[how-to-scale-your-model|Concurrent model execution]] — Running multiple model instances in parallel.

## Raw Notes

- Current release: 2.67.0 (26.03 container).
- Recommended deployment is via Docker containers.
- Model Analyzer and Performance Analyzer tools available for optimization.

## Questions / Follow-ups

- How does Triton compare to BentoML or vLLM for LLM-specific serving?
- What is the overhead of BLS vs native ensemble pipelines?
