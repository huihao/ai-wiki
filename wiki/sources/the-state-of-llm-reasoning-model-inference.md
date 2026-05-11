---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# The State of LLM Reasoning Model Inference

## Metadata

- **Author**: Sebastian Raschka, PhD
- **Date**: 2025-03-08
- **URL**: https://sebastianraschka.com/blog/2025/state-of-llm-reasoning-and-inference-scaling.html?ref=dailydev
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/The State of LLM Reasoning Model Inference.md

## Summary

A comprehensive overview of inference-time compute scaling methods for improving reasoning in large language models (LLMs). The article explores techniques released after DeepSeek R1 (January 2025), focusing on methods that increase computational resources during inference to improve reasoning performance without modifying model weights.

## Key Takeaways

- Inference-time compute scaling improves reasoning by allowing models to "think longer" during generation
- Two main strategies: (1) increasing training compute or (2) increasing inference compute (test-time scaling)
- Major categories: inference-time compute scaling, pure RL, RL+SFT, and SFT+distillation
- Key methods include: chain-of-thought prompting, majority voting, beam search, process reward models
- "Wait" tokens (s1 paper) encourage self-verification and longer responses through "budget forcing"
- Small models with proper inference-time scaling can outperform much larger models without it
- Cost trade-off: inference-time scaling increases costs but may still be cheaper than training larger models
- No single inference-time scaling technique performs best across all tasks
- Trend toward "thinking on demand" features in commercial LLM offerings (Claude 3.7 Sonnet, Grok 3)

## Entities Mentioned

- [[sebastian-raschka|Sebastian Raschka]] — Author, machine learning researcher
- [[deepseek|DeepSeek]] — Released R1 reasoning model in January 2025
- [[openai|OpenAI]] — Developed o1 reasoning model using RL + inference-time scaling

## Concepts Mentioned

- [[inference-time-compute-scaling|Inference-Time Compute Scaling]] — Increasing computational resources during inference to improve reasoning
- [[reasoning-models|Reasoning Models]] — LLMs designed to solve multi-step problems through structured thought processes
- [[test-time-scaling|Test-Time Scaling]] — Synonymous with inference-time compute scaling
- [[chain-of-thought-prompting|Chain-of-Thought Prompting]] — Technique guiding models to generate intermediate reasoning steps
- [[budget-forcing|Budget Forcing]] — Controlling response length through token insertion or early stopping
- [[process-reward-models|Process Reward Models]] — Models that select best solutions from multiple candidates
- [[monte-carlo-tree-search|Monte Carlo Tree Search]] — Search-based inference-time scaling technique

## Research Papers Covered

1. **s1: Simple Test-Time Scaling** (Jan 31, 2025) — Introduces "Wait" tokens for budget forcing
2. **Test-Time Preference Optimization (TPO)** — Iterative alignment during inference without weight changes
3. **Thoughts Are All Over the Place** — Addresses "underthinking" with Thought Switching Penalty
4. **Trading Inference-Time Compute for Adversarial Robustness** — Improves safety through scaling
5. **Chain-of-Associated-Thoughts (CoAT)** — Combines MCTS with associative memory
6. **Step Back to Leap Forward** — Self-backtracking mechanism for reasoning
7. **Scaling up Test-Time Compute with Latent Reasoning** — Recurrent depth approach
8. **Compute-Optimal Scaling Strategy** — Adapts to PRM, model, and task complexity
9. **Inference-Time Optimization** — Updates model weights during inference via OpTune
10. **Inference-Time Computations for LLM Reasoning and Planning** — Benchmark study
11. **Inner Thinking Transformer (ITT)** — Dynamic depth scaling per token
12. **S*: Test Time Scaling for Code Generation** — Parallel + sequential scaling for code
13. **Chain of Draft (CoD)** — Reduces verbosity while maintaining accuracy
14. **Dedicated Feedback and Edit Models** — Specialized models for open-ended tasks

## Raw Notes

The article distinguishes between training-time methods and inference-time methods for improving reasoning. DeepSeek R1 categorized common inference-time scaling methods (PRM-based, MCTS-based) as "unsuccessful attempts," suggesting they didn't use them beyond R1's natural tendency to generate longer responses. However, these techniques can be incorporated at the application layer.

Key insight: Inference-time scaling can be applied to any existing LLM to make it better for specific tasks. The effectiveness depends on task and difficulty—no technique performs best across all tasks.

Commercial trend: Most LLM providers now allow users to enable/disable "thinking" features, likely the same model with dialed-back inference-time compute scaling.

## Questions / Follow-ups

- What are the optimal cost-performance trade-offs for different reasoning tasks?
- How will reasoning capabilities become standard rather than optional features?
- Which inference-time scaling techniques work best for specific domains (code, math, general)?
- How do train-time compute methods compare to inference-time scaling (covered in future article)?