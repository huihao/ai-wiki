---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# What Is a Reasoning Model?

## Metadata

- **Author**: Dave Bergmann
- **Date**: 2025-08-07
- **URL**: https://www.ibm.com/think/topics/reasoning-model
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/What Is a Reasoning Model_ _ IBM.md

## Summary

IBM's comprehensive overview of reasoning models—LLMs fine-tuned to generate intermediate reasoning steps (chain-of-thought traces) before final outputs. The article explains the training methodology (reinforcement learning, supervised fine-tuning), different approaches (outcome/process reward models, search-based methods), key implementations (DeepSeek-R1, OpenAI o1, Claude 3.7 Sonnet, IBM Granite 3.2), and trade-offs including overthinking, latency costs, and performance regression on non-reasoning tasks.

## Key Takeaways

- Reasoning models generate intermediate "reasoning traces" before final outputs, increasing test-time compute
- Introduced by OpenAI o1-preview (September 2024), followed by Alibaba QwQ, Google Gemini 2.0, DeepSeek-R1 (January 2025)
- DeepSeek-R1's open-source technical paper provided blueprint for other developers (IBM Granite, Anthropic, Mistral)
- Training combines standard LLM pipeline (pretraining + SFT) with reinforcement learning to incentivize reasoning
- Two primary reward approaches: Outcome Reward Models (verify final answer) and Process Reward Models (score each reasoning step)
- Rules-based rewards avoid reward model complexity (DeepSeek-R1-Zero uses simple accuracy + formatting rules)
- Search-based methods (MCTS, self-consistency/majority voting) generate multiple paths and select best
- Knowledge distillation transfers larger model reasoning to smaller models (DeepSeek distilled to Qwen/Llama)
- Reasoning improves math/coding benchmarks significantly but can regress instruction-following performance
- Overthinking: reasoning models consume 1,953% more tokens on average, can engage in circular reasoning
- Hybrid models (IBM Granite 3.2, Claude 3.7 Sonnet) offer toggleable reasoning modes for efficiency
- Research challenges assumption that more reasoning universally improves outputs (inverse scaling observed)
- Apple research shows reasoning models fail to develop generalizable problem-solving, performance collapses beyond complexity threshold

## Entities Mentioned

- [[ibm|IBM]] — Technology company developing reasoning models (IBM Granite 3.2)
- [[deepseek|DeepSeek]] — Open-source reasoning model pioneer (R1, R1-Zero)
- [[openai|OpenAI]] — Introduced reasoning models with o1-preview, o1-mini, o3 series
- [[anthropic|Anthropic]] — Released Claude 3.7 Sonnet reasoning model with adjustable thinking
- [[google|Google]] — Gemini 2.0 Flash Experiment reasoning model with thinking budget control
- [[alibaba|Alibaba]] — QwQ-32B-preview reasoning model
- [[mistral-ai|Mistral AI]] — Released reasoning-tuned models following DeepSeek blueprint

## Concepts Mentioned

- [[reasoning-models|Reasoning Models]] — LLMs fine-tuned to generate reasoning steps before final outputs
- [[chain-of-thought|Chain-of-Thought (CoT)]] — Reasoning approach breaking problems into sequential steps
- [[test-time-compute|Test-Time Compute]] — Computational resources used during inference/generation
- [[inference-scaling|Inference Scaling]] — Techniques increasing compute at inference time to improve performance
- [[system-1-system-2-thinking|System 1/System 2 Thinking]] — Kahneman's framework distinguishing intuitive vs. reasoned cognition
- [[outcome-reward-models|Outcome Reward Models (ORM)]] — Reward signals based on final output accuracy
- [[process-reward-models|Process Reward Models (PRM)]] — Reward signals scoring each reasoning step
- [[reinforcement-learning|Reinforcement Learning]] — Training paradigm optimizing behavior through rewards
- [[knowledge-distillation|Knowledge Distillation]] — Transferring larger model capabilities to smaller models
- [[self-consistency|Self-Consistency (Majority Voting)]] — Generating multiple outputs and selecting most common
- [[overthinking|Overthinking]] — Reasoning model inefficiency from excessive token generation
- [[inverse-scaling|Inverse Scaling]] — Performance degradation despite increased compute

## Raw Notes

Reasoning models represent a significant architectural shift from standard LLMs: instead of optimizing generation speed, they deliberately increase computation during inference. This challenges traditional efficiency assumptions but enables state-of-the-art performance on verifiable tasks (math, coding). DeepSeek's openness catalyzed adoption across organizations, democratizing reasoning model development. The tension between System 1 (fast, intuitive) and System 2 (slow, reasoned) thinking appears explicitly in the design rationale. Hybrid models acknowledge reasoning isn't universally beneficial—toggleable modes allow task-appropriate compute allocation. Apple's research fundamentally questions whether reasoning models achieve "generalizable" intelligence or just memorize patterns with more tokens. Anthropic's finding that reasoning models don't faithfully explain their rationale raises interpretability concerns: showing reasoning ≠ explaining reasoning.

## Questions / Follow-ups

- Can reasoning models generalize beyond math/coding to creative domains?
- How do we detect when reasoning degrades rather than improves performance?
- What tasks benefit most/least from reasoning overhead?
- Can process reward models be automated without human annotation?
- How does reasoning model latency impact real-world deployment decisions?