---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, training]
sources: 0
---

# Reinforcement Learning

## Definition

Reinforcement learning (RL) is a machine learning paradigm where an agent learns to make decisions by taking actions in an environment to maximize cumulative reward. In the LLM era, RL has become central to post-training through techniques like RLHF (reinforcement learning from human feedback), PPO, DPO, and GRPO, which align models with human preferences and enable reasoning capabilities.

## Key Proponents / Critics

- **Pioneers**: Richard Sutton, Andrew Barto — authors of the canonical RL textbook
- **Modern proponents**: [[john-schulman]] (PPO), Rafael Rafailov (DPO), [[deepseek-sparse-attention|DeepSeek]] (GRPO for reasoning)
- **Key labs**: [[google|Google DeepMind]] (AlphaGo, AlphaFold), [[openai]] (InstructGPT, o1 reasoning)
- **Critics**: RLHF is expensive and unstable; newer methods like DPO and on-policy distillation aim to simplify

## Related Concepts

- [[nathan-lambert|RLHF]] — reinforcement learning from human feedback
- [[dpo]] — direct preference optimization, a simpler alternative to RLHF
- [[grpo]] — group relative policy optimization, used by DeepSeek-R1
- [[understanding-reasoning-llms|Reasoning LLMs]] — reasoning models often trained with RL on verifiable rewards
- [[on-policy-distillation-source|Distillation]] — on-policy distillation combines RL-like sampling with supervised learning
- [[on-policy-distillation-source|On-policy distillation]] — student-sampled trajectories graded by teacher

## Sources

- [[nathan-lambert|RLHF Book by Nathan Lambert]] — comprehensive reference on RLHF and post-training
- [[awesome-llm-post-training|Awesome-LLM-Post-training: Awesome Reasoning LLM Tutorial/Survey/Guide]] — covers RL methods for reasoning
- [[understanding-reasoning-llms]] — RL pipeline for DeepSeek R1
- [[vibe-rl|My first Vibe RL experience]] — practical RL experimentation with LLMs

## Evolution

- **2015–2019**: Deep RL breakthroughs (AlphaGo, Atari, robotics)
- **2022**: RLHF popularized via InstructGPT and ChatGPT
- **2023–2024**: DPO and variants reduce RL complexity; ORPO, KTO, SimPO explored
- **2025–2026**: GRPO and rule-based rewards enable reasoning model training without human labelers; "Vibe RL" emerges as agent-driven experimentation
