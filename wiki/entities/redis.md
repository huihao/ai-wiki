---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, database, caching, infrastructure]
sources: 3
---

# Redis

## Summary

Redis (Remote Dictionary Server) is an open-source, in-memory data structure store that can be used as a database, cache, message broker, and streaming engine. Known for its extreme speed due to in-memory storage, Redis supports data structures such as strings, hashes, lists, sets, sorted sets, bitmaps, hyperloglogs, and geospatial indexes. It is widely used for caching, session management, real-time analytics, and as a lightweight message broker for task queue backends.

## Key Attributes

- **Type**: In-memory data structure store
- **Created by**: Salvatore Sanfilippo (antirez), first released 2009
- **Notable for**: Sub-millisecond latency, rich data structures, simplicity, and broad adoption as a caching layer
- **License**: Redis Source Available License (RSAL) / SSPL (changed from BSD in 2024)
- **Other facts**: Supports persistence via RDB snapshots and AOF (append-only file); Redis Cluster provides horizontal sharding; commonly used with Python via redis-py; alternatives include Memcached, Dragonfly, and KeyDB

## Related Entities

- [[celery]] — Python task queue that supports Redis as a message broker
- [[rabbitmq]] — full-featured message broker often compared with or used alongside Redis
- [[amazon-sqs]] — cloud message queue service
- [[elasticsearch]] — complementary search/data store sometimes used alongside Redis

## Related Concepts

- [[message-brokers]] — Redis serves as a lightweight message broker
- [[task-queues]] — Redis is a popular Celery broker backend (via redis-py)
- [[caching]] — one of Redis's primary use cases
- [[streaming-ai]] — Redis Streams enables event-driven architectures
- [[asynchronous-processing]] — Redis enables async patterns as a broker

## Sources

- [[introduction-to-celery]] — Redis used as a Celery message broker
- [[message-brokers]] — Redis covered as a message broker option
- [[task-queues]] — Redis as infrastructure for task queue systems

## Contradictions / Open Questions

- The license change from BSD to RSAL/SSPL in 2024 sparked community debate and led to forks like Valkey.
