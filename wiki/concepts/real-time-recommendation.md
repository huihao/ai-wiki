---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Real-Time Recommendation

## Definition
Real-time recommendation is the practice of generating personalized item suggestions for users within milliseconds of a request, using fresh behavioral signals, contextual data, and pre-computed candidate sets. It is the production-grade evolution of batch recommendation systems, enabling responsive personalization in interactive applications like e-commerce, streaming, and social feeds.

## Key Aspects
- Requires sub-100ms end-to-end latency from request to response for interactive user experiences
- Uses a multi-stage pipeline: candidate generation (fast, broad), ranking (slower, precise), and re-ranking (diversity/fairness)
- Incorporates real-time signals: current session behavior, time of day, device type, location, and trending items
- Pre-computes candidate sets and feature vectors offline; scoring and re-ranking happen online
- Online-offline metric alignment is critical: offline NDCG may not predict online engagement
- A/B testing infrastructure is essential for measuring the impact of model changes on real user behavior
- Challenges include cold-start for new users/items, feature freshness, computational cost, and maintaining diversity
- Eugene Yan's writing extensively covers practical patterns in production recommendation systems, including real-time architectures

## Related Concepts
- [[production-recommendation-systems]]
- [[collaborative-filtering]]
- [[real-time-ai]]

## Sources
- [[writing-eugene-yan]]
