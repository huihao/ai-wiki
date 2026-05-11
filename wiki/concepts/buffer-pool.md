---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Buffer Pool

## Definition
A buffer pool is an in-memory cache maintained by a database system that stores frequently accessed disk pages (data blocks) to reduce the number of physical disk I/O operations. By keeping hot pages in memory, the buffer pool transforms disk-bound operations (like index lookups and join probes) into memory-speed operations, which is critical for join algorithm performance.

## Key Aspects
- **Page caching**: Data is read from disk in fixed-size pages (typically 4KB-16KB); the buffer pool caches these pages in shared memory for fast repeated access
- **Eviction policies**: When the buffer pool is full, pages are evicted using policies like LRU (Least Recently Used), clock, or adaptive replacement to make room for newly needed pages
- **Hit ratio**: The percentage of page accesses served from memory (buffer pool hit) vs. requiring disk I/O; a high hit ratio (95%+) is essential for good performance
- **Join performance impact**: Hash join's build phase requires loading the smaller relation into memory; if the hash table exceeds buffer pool capacity, Grace Hash Join must partition to disk, adding I/O overhead
- **PostgreSQL example**: PostgreSQL's shared_buffers configuration controls the buffer pool size; hash join "with batches" in EXPLAIN ANALYZE output indicates disk spillage due to insufficient buffer pool
- **Index efficiency**: B-Tree index lookups benefit enormously from buffer pools -- the upper tree levels are almost always cached, so index scans typically require only 1-2 disk reads for the leaf level

## Related Concepts
- [[b-tree-index]] -- index pages cached in the buffer pool
- [[hash-join]] -- hash tables that must fit within buffer pool memory
- [[grace-hash-join]] -- the fallback when buffer pool is insufficient for hash join

## Sources
- [[join-algorithms]]
