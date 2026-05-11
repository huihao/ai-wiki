---
url: "https://thoughtbot.com/blog/how-to-use-llms-without-driving-your-team-mad#magic-bandaid"
title: "How to use LLMs without driving your team mad"
author: "Jimmy Thigpen"
date: "2025-11-17"
description: "Identifies three AI anti-patterns frustrating development teams and provides practical solutions for integrating LLMs effectively."
---

# How to use LLMs without driving your team mad

Practical guide identifying three anti-patterns that create technical debt when integrating LLMs into development workflows, with actionable solutions for maintaining team productivity and code quality.

## Anti-Patterns Identified

### 1. Magic Bandaid
Treating LLMs as oracles rather than tools:
- Copy-paste errors into ChatGPT expecting instant fixes
- Iterate through increasingly convoluted solutions
- Understand pieces but have knowledge gaps you should fill
- Ship code that "works but feels wrong"

**Solution**:
- Have 5-minute conversations with coworkers first
- Write one sentence describing the problem before using AI
- If you can't describe it, you're not ready to use AI

### 2. Review Time Sink
AI-generated artifacts overwhelming reviewers:
- Three-paragraph PR descriptions saying everything and nothing
- Code with distinct "AI smell" requiring extra review effort
- Reviewers shouldn't be first eyes on AI-generated work
- "Because ChatGPT chose to do it that way" leads to weaker teams

**Solution**:
- Don't omit planning step—start with own ideas, compare with LLM recommendations
- Discuss with team how to utilize LLMs together
- Self-review PRs before tagging teammates
- Proofread and keep PR descriptions concise

### 3. Context Fragmentation
AI-generated artifacts breaking down product coherence:
- Auto-generated tests that "seem fine"
- ChatGPT-written commit messages lacking human reasoning
- Difficulty explaining architecture decisions 6 months later
- Never really made decisions—just clicked "accept edits"

**Solution**:
- Stay in driver's seat—add human context throughout
- Include comments on what didn't work and why
- Document reasoning in commits, comments, PR descriptions
- Maintain architectural decision ownership

## Key Principles

**Team communication first**: AI tools amplify capabilities but don't replace human collaboration and reasoning.

**Human oversight critical**: Reviewers deserve well-prepared PRs, not walls of AI-generated text requiring extra effort.

**Context preservation**: Every AI-generated artifact should include human reasoning about "why" not just "what".

**Planning before execution**: Use AI to explore solution space, not skip planning steps.

## Related Concepts

- [[llm-anti-patterns]] — Common mistakes creating technical debt in AI-assisted development
- [[ai-development-workflow]] — Best practices for integrating LLMs into team processes
- [[human-ai-collaboration]] — Effective partnership patterns between developers and AI tools

## Related Entities

- [[jimmy-thigpen]] — Developer and author identifying LLM integration challenges
- [[thoughtbot]] — Software consultancy publishing AI development best practices