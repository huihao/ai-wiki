---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Model Efficiency

## Definition

Model efficiency is the discipline of achieving high performance with fewer parameters, less compute, and lower memory requirements. It challenges the assumption that massive scale is required for complex reasoning by demonstrating that smaller, well-trained models can compete with much larger ones on specialized tasks.

## Key Aspects

- QED-Nano, a 4 billion parameter model, can prove Olympiad-level mathematical theorems, demonstrating that scale is not the only path to complex reasoning
- Efficient models are achieved through specialized training on targeted domains rather than general pretraining at massive scale
- Model efficiency encompasses parameter efficiency (fewer parameters), compute efficiency (faster inference), and memory efficiency (lower VRAM usage)
- The lm-provers research group showed that focused training methodologies can unlock surprising capabilities in small models
- Efficiency gains compound: smaller models are cheaper to serve, faster to fine-tune, and accessible on consumer hardware
- Trade-offs exist: efficient models may sacrifice breadth of capability for depth in specific domains

## Related Concepts

- [[model-optimization]]
- [[memory-bandwidth]]
- [[mixed-precision]]

## Sources

- [[qed-nano-teaching-tiny-model]]
- [[lm-provers]]
