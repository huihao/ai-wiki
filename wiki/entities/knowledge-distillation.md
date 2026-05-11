---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/method]
sources: 2
---

# Knowledge Distillation

## Summary
Knowledge distillation is a model compression technique where a smaller "student" model is trained to replicate the behavior of a larger, more capable "teacher" model. The student learns from the teacher's soft probability distributions (soft labels) rather than hard ground-truth labels, capturing richer information about the teacher's learned representations. This enables deploying models with near-teacher performance on resource-constrained devices.

## Key Attributes
- **Type**: concept/method
- **Notable for**: enabling deployment of capable AI models on resource-constrained devices by compressing large models into smaller ones
- **Other facts**: introduced by Hinton, Vinyals, and Dean in 2015; the temperature parameter in the softmax controls the softness of the teacher's output distributions; the student is typically 10x-100x smaller than the teacher; variants include online distillation, self-distillation, and task-specific distillation; widely used for deploying models on mobile devices and at the edge

## Related Entities
- [[geoffrey-hinton]] -- one of the inventors of knowledge distillation
- [[anthropic]] -- Anthropic has applied distillation techniques in model development

## Related Concepts
- [[model-quantization]] -- a complementary compression technique that reduces numerical precision
- [[on-policy-distillation]] -- a variant where the student generates its own training data
- [[small-language-models]] -- smaller models that benefit from distillation of larger teachers
- [[model-optimization]] -- the broader category of techniques for improving model efficiency
- [[parameter-efficiency]] -- distillation as a path to parameter-efficient model deployment
- [[edge-computing]] -- the primary deployment target for distilled models
- [[pruning]] -- another model compression technique often combined with distillation

## Sources
- [[john-johnson]] -- discusses knowledge distillation in the context of model compression
- [[on-device-ai]] -- covers distillation as a key technique for deploying models on devices

## Contradictions / Open Questions
- Knowledge distillation works best when the teacher and student operate on similar data distributions, but the student's capacity limits how much knowledge can be transferred. The optimal balance between compression ratio and performance retention is task-dependent and not well-characterized theoretically.
