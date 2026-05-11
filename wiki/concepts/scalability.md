---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Scalability

## Definition

Scalability is the ability of a system to handle increased load by adding resources, maintaining or improving performance as demand grows. It is a fundamental system design concern encompassing horizontal scaling (adding more machines), vertical scaling (adding more power to existing machines), and architectural patterns that enable systems to grow gracefully.

## Key Aspects

- Horizontal scaling (scale out): adding more machines to distribute load, generally preferred for web applications
- Vertical scaling (scale up): adding more CPU/RAM to a single machine, simpler but has physical limits
- Load balancing distributes incoming requests across multiple servers to prevent bottlenecks
- Database scalability techniques include sharding (horizontal partitioning), replication (read replicas), and caching layers
- Stateless application design is a prerequisite for easy horizontal scaling
- Microservices architecture enables independent scaling of different system components
- Caching at multiple levels (CDN, application, database) dramatically reduces load on backend systems
- Asynchronous processing and message queues decouple components and smooth traffic spikes
- Auto-scaling policies dynamically adjust capacity based on demand metrics
- Scalability must be designed in from the start; retrofitting is significantly more expensive

## Related Concepts

- [[load-balancing]] -- Distribution of requests across multiple servers
- [[microservices]] -- Architectural pattern enabling independent component scaling
- [[caching]] -- Multi-level strategy for reducing backend load
- [[database-sharding]] -- Horizontal partitioning for database scalability

## Sources

- [[system-design-interview]]
