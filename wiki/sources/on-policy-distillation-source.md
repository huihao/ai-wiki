---
created: 2026-04-28
updated: 2026-04-28
tags: [source, research]
sources: 1
---

# On-Policy Distillation

## Metadata

- **Author**: Kevin Lu, Thinking Machines Lab
- **Date**: 2025-10-27
- **URL**: https://thinkingmachines.ai/blog/on-policy-distillation/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/On-Policy Distillation.md`

## Summary

A research blog post from Thinking Machines Lab introducing on-policy distillation: sampling trajectories from the student model and grading each token with a teacher. Combines on-policy relevance with dense reward signals, achieving 9-30x compute savings over RL.

## Key Takeaways

- Three post-training approaches: off-policy SFT (dense, off-policy), RL (sparse, on-policy), on-policy distillation (dense, on-policy).
- Uses reverse KL divergence between student and teacher per-token distributions.
- Math reasoning: Qwen3-8B-Base reaches 70% AIME'24 in ~150 steps (~77K prompts), vs ~2M prompts for off-policy SFT.
- Compute reduction: 9-30x vs off-policy distillation when including teacher sampling costs.
- Personalization: on-policy distillation recovers instruction-following behavior after domain fine-tuning degrades it.
- Continual learning: on-policy distillation avoids the divergence problem of SFT on self-sampled data.

## Entities Mentioned

- Kevin Lu — author
- Thinking Machines Lab — research lab
- Qwen team — baseline results replicated

## Concepts Mentioned

- [[on-policy-distillation-source|Knowledge distillation]] — on-policy variant
- [[reinforcement-learning-from-human-feedback|Reinforcement learning]] — sparse reward baseline
- Reverse KL divergence — loss function
- [[machine-learning|Continual learning]] — recovering behavior after fine-tuning
- [[trace-declarative-modeling-for-the-ai-age|Process reward modeling]] — related approach

## Questions / Follow-ups

- Can on-policy distillation scale to training frontier-sized models?
