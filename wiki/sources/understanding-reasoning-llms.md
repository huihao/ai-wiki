---
created: 2026-04-27
updated: 2026-04-27
tags: [source, reasoning, deepseek, tutorial]
sources: 1
---

# Understanding Reasoning LLMs

## Metadata

- **Author**: [[sebastian-raschka]]; PhD
- **Date**: 2025-02-05
- **URL**: https://sebastianraschka.com/blog/2025/understanding-reasoning-llms.html
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Understanding Reasoning LLMs.md`

## Summary

A comprehensive technical overview of how reasoning models are built and refined. Raschka defines reasoning as complex, multi-step generation with intermediate steps, then systematically outlines four approaches to building reasoning LLMs, using DeepSeek R1 as the primary case study. The article also covers low-budget alternatives (Sky-T1, TinyZero) and novel directions like journey learning.

## Key Takeaways

- **Definition**: "Reasoning" = answering questions requiring complex, multi-step generation with intermediate steps. Most modern LLMs can do basic reasoning; "reasoning models" excel at puzzles, riddles, math proofs, and coding challenges.
- **Trade-offs**: Reasoning models are more expensive, verbose, and prone to "overthinking." They are unnecessary for summarization, translation, or knowledge QA. Use the right tool for the task.
- **Four approaches to building reasoning models**:
  1. **[[inference-time-scaling]]** — no training needed, increases inference cost. Methods: CoT prompting, majority voting, beam/search with process reward models. Suspected to be a major component of OpenAI o1/o3.
  2. **Pure Reinforcement Learning** — DeepSeek-R1-Zero skipped SFT entirely and trained DeepSeek-V3 base with RL using accuracy + format rewards. Produced the famous "Aha!" moment where reasoning emerged spontaneously. More of a research insight than practical top performer.
  3. **SFT + RL** — DeepSeek-R1 (flagship) used R1-Zero to generate "cold-start" SFT data, then instruction-tuned + RL with consistency reward to prevent language mixing. Additional 600K CoT + 200K knowledge SFT samples, then final RL. Benchmark-competitive with o1.
  4. **Pure SFT / Distillation** — DeepSeek-R1-Distill models (Llama 8B/70B, Qwen 0.5B–32B) trained on the same SFT data as R1. Surprisingly strong for their size. Distillation is more effective than pure RL for smaller models.
- **DeepSeek R1 vs o1**: Roughly same ballpark performance, but DeepSeek-R1 is more inference-efficient. OpenAI likely relies more on inference-time scaling with a weaker base model; DeepSeek invested more in training.
- **Training cost**: The ~$6M figure commonly cited refers to DeepSeek-V3 (base model), not R1. DeepSeek never disclosed R1's exact cost.
- **Low-budget alternatives**:
  - **Sky-T1** (32B): $450, 17K SFT samples, performs roughly on par with o1-preview.
  - **TinyZero** (3B): <$30, pure RL replication of R1-Zero, exhibits emergent self-verification.
  - **Journey Learning**: SFT on both correct *and* incorrect solution paths, allowing models to learn from mistakes. Alternative to "shortcut learning."
- **Prompting tips for reasoning models** (from related paper):
  1. Zero-shot outperforms few-shot for reasoning models.
  2. Direct problem description wins — avoid complex prompting patterns.
  3. Language consistency matters; mixed-language prompts cause mixed-language reasoning chains.

## Entities Mentioned

- [[sebastian-raschka]] — author, ML researcher/educator
- [[deepseek-sparse-attention|DeepSeek]] — Chinese AI lab; creators of DeepSeek-V3, DeepSeek-R1, DeepSeek-R1-Zero, DeepSeek-R1-Distill
- [[openai]] — o1, o3 (suspected methods discussed)
- [[alibaba]] — Qwen team (QwQ-32B-Preview)
- [[meta]] — Llama models used in distillation
- [[answer-ai-source|Nova Sky AI]] — Sky-T1 project
- Jiayi Pan — TinyZero project

## Concepts Mentioned

- [[understanding-reasoning-llms|Reasoning LLMs]] — core subject
- [[inference-time-scaling]] — approach #1
- [[chain-of-thought]] — foundational prompting technique
- [[reinforcement-learning-from-human-feedback|RLHF]] — related training paradigm
- [[supervised-fine-tuning|SFT]] — core training technique
- [[on-policy-distillation-source|Distillation]] — in the LLM context: SFT on teacher-generated reasoning data
- [[machine-learning|Journey Learning]] — learning from incorrect solution paths
- [[mixture-of-experts|MoE]] — architecture suspected in o1 and used in DeepSeek-V3
- [[pytorch|Process Reward Models]] — used in search-based inference-time scaling
- [[self-attention|Self-Verification]] — emergent ability in pure RL training

## Raw Notes

- The article is structured as both tutorial and case study. DeepSeek R1 technical report is treated as the canonical blueprint for open-weight reasoning models.
- Raschka suspects o1 uses a weaker base model than DeepSeek-R1 but compensates with more inference-time scaling. This is speculative but well-reasoned.
- The distinction between "distillation" in classical deep learning (logits-based) vs. LLM distillation (SFT on teacher outputs) is an important clarification.
- Sky-T1 and TinyZero show that the core ideas are replicable at very low cost, democratizing reasoning model research.

## Questions / Follow-ups

- How does journey learning compare to RL-based self-correction in practice?
- What is the minimum viable base model size for pure RL to induce reasoning?
- Has anyone replicated Sky-T1 or TinyZero results independently?
- How do the prompting findings (zero-shot > few-shot) generalize across different reasoning model families?
