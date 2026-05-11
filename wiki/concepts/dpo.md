---
created: 2026-04-28
updated: 2026-05-09
tags: [alignment, preference-optimization, training]
sources: 1
---

# Direct Preference Optimization

## Definition

Direct Preference Optimization (DPO) is a method for aligning language models with human preferences that eliminates the need for a separate reward model. It reformulates the RLHF objective into a simple classification loss over human preference pairs (chosen vs. rejected responses), making alignment training more stable and easier to implement than PPO-based RLHF. DPO computes the optimal policy directly from a dataset of human preferences by treating the reward function as a closed-form function of the policy itself.

## Key Proponents / Critics

- [[john-schulman]] — co-author of the original DPO paper; also developed PPO and RLHF at OpenAI
- [[ilya-sutskever]] — co-founder of OpenAI; research on alignment and preference learning influenced the trajectory of DPO work
- [[andrej-karpathy]] — OpenAI researcher who has extensively discussed RLHF and DPO in educational content

## Related Concepts

- [[reinforcement-learning-from-human-feedback]] — the PPO-based alignment paradigm that DPO was designed to replace
- [[ppo]] — the proximal policy optimization algorithm traditionally used for RLHF training
- [[grpo]] — group relative policy optimization, a related preference-based training method
- [[reward-model]] — the separate model that DPO eliminates by folding reward into the policy objective
- [[preference-learning]] — the broader field of learning from pairwise human preferences
- [[alignment]] — the overarching goal of making models behave in accordance with human values
- [[on-policy-rl]] — the class of reinforcement learning that RLHF belongs to, which DPO avoids
- [[supervised-fine-tuning]] — the simpler predecessor step that DPO builds upon structurally
- [[lora]] — parameter-efficient fine-tuning technique commonly paired with DPO for alignment

## Related Entities

- [[anthropic]] — organization where DPO research was conducted (Rafailov et al.)
- [[openai]] — where RLHF and PPO-based alignment were pioneered, motivating DPO's development

## Sources

- [[rlhf-book-nathan-lambert]] — comprehensive treatment of RLHF methods including DPO

## Evolution

- **2017**: PPO introduced by [[john-schulman]] et al. at OpenAI, later adapted for language model alignment
- **2022**: InstructGPT demonstrates RLHF with PPO at scale for aligning GPT-3
- **2023**: DPO paper published by Rafailov et al. at Stanford, showing competitive alignment without a reward model
- **2024**: DPO and its variants (IPO, KTO, ORPO) become widely adopted for open-source model alignment
- **2025**: DPO is a standard tool in the post-training pipeline for most open-weight models
