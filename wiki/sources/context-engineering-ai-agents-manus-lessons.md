---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# AI代理的上下文工程：构建Manus的经验教训

## Metadata

- **Author**: Yichao 'Peak' Ji
- **Date**: 2025-07-18
- **URL**: https://manus.im/zh-cn/blog/Context-Engineering-for-AI-Agents-Lessons-from-Building-Manus
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/AI代理的上下文工程：构建Manus的经验教训.md

## Summary

An in-depth technical blog post sharing Manus team's experience with context engineering for AI agents. The article outlines key principles learned through iterative development, emphasizing KV cache optimization, attention manipulation through rephrasing, file system as context, and handling agent failures gracefully.

## Key Takeaways

- Context engineering is experimental science requiring iterative refinement
- Manus rebuilt agent framework four times through "Stochastic Graduate Student Descent" (SGD)
- Key principle: Design around KV cache for cost reduction (10x difference with Claude Sonnet)
- Keep prompt prefix stable, make context append-only, mark cache breakpoints explicitly
- Mask actions rather than removing them to preserve KV cache validity
- Use file system as unlimited, persistent, directly-manipulable external memory
- Rephrase goals through todo.md updates to manipulate attention toward recent context
- Retain error observations to provide correction signals
- Avoid few-shot learning traps by introducing controlled randomness

## Entities Mentioned

- [[manus|Manus]] — AI agent platform being built
- [[yichao-peak-ji|Yichao 'Peak' Ji]] — Author and Manus developer
- [[bert|BERT]] — Historical reference for pre-LLM era
- [[gpt-3|GPT-3]] — Marks beginning of in-context learning era
- [[flan-t5|Flan-T5]] — Early in-context learning model
- [[model-context-protocol|Model Context Protocol (MCP)]] — Protocol for tool integration

## Concepts Mentioned

- [[context-engineering|Context Engineering]] — Shaping agent behavior through context design
- [[kv-cache|KV Cache]] — Optimization technique for repeated prefix processing
- [[agent-systems|Agent Systems]] — AI systems that use tools and take actions
- [[prompt-caching|Prompt Caching]] — Cost reduction through cache reuse
- [[few-shot-learning|Few-shot Learning]] — Technique that can trap agents in repetitive patterns
- [[file-system-context|File System as Context]] — Using files as external memory
- [[attention-manipulation|Attention Manipulation]] — Guiding model focus through context structure
- [[agent-error-handling|Agent Error Handling]] — Preserving failure information for learning

## Raw Notes

The article contrasts two approaches: training end-to-end agent models vs. using in-context learning with frontier models. Manus chose the latter for faster iteration cycles and orthogonality to model improvements.

Key technical insights:
- Input:Output token ratio for agents is ~100:1 (highly skewed toward prefill)
- Cache costs: $0.30/M tokens cached vs $3/M uncached with Claude Sonnet
- Dynamic tool addition/removal invalidates KV cache and confuses models
- Tool name prefixes (browser_, shell_) enable efficient logits masking
- Context compression must be reversible to avoid permanent information loss
- State Space Models (SSM) might enable new agent architectures via file-based memory

## Questions / Follow-ups

- How do these principles generalize to other frontier models?
- Quantitative studies on attention manipulation effectiveness?
- Integration with formal verification for agent behavior?