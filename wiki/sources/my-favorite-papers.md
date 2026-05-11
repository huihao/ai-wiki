---
created: 2026-04-29
updated: 2026-04-29
tags: [source, computer-science, papers, distributed-systems, curated-list]
sources: 1
url: "https://ordep.dev/posts/my-favorite-papers"
title: "My Favorite Papers"
---

# My Favorite Papers

## Summary

A curated list of influential computer science papers that Pedro Tavares (ordep.dev) has enjoyed reading and re-reading over the years. The collection spans distributed systems, data structures, databases, and concurrency, with brief descriptions of what each paper teaches.

## Key Takeaways

- Log-structured file systems write modifications sequentially to disk, speeding up both writes and crash recovery
- B-Trees remain one of the most successful disk-based index structures due to their balanced design
- LSM-trees provide low-cost indexing for high write rates, with well-studied I/O cost comparisons to B-trees
- Kafka's architecture demonstrates practical log processing with producers, brokers, and consumers
- Merkle trees enable one-way function-based verification and are foundational to blockchain and distributed systems
- Leslie Lamport's logical clocks paper establishes happens-before relationships and total ordering for distributed events
- CRDTs (Conflict-free Replicated Data Types) enable eventual consistency without coordination between replicas
- The BEAM/Erlang philosophy of "let it crash" enables fault-tolerant concurrent systems through message passing

## Entities Mentioned

- [[pedro-tavares]] -- author of ordep.dev, curator of this paper list
- [[leslie-lamport]] -- computer scientist, author of the logical clocks paper
- [[apache-kafka]] -- distributed event streaming platform

## Concepts Mentioned

- [[crdt]] -- Conflict-free Replicated Data Types for eventual consistency
- [[b-tree]] -- self-balancing tree data structure for databases
- [[lsm-tree]] -- Log-Structured Merge-tree for write-optimized storage
- [[logical-clocks]] -- Lamport clocks for ordering events in distributed systems
- [[merkle-tree]] -- hash tree for verifying data integrity
- [[fault-tolerance]] -- system design that continues operating despite component failures

## Raw Notes

- The list emphasizes practical distributed systems papers over theoretical work
- Related curated paper lists: @papers_we_love, @intensivedata, @therealdatabass
