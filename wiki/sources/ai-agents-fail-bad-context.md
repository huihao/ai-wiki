---
url: "https://www.theunwindai.com/p/ai-agents-fail-on-bad-context-not-bad-models"
title: "AI Agents Fail on Bad Context, Not Bad Models"
author: "Shubham Saboo"
date: "2025-10-26"
description: "Start with Context Engineering before you blame the AI model"
tags: ["context-engineering", "ai-agents", "llm", "agent-architecture"]
---

# AI Agents Fail on Bad Context, Not Bad Models

A practical essay demonstrating that agent failures are more often caused by poor context management than model inadequacy. Before upgrading models, engineers should optimize their context windows.

## The Core Problem

When agents fail at turn 50+, the instinct is to blame the model. But the real culprit is often the **workspace**—a context window filled with:

- 50 browser tabs worth of information
- Contradictory instructions from different turns
- Stale logs from completed work
- 70% irrelevant content

**The engineer (model) isn't the problem. The desk (context) is.**

## Token Breakdown Reality

At turn 50, a typical agent context:

```
System prompt: 2,000 tokens
Tool results (47 turns): 85,000 tokens  ← 60% irrelevant
Conversation history: 40,000 tokens
Retrieved documents: 25,000 tokens
Few-shot examples: 8,000 tokens
Total: 160,000 tokens
```

The model must find signal in 70% noise.

## Three Context Failure Modes

### 1. Signal Drowning

Example: Database migration agent
- Early instruction: "Check deleted_at and skip soft-deleted records"
- Turn 45: Context bloated with old schema logs, batch output, debugging traces
- Result: Agent processes 127 soft-deleted records anyway
- Cause: Instruction competed with mountains of stale logs

Fix: Clean completed work → 195k tokens → 12k tokens, signal becomes visible.

### 2. Conflicting Information

Example: Customer support refund agent
- Early policy: "Approve refunds under $50 automatically"
- Later override: "All refunds require manager approval" (temporary fraud concern)
- Turn 50: Both instructions still present
- Result: Agent picks recent rule, blocks legitimate refund
- Cause: Temporary restriction never removed

Fix: Remove old policies or explicitly mark outdated rules.

### 3. Pattern Pollution

Example: Code review agent
- Trained on small PR examples: fetch file, analyze, feedback
- Applied to 87-file refactor
- Result: Analyzes files individually, early files truncated, phantom errors
- Cause: Examples taught wrong pattern for massive refactors

Fix: Match few-shot examples to problem type (scope-first approach for large refactors).

## Context Quality Degradation

Performance timeline:
- **Early turns**: Clean context → good decisions
- **Later turns**: Polluted context → degraded performance

Not model fatigue—it's context window filling with garbage.

## The Model Upgrade Trap

**Upgrading Claude Sonnet 4 → Claude Opus 4:**
- ~15% reasoning improvement
- Significant cost increase

**Cleaning context (removing 70k irrelevant tokens):**
- ~40% task success improvement
- Zero cost increase

You're paying a smarter model to wade through garbage.

## Good Context Principles

1. **Only keep relevant tool results**
   - Clear stale API responses
   - Summarize instead of preserving raw outputs

2. **Single source of truth for instructions**
   - Remove or mark outdated rules
   - Don't leave contradictions in context

3. **Summarize conversation history**
   - Turn-by-turn history from 40 turns ago → factual digest
   - Keep only active recent turns

4. **Similarity ≠ Relevance**
   - Vector search returns similar docs, not useful ones
   - Filter before loading into context

5. **Match examples to problem type**
   - Small fix examples ≠ massive refactor guidance
   - Examples teach behavior patterns

## Before Upgrading Models, Check:

1. What % of context is relevant to current task?
2. Are there conflicting instructions?
3. Am I keeping tool results I'll never reference?
4. Do few-shot examples match the problem?
5. Have I summarized old conversation turns?

Fix context first. The model you have is likely good enough—your context isn't.

## Results

```
Before cleanup:
Total: 160,000 tokens | Signal: 30% | Success: 41%

After cleanup:
Total: 45,000 tokens | Signal: 90% | Success: 73% (same model)
```

## Key Insight

**"You're asking a brilliant engineer to work at a desk buried in printouts from last month's project. Clean the desk first."**

Context engineering delivers 2-3x better ROI than model upgrades for long-running agents.