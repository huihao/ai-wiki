---
url: https://arxiv.org/abs/2309.02427
title: COALA Paper Memory Framework
---

# Semantic Memory

One of three memory types defined in COALA paper framework for AI agents.

## Definition

Facts about the world.

## Purpose

Stores domain-specific knowledge, terminology, entities, and factual information.

## Implementation

In [[langsmith-agent-builder|LangSmith Agent Builder]]:

- [[agent-skill|Skills]] files: Specialized instructions for specific tasks
- Knowledge files: Arbitrary factual information
- Domain-specific terminology files

## Example

Meeting summarizer semantic memory:

- Names and roles of frequent meeting participants
- Domain-specific terminology definitions
- Distinctions between "action items", "decisions", "discussion points"
- Vendor patterns and cold outreach signatures

## Evolution

Agent can read and edit semantic memory during work ("in the hot path"):

- Adds new facts as discovered
- Updates existing knowledge
- Can write arbitrary knowledge files

## Related Concepts

- [[agent-memory]]
- [[procedural-memory]]
- [[episodic-memory]]
- [[agent-skill]]
- [[langsmith-agent-builder]]

## Sources

- https://arxiv.org/abs/2309.02427 (COALA paper)
- [[how-we-built-agent-builder-memory-system]]