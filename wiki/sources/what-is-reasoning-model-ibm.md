---
created: 2026-04-28
updated: 2026-04-28
tags: [source, reasoning, llm, fine-tuning, tutorial]
sources: 1
---

# What Is a Reasoning Model?

## Metadata

- **Author:** Dave Bergmann (IBM)
- **Date:** 2025-08-07
- **URL:** https://www.ibm.com/think/topics/reasoning-model
- **Access Date:** 2026-04-27
- **Raw File:** `raw/ai/What Is a Reasoning Model_ _ IBM.md`

## Summary

An IBM overview of reasoning LLMs — models fine-tuned to break complex problems into smaller chain-of-thought steps before generating final output. The article traces the evolution from [[openai]]'s o1-preview (September 2024) through [[deepseek-sparse-attention|DeepSeek]]-R1 (January 2025) and covers training methodologies, reward signal types, inference-time scaling, hybrid reasoning models, and limitations like overthinking and reasoning-action dilemmas.

## Key Takeaways

- Reasoning models are trained to generate intermediate "reasoning traces" before final answers
- Key milestone: [[deepseek-sparse-attention|DeepSeek]]-R1 released detailed technical paper, democratizing reasoning model training knowledge
- Training pipeline: pre-training → SFT → reinforcement learning with reasoning-specific rewards
- Three reward signal categories: Outcome Reward Models (ORMs), Process Reward Models (PRMs), and rules-based systems
- [[deepseek-sparse-attention|DeepSeek]]-R1-Zero demonstrated that pure RL (without SFT) can elicit complex chain-of-thought reasoning
- Inference-time compute scaling can be as effective as training-time compute scaling
- Downsides: overthinking (up to 1,953% more tokens), circular reasoning in agentic environments, performance regression on some instruction-following benchmarks
- Hybrid reasoning models (e.g., [[ibm]] Granite 3.2, [[claude-code-source-leak-harness|Claude]] 3.7 Sonnet) allow toggleable "thinking" modes
- Research from [[anthropic]] shows reasoning models don't always faithfully explain their reasoning

## Entities Mentioned

- [[openai]] — introduced o1-preview reasoning model
- [[deepseek-sparse-attention|DeepSeek]] — released open-source DeepSeek-R1 with detailed technical report
- [[ibm]] — released Granite 3.2 with toggleable reasoning mode
- [[anthropic]] — research on reasoning model limitations and Claude 3.7 Sonnet
- [[google]] — Gemini 2.0 Flash Experiment with reasoning capabilities
- [[alibaba]] — QwQ-32B-preview reasoning model
- [[mistral-ai]] — released reasoning LLMs
- [[apple]] — published research on reasoning model limitations
- [[tencent]] — study on reasoning model overthinking

## Concepts Mentioned

- [[what-is-reasoning-model-ibm|reasoning model]] — LLM fine-tuned for multi-step chain-of-thought reasoning
- [[chain-of-thought|CoT]] — step-by-step reasoning traces
- [[reinforcement-learning-from-human-feedback|RL]] — training method using reward signals
- [[how-to-scale-your-model|ORM]] — rewards based on final answer correctness
- [[how-to-scale-your-model|PRM]] — rewards based on each reasoning step's quality
- [[inference-time-scaling]] — increasing compute during inference to improve outputs
- [[on-policy-distillation-source|knowledge distillation]] — training smaller models on larger model outputs
- [[understanding-reasoning-llms|hybrid reasoning]] — toggleable reasoning modes for efficiency
- [[self-attention|self-consistency]] / majority voting — sampling multiple reasoning paths
- [[onnx-runtime-getting-started|STaR]] — Self-Taught Reasoner bootstrapping approach
- [[ai-data-engineer-return-to-basics|synthetic training data]] — generated reasoning traces for supervised fine-tuning

## Raw Notes

- Reasoning models typically evaluated on verifiable problems (math, coding)
- S2A (System 2 Attention): model rewrites prompt to strip irrelevant context before answering
- DeepSeek-R1 uses formatted answer boxes for automatic accuracy verification
- Stanford/Allen Institute s1 model beat o1-preview on competition math with only 1K curated examples
- Rule-based reward systems can incentivize micro-actions like adding "wait" for self-correction
- Monte Carlo tree search (MCTS) used for exploring multiple reasoning paths
- "Thought preference optimization (TPO)" used for IBM Granite 3.2 reasoning fine-tuning

## Questions / Follow-ups

- How do hybrid reasoning models decide when to use reasoning vs direct answering?
- What are the latest developments in faithful reasoning explanation?
