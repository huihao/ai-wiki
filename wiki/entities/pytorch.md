---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, framework, deep-learning]
sources: 0
---

# PyTorch

## Summary

PyTorch is an open-source deep learning framework originally developed by Meta's FAIR lab, now hosted under the Linux Foundation. It is the dominant framework for research and production ML, known for its dynamic computation graph (define-by-run), Pythonic API, and ecosystem including TorchVision, TorchAudio, and torch.compile. PyTorch powers most modern LLM training and inference stacks.

## Key Attributes

- **Original creators**: Soumith Chintala, Adam Paszke, Sam Gross, and the FAIR team
- **Maintainer**: Linux Foundation (transitioned from Meta in 2022)
- **Language**: Python with C++ backend (libtorch)
- **Key features**: Dynamic computation graphs, eager execution, torch.compile, distributed training (FSDP, DDP)
- **Ecosystem**: Hugging Face Transformers, timm, Lightning, fastai

## Related Entities

- [[meta]] — original creator and major contributor
- [[huggingface-skills|Hugging Face]] — builds the dominant PyTorch model ecosystem
- [[google]] — competitor with JAX/TensorFlow
- [[nvidia]] — deep CUDA integration; PyTorch is the primary framework for GPU ML
- [[nbdev-fastai|fast.ai]] — built its library on PyTorch

## Related Concepts

- [[transformer-architecture]] — implemented primarily in PyTorch
- [[cuda]] — PyTorch's GPU backend
- [[model-scaling]] — PyTorch distributed training enables large-scale models
- [[quantization]] — PyTorch supports INT8, INT4, and FP8 quantization
- [[inference-optimization]] — torch.compile, ONNX export, TensorRT integration

## Sources

- [[pytorch-design-origins|PyTorch's Design Origins]] — history from Torch7/LuaTorch to PyTorch
- [[pytorch-in-one-hour|PyTorch in One Hour: From Tensors to Training Neural Networks on Multiple GPUs]] — tutorial
- [[pytorch|PyTorch Image Models (timm)]] — major PyTorch vision ecosystem project
- [[how-to-scale-your-model]] — PyTorch vs. JAX comparisons

## Contradictions / Open Questions

- Will torch.compile eventually make PyTorch competitive with JAX for TPU-scale training?
- How does PyTorch's governance under the Linux Foundation affect its roadmap vs. Google's control of JAX?
