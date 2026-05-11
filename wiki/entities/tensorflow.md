---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, framework, deep-learning]
sources: 0
---

# TensorFlow

## Summary

TensorFlow is an open-source deep learning framework originally developed by the Google Brain team. It was the dominant framework for production ML from 2015–2019 before PyTorch overtook it in research. TensorFlow 2.x (2019) introduced eager execution and Keras integration to improve usability. TensorFlow remains widely used in production, mobile deployment (TensorFlow Lite), and edge inference (TensorFlow.js).

## Key Attributes

- **Developer**: Google Brain Team
- **Type**: Open-source deep learning framework
- **Key features**: Static computation graphs (v1), eager execution (v2), Keras API, TensorFlow Extended (TFX) for production
- **Deployment**: TensorFlow Serving, TensorFlow Lite (mobile), TensorFlow.js (browser)
- **Ecosystem**: Keras, TFX, JAX (spiritual successor)

## Related Entities

- [[google]] — developer
- [[pytorch-in-one-hour|PyTorch]] — primary competitor
- [[jax]] — Google's newer framework, increasingly preferred for research
- [[Keras]] — high-level API now integrated into TensorFlow

## Related Concepts

- [[transformer-architecture]] — TensorFlow was used for the original "Attention Is All You Need" implementation
- [[tpu]] — TensorFlow has first-class TPU support via XLA
- [[quantization]] — TensorFlow Lite provides mobile quantization
- [[model-deployment]] — TensorFlow Serving is a production deployment standard

## Sources

- [[how-to-scale-your-model]] — compares TensorFlow and JAX
- [[mojo-manual]] — mentions TensorFlow in the context of MLIR

## Contradictions / Open Questions

- Has TensorFlow lost the research market permanently to PyTorch and JAX?
- Will TensorFlow Lite maintain relevance as ONNX Runtime and Apple Core ML improve?
