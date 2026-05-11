---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 1
---

# Production Recommendation Systems

## Definition
Production recommendation systems are large-scale machine learning systems deployed in real-world applications that suggest relevant items (products, content, connections) to users based on behavioral data, item metadata, and contextual signals. They combine retrieval, ranking, and re-ranking stages to deliver personalized suggestions at scale with low latency.

## Key Aspects
- Cover diverse domains: e-commerce, streaming media, social networks, news feeds, and advertising
- Multi-stage pipeline: candidate generation (retrieval) followed by ranking and re-ranking
- Must handle cold-start problems for new users and items with limited interaction history
- Production systems balance multiple objectives: relevance, diversity, novelty, fairness, and business goals
- Real-time recommendation requires sub-100ms latency for interactive user experiences
- Key metrics include precision@k, recall@k, NDCG, MAP, and business-specific KPIs (conversion, engagement)
- Challenges include bias propagation, filter bubbles, scalability, A/B testing infrastructure, and online-offline metric alignment
- Eugene Yan's writing catalog extensively covers practical patterns in production recommendation systems

## Related Concepts
- [[collaborative-filtering]]
- [[preference-learning]]
- [[real-time-recommendation]]

## Sources
- [[writing-eugene-yan]]
