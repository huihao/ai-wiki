---
created: 2026-04-28
updated: 2026-04-28
tags: [source, llm, conditional-probability, educational]
sources: 1
---

# How LLMs Generate Text: Conditional Probability Explained

## Metadata

- **Author**: Akshay
- **Date**: 2023-09-06
- **URL**: https://en.rattibha.com/thread/1699399577709998507
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Ever wondered how LLMs generate text❓🤔 Let's take the magic out of it and break things down to firs..md`

## Summary

An accessible Twitter-thread-style explanation of how LLMs generate text through conditional probability. Uses a simple population analogy (tennis vs football preferences) to introduce P(A|B), then connects it to next-token prediction in language models.

## Key Takeaways

- LLMs predict the next word by computing conditional probability: P(next_word | previous_words).
- The model learns a high-dimensional probability distribution over sequences of words.
- The trained weights parameterize this distribution.
- Training (pre-training) is supervised: the model learns to maximize the probability of the actual next token.

## Entities Mentioned

- [[akshay|Akshay]] — author
- [[lightningai|Lightning AI]] — referenced learning platform

## Concepts Mentioned

- [[how-llms-generate-text-conditional-probability|Conditional probability]] — P(A|B), the probability of an event given another has occurred
- Next-token prediction — core task of autoregressive language models
- [[how-llms-generate-text-conditional-probability|Probability distribution]] — high-dimensional distribution over word sequences
- [[pytorch|Autoregressive models]] — models that generate one token at a time

## Raw Notes

See raw file for the visual thread with illustrations.

## Questions / Follow-ups

- How does sampling temperature affect the conditional probability distribution at inference time?
