---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 3
---

# recommendation-systems

## Definition

Recommendation systems are algorithms and architectures that predict and suggest items (products, content, connections) to users based on their preferences, behavior, and the patterns of similar users. They combine techniques from information retrieval, machine learning, and collaborative filtering to match users with relevant content at scale. Eugene Yan's extensive work on the topic documents both the technical foundations (matrix factorization, real-time systems) and practical production challenges (bias, diversity, metrics) of deploying recommendation systems at companies like Amazon.

## Key Aspects

- **Collaborative Filtering**: Recommends items based on patterns of behavior across many users -- "users similar to you also liked..."
- **Content-Based Filtering**: Recommends items based on feature similarity to what a user has previously engaged with
- **Matrix Factorization**: Decomposes the user-item interaction matrix into latent factor representations, enabling efficient similarity computation even with sparse data
- **Real-Time Systems**: Production recommendation engines must respond in milliseconds, requiring efficient serving architectures and caching strategies
- **Bias and Diversity**: Systems tend to reinforce popularity bias (popular items get recommended more); diversity metrics and re-ranking steps are necessary to surface novel or minority items
- **Evaluation Metrics**: Precision@k, recall@k, NDCG, MAP, and diversity metrics measure different aspects of recommendation quality
- **Production ML**: Includes challenges specific to production systems -- monitoring, A/B testing, cold-start problems, and iterative improvement
- **Teardowns**: Analyzing systems like Netflix's and Stitch Fix's recommendations reveals practical engineering patterns used at scale

## Related Concepts

- [[matrix-factorization]] -- Latent factor decomposition technique for collaborative filtering
- [[collaborative-filtering]] -- User-behavior-based recommendation approach
- [[production-ml]] -- Challenges of deploying ML systems in real environments
- [[diversity-metrics]] -- Measuring and improving recommendation diversity
- [[eval-driven-development]] -- Systematic evaluation of recommendation quality

## Sources

- [[eugene-yan]] -- ML engineer and recommendation systems expert
- [[matrix-factorization]] -- Core mathematical technique for recommendations
- [[writing-eugene-yan]] -- Complete catalog of recommendation systems writing and teardowns
- [[dive-into-deep-learning]] -- interactive textbook covering recommender systems with neural collaborative filtering
