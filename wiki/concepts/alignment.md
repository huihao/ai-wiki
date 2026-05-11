---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Alignment

## Definition

Alignment is the field of research and practice focused on ensuring that AI systems behave in accordance with human values, intentions, and preferences. It encompasses techniques for steering model outputs during and after training -- from instruction tuning and reward modeling to reinforcement learning from human feedback (RLHF) and direct preference optimization (DPO) -- as well as broader questions of scalable oversight, interpretability, and maintaining intended behavior as models grow in capability.

## Key Aspects

- RLHF (Reinforcement Learning from Human Feedback) is the foundational alignment pipeline: a reward model is trained on human preference data, then a policy model is optimized against that reward using PPO (Proximal Policy Optimization) or similar algorithms
- Direct alignment algorithms like DPO bypass the explicit reward model by optimizing the policy directly against preference pairs, simplifying the training pipeline while achieving comparable alignment quality
- Instruction tuning serves as the entry point for alignment, providing the supervised fine-tuning stage that prepares a pretrained model for human-desired interaction patterns before RL optimization
- Scalable oversight addresses the challenge of evaluating and training models that may exceed human ability to directly judge their outputs, including techniques like debate, recursive reward modeling, and AI-assisted evaluation
- Mechanistic interpretability complements alignment by providing tools to understand internal model representations -- circuit analysis, sparse autoencoders, and linear feature probing help verify whether alignment training has achieved its intended internal effects
- Alignment is not a one-time procedure but an ongoing concern: emergent misalignment can arise as models are deployed in novel contexts, requiring continuous monitoring and post-training adjustment
- The UChicago LLM course by Chenhao Tan structures alignment alongside interpretability and agents as the three frontier areas for understanding and controlling advanced language models

## Related Concepts

- [[reinforcement-learning-from-human-feedback]]
- [[ppo]]
- [[dpo]]
- [[reward-model]]
- [[reward-modeling]]
- [[instruction-tuning]]
- [[post-training]]
- [[scalable-oversight]]
- [[mechanistic-interpretability]]
- [[ai-safety]]

## Sources

- [[chenhao-tan]]
- [[nathan-lambert]]
- [[rlhf-book-nathan-lambert]]
- [[uchicago-llm-course]]
