---
created: 2026-05-11
updated: 2026-05-11
tags: [source, ai-agents, tool-use, reinforcement-learning, alibaba, research]
sources: 1
url: "https://venturebeat.com/orchestration/alibabas-metis-agent-cuts-redundant-ai-tool-calls-from-98-to-2-and-gets-more-accurate-doing-it"
title: "Alibaba's HDPO cuts AI agent tool overuse from 98% to 2%"
---

# Alibaba's HDPO cuts AI agent tool overuse from 98% to 2%

## Summary

Alibaba researchers developed HDPO (Hierarchical Dynamic Policy Optimization), a reinforcement learning framework that trains AI agents to avoid unnecessary tool calls. In experiments, agents reduced redundant tool invocations from 98% to just 2% while simultaneously improving reasoning accuracy — demonstrating that tool overuse is a learnable behavior, not an inherent LLM limitation.

## Key Takeaways

- Tool overuse is a widespread problem: agents default to calling tools even when their internal knowledge suffices
- HDPO uses hierarchical RL with two policy levels: a high-level policy deciding whether to use a tool at all, and a low-level policy selecting which tool and how
- The framework treats tool calling as a decision problem, not a generation problem — training the model to recognize when internal knowledge is sufficient
- Results show a paradoxical improvement: reducing tool calls actually improved accuracy, because unnecessary calls introduce noise and error propagation
- The approach generalizes across different agent architectures and tool sets
- This challenges the "more tools = better" assumption in agent design

## Entities Mentioned

- [[alibaba]] — research organization behind HDPO
- [[venturebeat]] — publication covering the research

## Concepts Mentioned

- [[tool-use]] — pattern where LLM agents call external tools/APIs to complete tasks
- [[tool-overuse]] — tendency of agents to call tools unnecessarily, wasting compute and introducing errors
- [[reinforcement-learning]] — training paradigm using reward signals to learn optimal behavior
- [[hierarchical-rl]] — RL with multiple policy levels (meta-policy + sub-policies)
- [[reasoning-llms]] — model's internal reasoning capabilities vs. external tool augmentation
