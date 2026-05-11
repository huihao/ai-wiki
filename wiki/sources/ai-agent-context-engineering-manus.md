---
created: 2026-04-28
updated: 2026-04-28
tags: [source, context-engineering, agents, manus]
sources: 1
---

# Context Engineering for AI Agents: Lessons from Building Manus

## Metadata

- **Author**: Yichao 'Peak' Ji (Manus)
- **Date**: 2025-07-18
- **URL**: https://manus.im/zh-cn/blog/Context-Engineering-for-AI-Agents-Lessons-from-Building-Manus
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/AI代理的上下文工程：构建Manus的经验教训.md`

## Summary

Manus's co-founder shares hard-won lessons from rebuilding their agent framework four times. Covers KV cache optimization, action space management, filesystem-as-context, attention manipulation via todo.md, and the dangers of few-shot pattern pollution.

## Key Takeaways

- **Context learning over fine-tuning**: Manus chose context engineering over training end-to-end agent models because it enables hours-long iteration cycles vs. weeks-long training cycles, and keeps the product orthogonal to model improvements.
- **Design around KV cache**: Agents have highly skewed prefill:decode ratios (~100:1 in Manus). KV cache reduces cost 10× (e.g., Claude Sonnet cached: $0.30/M vs. uncached: $3/M). Tips:
  - Keep prompt prefix stable (timestamps in system prompt break caching)
  - Make context append-only; ensure deterministic serialization
  - Mark cache breakpoints explicitly when framework requires it
- **Mask, don't remove tools**: Dynamic action spaces seem appealing but break KV cache and confuse models when historical actions reference removed tools. Solution: use logit masking to constrain available actions while keeping all tool definitions in context. Manus uses consistent prefixes (`browser_`, `shell_`) for easy masking.
- **Filesystem as ultimate context**: 128K context is often insufficient for real agents. Manus treats the filesystem as unbounded, persistent, manipulable external memory. Compression is always recoverable (e.g., keep URL but drop webpage content).
- **Attention manipulation via复述 (reiteration)**: Manus creates and updates `todo.md` throughout tasks, pushing global goals into the model's recent attention window. This avoids "lost in the middle" without architecture changes.
- **Keep errors in context**: Agent failures are normal. Removing error traces loses valuable signal; keeping them helps the agent learn and recover.
- **Don't get trapped by few-shot examples**: Models are excellent mimics. Similar action-observation pairs in context cause pattern repetition and hallucination. Solution: inject controlled randomness — different serialization templates, alternative wording, minor format noise.

## Entities Mentioned

- [[context-engineering|Manus]] — general-purpose AI agent platform
- Yichao 'Peak' Ji — author, Manus co-founder
- [[anthropic]] — Claude models, KV cache pricing
- [[model-context-protocol|MCP]] — mentioned as exacerbating tool explosion
- [[openai]] — GPT-3 mentioned as enabling context learning
- [[google]] — Flan-T5 mentioned

## Concepts Mentioned

- [[context-engineering]] — shaping agent behavior through context design
- [[kv-caching|KV Cache]] — prefix caching for cost/latency reduction
- [[latent-space|Action Space Masking]] — constraining tool choice without removing definitions
- [[context-engineering|Filesystem as Context]] — using files as external memory
- [[self-attention|Attention Manipulation]] — reiterating goals to keep them in focus
- Few-Shot Pattern Pollution — repetition causing rigid behavior
- [[the-evolution-of-modern-rag-architectures|Lost in the Middle]] — degradation of middle-context information
- [[speculative-decoding|Constraint Decoding]] — logit-level control of model outputs

## Raw Notes

- Author refers to their iterative process as "SGD" (Stochastic Graduate Descent) — manual architecture search through trial and error.
- Average Manus task: ~50 tool calls.
- Speculates that SSM-based agents with filesystem memory could be successors to Neural Turing Machines.
- Hermes format used as example for function calling format.

## Questions / Follow-ups

- How does Manus's context engineering approach compare to Claude Code's explicit context features?
- What are the filesystem organization conventions Manus uses for structured external memory?
