---
created: 2026-04-29
updated: 2026-04-29
url: "https://github.com/rasbt/reasoning-from-scratch"
title: "Build a Reasoning Model (From Scratch)"
tags: [source, llm, reasoning, reinforcement-learning, book]
source: unknown
---

# Build a Reasoning Model (From Scratch)

**Author:** Sebastian Raschka
**Publisher:** Manning, 2025
**ISBN:** 9781633434677
**URL:** https://github.com/rasbt/reasoning-from-scratch

## Summary

A hands-on book teaching how reasoning capabilities are added to LLMs, step by step in code. Starting from a pre-trained base LLM (Qwen3), the book walks through inference-time scaling, reinforcement learning (GRPO), and distillation — the same techniques used in DeepSeek R1, GPT-5 Thinking, and similar models. Designed to run on consumer hardware.

## Key Takeaways

1. **Reasoning = post-training capability**: Reasoning is not built into base LLMs; it's added through specific techniques on top of pre-trained models.
2. **Three approaches to improve reasoning**:
   - **Inference-time scaling**: Chain-of-thought prompting, self-consistency, best-of-N sampling, self-refinement (Ch 4-5)
   - **Reinforcement learning**: GRPO (Group Relative Policy Optimization) for training reasoning behavior (Ch 6-7)
   - **Distillation**: Transferring reasoning from large teacher to small student model (Ch 8)
3. **GRPO (Group Relative Policy Optimization)**: Core RL method for reasoning models, with advanced variants (DeepSeek-V3.2-style, GDPO-style) in Chapter 7.
4. **Self-consistency**: Sample multiple reasoning paths, take majority vote — simple yet effective inference-time scaling.
5. **Consumer hardware**: Code designed to run on consumer GPUs/CPUs. Chapters 2-4 work on CPU; chapters 5-8 recommended GPU.
6. **Companion to "Build a Large Language Model (From Scratch)"**: This book assumes a pre-trained base LLM; the other book covers base LLM implementation.
7. **MATH-500 benchmark**: Used throughout for evaluating reasoning performance.
8. **Evaluation is hard**: Appendix F covers common LLM evaluation approaches, acknowledging it's an open challenge.

## Entities Mentioned

- **Sebastian Raschka** — ML researcher/educator, author of Build a LLM (From Scratch) series
- **Manning** — Publisher
- **Qwen3** — Base LLM used throughout the book
- **DeepSeek R1** — Reasoning model whose techniques are replicated
- **GPT-5 Thinking** — OpenAI reasoning model (referenced as similar approach)

## Concepts Mentioned

- [[chain-of-thought-prompting]] — Guiding LLM to show step-by-step reasoning
- [[self-consistency]] — Sampling multiple reasoning paths, majority voting
- [[grpo]] — Group Relative Policy Optimization for RL training
- [[distillation]] — Knowledge transfer from large teacher to small student model
- [[inference-time-scaling]] — Improving reasoning by spending more compute at inference
- [[reinforcement-learning-from-human-feedback]] — Training with reward signals
- [[reasoning-models]] — LLMs with explicit step-by-step reasoning capabilities
- [[best-of-n-sampling]] — Generating N candidates, selecting the best

## Raw Notes

- 8 chapters + appendices (MATH-500 verifiers, advanced parser, inference scaling scripts, GRPO scripts, distillation, chat interface)
- Chapter 1: Understanding reasoning models (conceptual)
- Chapter 2: Generating text with pre-trained LLM
- Chapter 3: Evaluating LLMs (MATH-500 benchmark)
- Chapter 4: Inference-time scaling (CoT prompting, self-consistency)
- Chapter 5: Self-refinement (Best-of-N, self-refinement)
- Chapter 6: RL with GRPO (basic)
- Chapter 7: Advanced GRPO (DeepSeek-V3.2, Olmo3, GDPO variants, training checkpoints)
- Chapter 8: Distillation (teacher-output generation via Ollama/OpenRouter, single-example and batched distillation)
- Appendix G: Building a chat interface

## Questions / Follow-ups

- How does GRPO compare to PPO for reasoning model training?
- What are the practical limits of inference-time scaling vs training-time improvement?
- How does the distillation quality degrade with model size reduction?
