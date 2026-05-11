---
created: 2026-04-28
updated: 2026-05-09
tags: [alignment, llm, rl, training]
sources: 1
---

# Reinforcement Learning from Human Feedback

## Definition

Reinforcement Learning from Human Feedback (RLHF) is a technique for training language models to align with human preferences by using human judgments as reward signals. The process involves three stages: (1) supervised fine-tuning on demonstration data, (2) training a reward model on human preference comparisons (choosing between pairs of model outputs), and (3) optimizing the policy using reinforcement learning (typically PPO) against the learned reward model. RLHF was the key alignment method behind ChatGPT and InstructGPT, transforming raw language models into helpful and less harmful assistants.

## Key Proponents / Critics

- [[john-schulman]] — led the development of RLHF at OpenAI and co-developed PPO
- [[ilya-sutskever]] — OpenAI co-founder whose research on language model alignment laid groundwork for RLHF
- [[anthropic]] — extensively researches RLHF and develops alternative alignment methods

## Related Concepts

- [[ppo]] — the reinforcement learning algorithm most commonly used in the RLHF optimization loop
- [[dpo]] — direct preference optimization, a simplification that bypasses the RL training loop
- [[grpo]] — group relative policy optimization, a related preference-based training method
- [[reward-model]] — the learned model that predicts human preference between outputs, used as the RLHF reward signal
- [[reward-hacking]] — a failure mode where the policy exploits imperfections in the reward model
- [[preference-learning]] — the broader field that RLHF belongs to
- [[alignment]] — RLHF is the dominant technique for aligning LLMs with human values
- [[supervised-fine-tuning]] — the first stage of the RLHF pipeline
- [[constitutional-ai]] — Anthropic's extension that reduces dependence on human labeling

## Related Entities

- [[openai]] — pioneered RLHF for language models with InstructGPT and ChatGPT
- [[anthropic]] — conducts major RLHF research and develops CAI as an alternative
- [[nathan-lambert]] — author of the definitive book on RLHF

## Sources

- [[rlhf-book-nathan-lambert]] — comprehensive book covering RLHF theory, practice, and open problems

## Evolution

- **2017**: Christiano et al. publish "Deep Reinforcement Learning from Human Preferences," introducing the RLHF paradigm
- **2019**: OpenAI applies RLHF to game-playing agents and begins adapting it for language models
- **2022**: InstructGPT (Ouyang et al.) demonstrates RLHF at scale for aligning GPT-3; ChatGPT launches using RLHF
- **2023**: RLHF becomes the standard alignment method across the industry; DPO and other alternatives emerge
- **2024**: RLHF continues to be refined with improvements in reward modeling, data quality, and multi-objective alignment
