---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Broadcast Join

## Definition
A broadcast join is a distributed database join strategy where the smaller of two tables is replicated (broadcast) to all nodes in a cluster, enabling each node to perform a local join without expensive network shuffles of the larger table. It is the optimal join strategy when one table is small enough to fit in each node's memory, avoiding the data movement cost that dominates other distributed join algorithms.

## Key Aspects
- **Replicate small, keep large**: The small table is sent to every node; the large table stays partitioned across nodes. Each node joins its local partition of the large table against the full small table
- **No shuffle required**: Unlike hash join or sort-merge join in distributed settings, broadcast join avoids the expensive all-to-all network shuffle of the large table
- **Memory requirement**: The broadcast table must fit in each node's memory (specifically, the buffer pool or hash table memory); this limits the technique to relatively small tables
- **Threshold**: Systems like Apache Spark and Presto automatically choose broadcast join when the small table is below a configurable size threshold (e.g., 10MB default in Spark)
- **Network cost**: O(S * N) where S is the small table size and N is the number of nodes; this is acceptable when S is small relative to the large table
- **Used by**: Apache Spark, Presto, Google BigQuery, Snowflake, and other distributed query engines

## Related Concepts
- [[join-algorithms]] -- the broader taxonomy of join strategies including broadcast
- [[buffer-pool]] -- the in-memory cache where the broadcast table resides on each node
- [[hash-join]] -- the local join algorithm typically used after broadcasting

## Sources
- [[join-algorithms]]
