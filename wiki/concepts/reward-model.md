---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Reward Model

## Definition

A reward model is a trained neural network that learns to assign scalar reward scores to outputs based on human preferences, serving as a proxy for human judgment in reinforcement learning from human feedback (RLHF). It enables AI systems to optimize for qualities that are difficult to specify directly but can be demonstrated through comparative examples.

## Key Aspects

- Trained on human preference data (e.g., "output A is better than output B") to learn a scoring function
- Used in RLHF pipelines to guide language model optimization toward preferred behaviors
- Reward models are miscalibrated for diverse human preferences, as noted in NeurIPS 2025 research on LLM diversity
- Quality depends heavily on the representativeness and consistency of the human feedback used for training
- Can be used in content optimization patterns to score and rank generated outputs
- Limitations include reward hacking (gaming the reward signal) and difficulty capturing nuanced, context-dependent preferences
- Alternative approaches like RL with Verifiable Rewards (RLVR) use automated verification instead of learned reward models

## Related Concepts

- [[reinforcement-learning-from-human-feedback]] -- Reinforcement Learning from Human Feedback, the primary application domain
- [[rlvr-limitations]] -- Alternative reward approach with its own constraints
- [[preference-learning]] -- Core methodology underlying reward model training
- [[alignment]] -- Broader goal that reward models help achieve

## Sources

- [[content-optimization-pattern]]
