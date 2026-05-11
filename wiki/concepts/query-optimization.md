---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Query Optimization

## Definition
Query optimization is the process of improving database query performance by selecting efficient execution plans, creating appropriate indexes, and rewriting queries to reduce computational cost. In ORM-based applications, query optimization involves understanding how high-level ORM abstractions translate to SQL and ensuring the generated queries perform well at scale.

## Key Aspects
- ORM-generated queries can be inefficient: N+1 query problems occur when related objects trigger separate queries instead of JOINs
- Eager loading (prefetching related objects) reduces round trips to the database
- Selecting only needed columns (deferred loading) reduces data transfer and memory usage
- Proper indexing on frequently queried columns dramatically improves lookup speed
- Query plans can be analyzed using EXPLAIN/ANALYZE to identify bottlenecks (full table scans, missing indexes)
- Batch operations (bulk inserts, updates) reduce per-record overhead
- Caching frequently accessed query results at the application or database level reduces load
- Connection pooling and prepared statement reuse improve throughput under concurrent load

## Related Concepts
- [[orm]]
- [[database-abstraction]]
- [[query-builder]]

## Sources
- [[orm]]
