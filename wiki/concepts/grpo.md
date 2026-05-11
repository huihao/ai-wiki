---
created: 2026-04-28
updated: 2026-04-28
tags: [rl, training]
sources: 0
---

# GRPO

## Definition

GRPO (Group Relative Policy Optimization) is a reinforcement learning algorithm developed by DeepSeek for training reasoning models without requiring a separate value network or human preference data. GRPO samples a group of outputs from the policy model, scores them with a reward function (often rule-based verification), and updates the policy using relative advantages within the group. It was the key training method behind DeepSeek-R1's reasoning capabilities.

## Key Attributes

- **Developer**: [[deepseek-sparse-attention|DeepSeek]]
- **Type**: Reinforcement learning algorithm for LLM post-training
- **Key innovation**: No value network needed; uses intra-group relative rewards
- **Reward types**: Rule-based verification (math, code), format rewards, length penalties
- **Impact**: Enabled DeepSeek-R1 to match OpenAI o1 at a fraction of the cost

## Related Entities

- [[deepseek-sparse-attention|DeepSeek]] — creator of GRPO and DeepSeek-R1
- [[openai]] — o1 uses similar RL techniques but likely with human data

## Related Concepts

- [[reinforcement-learning-from-human-feedback|Reinforcement Learning]] — GRPO is a policy gradient method
- [[nathan-lambert|RLHF]] — GRPO replaces the human feedback component with automated rule-based rewards
- [[dpo]] — GRPO is distinct from preference optimization; it uses outcome rewards
- [[understanding-reasoning-llms|Reasoning LLMs]] — GRPO is a primary method for training reasoning models
- [[on-policy-distillation-source|On-policy distillation]] — related method for post-training with student-sampled trajectories

## Sources

- [[understanding-reasoning-llms]] — covers GRPO in the DeepSeek-R1 pipeline
- [[awesome-llm-post-training|Awesome-LLM-Post-training: Awesome Reasoning LLM Tutorial/Survey/Guide]] — surveys GRPO and variants

## Evolution

- **2024**: DeepSeek introduces GRPO with DeepSeekMath
- **2025**: DeepSeek-R1 demonstrates GRPO scales to frontier reasoning capabilities
- **2026**: GRPO variants (DAPO, VAPO) emerge; rule-based reward engineering becomes a key skill
