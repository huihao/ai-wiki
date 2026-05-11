---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Mixed Precision

## Definition

Mixed precision is a training and inference technique that uses a combination of lower-precision numeric formats (such as FP16 or BF16) alongside higher-precision formats (FP32) to accelerate computation and reduce memory usage while maintaining model accuracy.

## Key Aspects

- The Hugging Face Transformers Trainer natively supports mixed precision training, enabling faster training with reduced VRAM consumption
- FP16 (half-precision) uses 16-bit floating point for forward and backward passes, with FP32 master weights for gradient accumulation
- BF16 (brain floating point) maintains the same exponent range as FP32, making it more numerically stable for training than FP16
- Mixed precision enables larger batch sizes and longer sequences by reducing per-parameter memory footprint
- FlashAttention integrates with mixed precision to further accelerate transformer training
- The technique is compatible with distributed training frameworks (DeepSpeed, FSDP) and modern inference engines (vLLM, TGI)

## Related Concepts

- [[model-optimization]]
- [[memory-bandwidth]]

## Sources

- [[transformers-hugging-face]]
- [[quantized-training]]
