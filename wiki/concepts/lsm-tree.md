---
created: 2026-04-29
updated: 2026-04-29
tags: [data-structures, databases, storage]
sources: 1
---
# LSM-Tree

## Definition

A Log-Structured Merge-Tree (LSM-tree) is a write-optimized data structure used in storage systems where writes are much more frequent than reads. It buffers writes in memory and periodically merges them with on-disk sorted files, providing high write throughput at the cost of read amplification.

## Key Concepts

- Writes go to an in-memory buffer (memtable) first, providing fast write performance
- When the memtable fills, it is flushed to disk as a sorted immutable file (SSTable)
- Periodic compaction merges SSTables to reduce read amplification and reclaim space
- Two main compaction strategies: leveled (RocksDB) and size-tiered (Cassandra)
- Read operations must check multiple levels (memory + multiple SSTable files), leading to read amplification
- Write amplification occurs because data is rewritten during compaction
- LSM-trees trade read performance for write performance, making them ideal for write-heavy workloads
- Used in RocksDB, LevelDB, Cassandra, HBase, and InfluxDB

## Related Concepts

- [[b-tree]]
- [[merkle-tree]]
- [[fault-tolerance]]

## Sources

- [[my-favorite-papers]]
